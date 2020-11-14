module meter 
(
	input wire clk,rst,
	input wire x,
	output reg [31:0] x_count, r_count, xh_count, xl_count,
	output wire valid
);

reg [1:0] x_delay,y_delay;

always@(posedge clk) begin
	x_delay<= {x_delay[0],x};
end

wire x_rise = x_delay == 2'b01;
wire x_fall = x_delay == 2'b10;

wire gate,g_fall;
assign valid= g_fall;
reg [31:0] g_cnt;
always@(posedge clk) begin
	if ((g_cnt== 32'd50000000 && g_fall) || rst) g_cnt <= 32'b0;
	else if (g_cnt <50000000) g_cnt <= g_cnt +1'b1;
end 
assign gate = (g_cnt == 50000000) ? 0:1;

reg g_sync, g_sync_last;

always@ (posedge clk) begin
	if (x_rise) g_sync<= gate;
end

always@ (posedge clk) begin
	g_sync_last<= g_sync;
end

wire g_rise = ~g_sync_last & g_sync;
assign g_fall = ~g_sync & g_sync_last;

reg [25:0] x_cnt, r_cnt;

always@ (posedge clk) begin
	if (g_rise || rst) x_cnt <= 26'b0;
	else if (g_fall) x_count <= x_cnt;
	else if (x_rise) x_cnt <= x_cnt + 1'b1;
end

always@ (posedge clk) begin
	if (g_rise || rst) r_cnt <= 26'b0;
	else if (g_fall) r_count <= r_cnt;
	else r_cnt <= r_cnt + 1'b1;
end

reg [31:0] xh_cnt, xl_cnt;

always@ (posedge clk) begin
	if (g_rise || rst) xh_cnt<=26'b0;
	else if (g_fall) xh_count <= xh_cnt;
	else if (x) xh_cnt <= xh_cnt + 1'b1;
end

always@ (posedge clk) begin
	if (g_rise || rst) xl_cnt <= 26'b0;
	else if (g_fall) xl_count <= xl_cnt;
	else if (~x) xl_cnt <= xl_cnt + 1'b1;
end



endmodule 