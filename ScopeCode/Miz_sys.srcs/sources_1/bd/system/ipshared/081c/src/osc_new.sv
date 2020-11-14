`default_nettype none
module osc
(
	input wire clk, rst, 
	//adc interface
	output wire sclka, sclkb,
	input wire signed  [7:0] dch1_1, dch2_1, dch1_2, dch2_2, // ad9288, dual channel, 8 bit, parallel, offset binary
	//DMA axis interface
	 output wire mdma_axis_tvalid, mdma_axis_tlast,
     output wire [31:0] mdma_axis_tdata,
     input wire mdma_axis_tready,
	//fifo interface
	 output wire mfifo_axis_tvalid, mfifo_axis_tlast,
     output wire [31:0] mfifo_axis_tdata,
     input wire mfifo_axis_tready,
	 input wire sfifo_axis_tvalid, sfifo_axis_tlast,
     input wire [31:0] sfifo_axis_tdata,
     output wire sfifo_axis_tready,
	 input wire [9:0] fifo_cnt,
	//osc ctrl
	input wire start,
	input wire [1:0] trig_mode,      // [0]:0-trig channel 1, 1-trig channel 2; [1]:0-posedge trig, 1-negedge trig; 
	input wire [3:0] hori_mode, //horizon mode, 0- 0.1us/div, 1- 0.2us/div, 2- 0.5us/div, 3- 1us/div, 4- 2.5us/div, 5- 5us/div, 6- 10us/div, 7- 25us/div, 8- 50us/div, 
	input wire signed [7:0] level, // trig level, signed
	input wire signed [9:0] hpos, // horizon trig position,  range -49~50 , default 0(trig position in middle)
	 output wire busy
);
    
	//start edge to enable
	logic start_last = 1'b0;
	always_ff@(posedge clk) start_last <= start;
	wire start_en = ~start_last & start  ;
	
	//sample rate enable generator
		logic [8:0] sr_cnt = '0 , sr_cnt_n = '0;//sample rate counter
		wire en;//sample rate ctrl enable
		always_ff@(posedge clk) begin
			if (start_en) begin
				case (hori_mode)
					0: sr_cnt_n <= 9'd0;
					1: sr_cnt_n <= 9'd1;
					2: sr_cnt_n <= 9'd4;
					3: sr_cnt_n <= 9'd9;
					4: sr_cnt_n <= 9'd24;
					5: sr_cnt_n <= 9'd49;
					6: sr_cnt_n <= 9'd99;
					7: sr_cnt_n <= 9'd249;
					8: sr_cnt_n <= 9'd499;
				endcase
			end
		end
		always_ff@(posedge clk) begin
			if (rst) sr_cnt <= '0;
			else if (sr_cnt == sr_cnt_n) sr_cnt <= '0;
			else sr_cnt <= sr_cnt + 1'b1;
		end
		assign en = sr_cnt == sr_cnt_n;

	//trigger
	    assign sclka = ~clk;
        assign sclkb = sclka;
		logic trig;
		logic trig_sync;
		always_comb begin
			case (trig_mode)
				2'b00: trig = (dch1_2 < level && dch1_1 >= level);
				2'b10: trig = (dch1_2 > level && dch1_1 <= level);
				2'b01: trig = (dch2_2 < level && dch2_1 >= level);
				2'b11: trig = (dch2_2 > level && dch2_1 <= level);
			endcase
		end
		always_ff@(posedge clk) begin
			if (rst) trig_sync <= 1'b0;
			else if (trig) trig_sync <= 1'b1;
			else if (en) trig_sync <= 1'b0;
			else trig_sync <= trig_sync;
		end
	
	//osc fsm
		 logic [3:0] state, state_n;
		localparam S_IDLE = 4'd0;
		localparam S_PRE  = 4'd1;
		localparam S_WAIT = 4'd2;
		localparam S_TRIG = 4'd3;
		localparam S_TOUT = 4'd4;
		localparam DLEN = 7'd100;
		localparam TO = 26'd10_000_000; //0.5s timeout
		logic signed [6:0] hpos_reg;
		 logic [6:0] data_cnt;	
		always_ff@(posedge clk)	if(start_en) hpos_reg <= hpos + 7'd49;
		logic [25:0] to_cnt;
		always_ff@(posedge clk) begin
			if (rst) to_cnt <= '0;
			else if (start_en) to_cnt <= '0;
			else to_cnt <= to_cnt + 1'b1;
		end
		// state driven
		always_ff@(posedge clk) begin
			if(rst) begin
		        state <= S_IDLE;
			end
			else state <= state_n;
		end
		// state transfer
		always_comb begin
		    state_n = state;
			case (state) 
				S_IDLE : 	if (start_en) state_n = S_PRE;
				S_PRE : 	if (en && data_cnt == hpos_reg) state_n = S_WAIT;
				S_WAIT : 	if (trig) state_n = S_TRIG;
								else if (to_cnt >= TO) state_n = S_TOUT;
				S_TRIG : 	if (data_cnt == DLEN && en ) state_n = S_IDLE;
				S_TOUT :	if (data_cnt == DLEN && en ) state_n = S_IDLE;
				default : 	state_n = state;
			endcase
		end
		// status/event output
		logic trig_flag;
		always@(posedge clk) begin
		  if (rst | start_en) trig_flag <= 1'b0;
		  else if (state == S_WAIT && state_n == S_TRIG) trig_flag <= 1'b1;
		  else if (en) trig_flag <= 1'b0;
		end
		wire [31:0] osc_d = {14'd0, (state == S_TOUT), trig_flag, dch2_2, dch1_2};
		wire osc_write, osc_last, osc_force_read;
		assign busy = (state == S_PRE || state == S_WAIT || state == S_TRIG || state == S_TOUT);
		assign osc_write = busy & en;
		assign osc_last = DLEN == data_cnt;
		assign osc_force_read = ( fifo_cnt > DLEN ) ;
		// date_cnt driver
		always_ff@(posedge clk) begin
			if (rst | start_en) data_cnt <= '0;
			else if (en) 
				if ((state == S_PRE) || (state == S_TRIG) || (state == S_TOUT)) data_cnt <= data_cnt + 1'b1;
		end
		
	//fifo & dma axi stream interface
		wire read_mode = busy;//fifo read ctrl, 0-dma read, 1-osc force read;
		assign mdma_axis_tdata = sfifo_axis_tdata;
		assign mdma_axis_tlast = sfifo_axis_tlast;
		assign mdma_axis_tvalid = ~read_mode & sfifo_axis_tvalid;
		assign sfifo_axis_tready = osc_force_read==1 || (read_mode==0 && mdma_axis_tready == 1);
		assign mfifo_axis_tdata = osc_d;
		assign mfifo_axis_tvalid = osc_write;
		assign mfifo_axis_tlast = osc_last;
	
endmodule