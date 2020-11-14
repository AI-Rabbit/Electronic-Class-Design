//Copyright 1986-2015 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2015.4 (win64) Build 1412921 Wed Nov 18 09:43:45 MST 2015
//Date        : Fri Dec 16 11:03:43 2016
//Host        : Administrator running 64-bit Service Pack 1  (build 7601)
//Command     : generate_target system_wrapper.bd
//Design      : system_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

//module system_wrapper
//   (DDR_addr,
//    DDR_ba,
//    DDR_cas_n,
//    DDR_ck_n,
//    DDR_ck_p,
//    DDR_cke,
//    DDR_cs_n,
//    DDR_dm,
//    DDR_dq,
//    DDR_dqs_n,
//    DDR_dqs_p,
//    DDR_odt,
//    DDR_ras_n,
//    DDR_reset_n,
//    DDR_we_n,
//    FIXED_IO_ddr_vrn,
//    FIXED_IO_ddr_vrp,
//    FIXED_IO_mio,
//    FIXED_IO_ps_clk,
//    FIXED_IO_ps_porb,
//    FIXED_IO_ps_srstb,
    
//    dch1_in_0,
//    dch2_in_0,
//    button_i,
//    lcd_int_i,
//    lcd_clk_o,
//    lcd_r_o,
//	lcd_g_o,
//	lcd_b_o,
//    lcd_de_o,
//    lcd_hs_o,
//	lcd_vs_o,
//    lcd_iic_scl_io,
//    lcd_iic_sda_io,
//    lcd_pwm_o,
//	lcd_wake_n_o,
//	lcd_bl_en_o,
//	led_o,
//    sclka_0,
//    sclkb_0,
//    switch_ch1_0,
//    switch_ch2_0);
//  inout [14:0]DDR_addr;
//  inout [2:0]DDR_ba;
//  inout DDR_cas_n;
//  inout DDR_ck_n;
//  inout DDR_ck_p;
//  inout DDR_cke;
//  inout DDR_cs_n;
//  inout [3:0]DDR_dm;
//  inout [31:0]DDR_dq;
//  inout [3:0]DDR_dqs_n;
//  inout [3:0]DDR_dqs_p;
//  inout DDR_odt;
//  inout DDR_ras_n;
//  inout DDR_reset_n;
//  inout DDR_we_n;
//  inout FIXED_IO_ddr_vrn;
//  inout FIXED_IO_ddr_vrp;
//  inout [53:0]FIXED_IO_mio;
//  inout FIXED_IO_ps_clk;
//  inout FIXED_IO_ps_porb;
//  inout FIXED_IO_ps_srstb;
  
//  input [7:0]dch1_in_0;
//  input [7:0]dch2_in_0;
//  input [1:0] button_i;
//  input lcd_int_i;
//  output lcd_clk_o;
//  output [7:0]lcd_r_o;
//  output [7:0]lcd_g_o;
//  output [7:0]lcd_b_o;
//  output lcd_de_o;
//  output lcd_hs_o;
//  output lcd_vs_o;
//  inout lcd_iic_scl_io;
//  inout lcd_iic_sda_io;
//  output [0:0]lcd_pwm_o;
//  output lcd_wake_n_o;
//  output lcd_bl_en_o;
//  output [4:0]led_o;
//  output sclka_0;
//  output sclkb_0;
//  output [1:0]switch_ch1_0;
//  output [1:0]switch_ch2_0;

//  wire [14:0]DDR_addr;
//  wire [2:0]DDR_ba;
//  wire DDR_cas_n;
//  wire DDR_ck_n;
//  wire DDR_ck_p;
//  wire DDR_cke;
//  wire DDR_cs_n;
//  wire [3:0]DDR_dm;
//  wire [31:0]DDR_dq;
//  wire [3:0]DDR_dqs_n;
//  wire [3:0]DDR_dqs_p;
//  wire DDR_odt;
//  wire DDR_ras_n;
//  wire DDR_reset_n;
//  wire DDR_we_n;
//  wire FIXED_IO_ddr_vrn;
//  wire FIXED_IO_ddr_vrp;
//  wire [53:0]FIXED_IO_mio;
//  wire FIXED_IO_ps_clk;
//  wire FIXED_IO_ps_porb;
//  wire FIXED_IO_ps_srstb;
//  wire [7:0]dch1_in_0;
//  wire [7:0]dch2_in_0;
//  wire [8:0]gpio_rtl_tri_i;
//  wire [8:0]gpio_rtl_tri_o;
//  wire [8:0]gpio_rtl_tri_t;
//  wire [1:0] button_i;
//  wire lcd_int_i; 
//  wire lcd_clk_o;
//  wire lcd_clk;
//  wire [7:0]lcd_r_o;
//  wire [7:0]lcd_g_o;
//  wire [7:0]lcd_b_o;
//  wire [23:0] lcd_data;
//  wire lcd_de_o;
//  wire lcd_hs_o;
//  wire lcd_vs_o;
//  wire [0:0]lcd_pwm_o;
//  wire lcd_wake_n_o;
//  wire lcd_bl_en_o;
//  wire [4:0]led_o;  
//  wire lcd_iic_scl_i;
//  wire lcd_iic_scl_io;
//  wire lcd_iic_scl_o;
//  wire lcd_iic_scl_t;
//  wire lcd_iic_sda_i;
//  wire lcd_iic_sda_io;
//  wire lcd_iic_sda_o;
//  wire lcd_iic_sda_t;
//  wire sclka_0;
//  wire sclkb_0;
//  wire [1:0]switch_ch1_0;
//  wire [1:0]switch_ch2_0;
  
//  assign gpio_rtl_tri_i[0] = lcd_int_i;
//  assign gpio_rtl_tri_i[1] = button_i[0];
//  assign gpio_rtl_tri_i[2] = button_i[1]; 
//  assign gpio_rtl_tri_i[7:3] = 5'd0; 
  
//  assign led_o = gpio_rtl_tri_o[7:3];
  
//  assign lcd_r_o = lcd_data[23:16];
//  assign lcd_g_o = lcd_data[15:8];
//  assign lcd_b_o = lcd_data[7:0];
//  assign lcd_wake_n_o = 1'b1;
//  assign lcd_bl_en_o = gpio_rtl_tri_o[8];
  
  
//  ODDR #(
//      .DDR_CLK_EDGE("SAME_EDGE"), // "OPPOSITE_EDGE" or "SAME_EDGE" 
//      .INIT(1'b0),    // Initial value of Q: 1'b0 or 1'b1
//      .SRTYPE("SYNC") // Set/Reset type: "SYNC" or "ASYNC" 
//   ) lcd_clk_oddr (
//      .Q(lcd_clk_o),   // 1-bit DDR output
//      .C(lcd_clk),   // 1-bit clock input
//      .CE(1'b1), // 1-bit clock enable input
//      .D1(1'b0), // 1-bit data input (positive edge)
//      .D2(1'b1), // 1-bit data input (negative edge)
//      .R(1'b0),   // 1-bit reset
//      .S(1'b0)    // 1-bit set
//   );  

//  IOBUF lcd_iic_scl_iobuf
//       (.I(lcd_iic_scl_o),
//        .IO(lcd_iic_scl_io),
//        .O(lcd_iic_scl_i),
//        .T(lcd_iic_scl_t));
//  IOBUF lcd_iic_sda_iobuf
//       (.I(lcd_iic_sda_o),
//        .IO(lcd_iic_sda_io),
//        .O(lcd_iic_sda_i),
//        .T(lcd_iic_sda_t));
        
//  system system_i
//       (.DDR_addr(DDR_addr),
//        .DDR_ba(DDR_ba),
//        .DDR_cas_n(DDR_cas_n),
//        .DDR_ck_n(DDR_ck_n),
//        .DDR_ck_p(DDR_ck_p),
//        .DDR_cke(DDR_cke),
//        .DDR_cs_n(DDR_cs_n),
//        .DDR_dm(DDR_dm),
//        .DDR_dq(DDR_dq),
//        .DDR_dqs_n(DDR_dqs_n),
//        .DDR_dqs_p(DDR_dqs_p),
//        .DDR_odt(DDR_odt),
//        .DDR_ras_n(DDR_ras_n),
//        .DDR_reset_n(DDR_reset_n),
//        .DDR_we_n(DDR_we_n),
//        .FIXED_IO_ddr_vrn(FIXED_IO_ddr_vrn),
//        .FIXED_IO_ddr_vrp(FIXED_IO_ddr_vrp),
//        .FIXED_IO_mio(FIXED_IO_mio),
//        .FIXED_IO_ps_clk(FIXED_IO_ps_clk),
//        .FIXED_IO_ps_porb(FIXED_IO_ps_porb),
//        .FIXED_IO_ps_srstb(FIXED_IO_ps_srstb),
//        .dch1_in_0(dch1_in_0),
//        .dch2_in_0(dch2_in_0),
//         .gpio_rtl_tri_i(gpio_rtl_tri_i),
//        .gpio_rtl_tri_o(gpio_rtl_tri_o),
//        .gpio_rtl_tri_t(gpio_rtl_tri_t),
//        .lcd_clk(lcd_clk),
//        .lcd_data(lcd_data),
//        .lcd_de(lcd_de_o),
//        .lcd_hs(lcd_hs_o),
//		.lcd_vs(lcd_vs_o),
//		.lcd_pwm(lcd_pwm_o),
//		.lcd_iic_scl_i(lcd_iic_scl_i),
//        .lcd_iic_scl_o(lcd_iic_scl_o),
//        .lcd_iic_scl_t(lcd_iic_scl_t),
//        .lcd_iic_sda_i(lcd_iic_sda_i),
//        .lcd_iic_sda_o(lcd_iic_sda_o),
//        .lcd_iic_sda_t(lcd_iic_sda_t),
//        .sclka_0(sclka_0),
//        .sclkb_0(sclkb_0),
//        .switch_ch1_0(switch_ch1_0),
//        .switch_ch2_0(switch_ch2_0));
//endmodule

module system_wrapper
   (DDR_addr,
    DDR_ba,
    DDR_cas_n,
    DDR_ck_n,
    DDR_ck_p,
    DDR_cke,
    DDR_cs_n,
    DDR_dm,
    DDR_dq,
    DDR_dqs_n,
    DDR_dqs_p,
    DDR_odt,
    DDR_ras_n,
    DDR_reset_n,
    DDR_we_n,
    FIXED_IO_ddr_vrn,
    FIXED_IO_ddr_vrp,
    FIXED_IO_mio,
    FIXED_IO_ps_clk,
    FIXED_IO_ps_porb,
    FIXED_IO_ps_srstb,
    
    dch1_in_0,
    dch2_in_0,
    sclka_0,
    sclkb_0,
    switch_ch1_0,
    switch_ch2_0,
	
    button_i,
    lcd_int_i,
    lcd_clk_o,
    lcd_r_o,
	lcd_g_o,
	lcd_b_o,
    lcd_de_o,
    lcd_hs_o,
	lcd_vs_o,
    lcd_iic_scl_io,
    lcd_iic_sda_io,
    lcd_pwm_o,
	lcd_wake_n_o,
	lcd_bl_en_o,
	led_o
	);
  inout [14:0]DDR_addr;
  inout [2:0]DDR_ba;
  inout DDR_cas_n;
  inout DDR_ck_n;
  inout DDR_ck_p;
  inout DDR_cke;
  inout DDR_cs_n;
  inout [3:0]DDR_dm;
  inout [31:0]DDR_dq;
  inout [3:0]DDR_dqs_n;
  inout [3:0]DDR_dqs_p;
  inout DDR_odt;
  inout DDR_ras_n;
  inout DDR_reset_n;
  inout DDR_we_n;
  inout FIXED_IO_ddr_vrn;
  inout FIXED_IO_ddr_vrp;
  inout [53:0]FIXED_IO_mio;
  inout FIXED_IO_ps_clk;
  inout FIXED_IO_ps_porb;
  inout FIXED_IO_ps_srstb;

  input [7:0]dch1_in_0;
  input [7:0]dch2_in_0;  
  output sclka_0;
  output sclkb_0;
  output [1:0]switch_ch1_0;
  output [1:0]switch_ch2_0;  
  
  input [1:0] button_i;
  input lcd_int_i;
  output lcd_clk_o;
  output [7:0]lcd_r_o;
  output [7:0]lcd_g_o;
  output [7:0]lcd_b_o;
  output lcd_de_o;
  output lcd_hs_o;
  output lcd_vs_o;
  inout lcd_iic_scl_io;
  inout lcd_iic_sda_io;
  output [0:0]lcd_pwm_o;
  output lcd_wake_n_o;
  output lcd_bl_en_o;
  output [4:0]led_o;
  
  wire [14:0]DDR_addr;
  wire [2:0]DDR_ba;
  wire DDR_cas_n;
  wire DDR_ck_n;
  wire DDR_ck_p;
  wire DDR_cke;
  wire DDR_cs_n;
  wire [3:0]DDR_dm;
  wire [31:0]DDR_dq;
  wire [3:0]DDR_dqs_n;
  wire [3:0]DDR_dqs_p;
  wire DDR_odt;
  wire DDR_ras_n;
  wire DDR_reset_n;
  wire DDR_we_n;
  wire FIXED_IO_ddr_vrn;
  wire FIXED_IO_ddr_vrp;
  wire [53:0]FIXED_IO_mio;
  wire FIXED_IO_ps_clk;
  wire FIXED_IO_ps_porb;
  wire FIXED_IO_ps_srstb;
  wire [8:0]gpio_rtl_tri_i;
  wire [8:0]gpio_rtl_tri_o;
  wire [8:0]gpio_rtl_tri_t;
  
  wire [7:0]dch1_in_0;
  wire [7:0]dch2_in_0;
  wire sclka_0;
  wire sclkb_0;
  wire [1:0]switch_ch1_0;
  wire [1:0]switch_ch2_0;
  
  wire [1:0] button_i;
  wire lcd_int_i; 
  wire lcd_clk_o;
  wire lcd_clk;
  wire [7:0]lcd_r_o;
  wire [7:0]lcd_g_o;
  wire [7:0]lcd_b_o;
  wire [23:0] lcd_data;
  wire lcd_de_o;
  wire lcd_hs_o;
  wire lcd_vs_o;
  wire [0:0]lcd_pwm_o;
  wire lcd_wake_n_o;
  wire lcd_bl_en_o;
  wire [4:0]led_o;  
  wire lcd_iic_scl_i;
  wire lcd_iic_scl_io;
  wire lcd_iic_scl_o;
  wire lcd_iic_scl_t;
  wire lcd_iic_sda_i;
  wire lcd_iic_sda_io;
  wire lcd_iic_sda_o;
  wire lcd_iic_sda_t;

  assign gpio_rtl_tri_i[0] = lcd_int_i;
  assign gpio_rtl_tri_i[1] = button_i[0];
  assign gpio_rtl_tri_i[2] = button_i[1]; 
  assign gpio_rtl_tri_i[7:3] = 5'd0; 
  
  assign led_o = gpio_rtl_tri_o[7:3];
  
  assign lcd_r_o = lcd_data[23:16];
  assign lcd_g_o = lcd_data[15:8];
  assign lcd_b_o = lcd_data[7:0];
  assign lcd_wake_n_o = 1'b1;
  assign lcd_bl_en_o = gpio_rtl_tri_o[8];
  
  
  ODDR #(
      .DDR_CLK_EDGE("SAME_EDGE"), // "OPPOSITE_EDGE" or "SAME_EDGE" 
      .INIT(1'b0),    // Initial value of Q: 1'b0 or 1'b1
      .SRTYPE("SYNC") // Set/Reset type: "SYNC" or "ASYNC" 
   ) lcd_clk_oddr (
      .Q(lcd_clk_o),   // 1-bit DDR output
      .C(lcd_clk),   // 1-bit clock input
      .CE(1'b1), // 1-bit clock enable input
      .D1(1'b0), // 1-bit data input (positive edge)
      .D2(1'b1), // 1-bit data input (negative edge)
      .R(1'b0),   // 1-bit reset
      .S(1'b0)    // 1-bit set
   );  

  
  IOBUF lcd_iic_scl_iobuf
       (.I(lcd_iic_scl_o),
        .IO(lcd_iic_scl_io),
        .O(lcd_iic_scl_i),
        .T(lcd_iic_scl_t));
  IOBUF lcd_iic_sda_iobuf
       (.I(lcd_iic_sda_o),
        .IO(lcd_iic_sda_io),
        .O(lcd_iic_sda_i),
        .T(lcd_iic_sda_t));

  system system_i
       (.DDR_addr(DDR_addr),
        .DDR_ba(DDR_ba),
        .DDR_cas_n(DDR_cas_n),
        .DDR_ck_n(DDR_ck_n),
        .DDR_ck_p(DDR_ck_p),
        .DDR_cke(DDR_cke),
        .DDR_cs_n(DDR_cs_n),
        .DDR_dm(DDR_dm),
        .DDR_dq(DDR_dq),
        .DDR_dqs_n(DDR_dqs_n),
        .DDR_dqs_p(DDR_dqs_p),
        .DDR_odt(DDR_odt),
        .DDR_ras_n(DDR_ras_n),
        .DDR_reset_n(DDR_reset_n),
        .DDR_we_n(DDR_we_n),
        .FIXED_IO_ddr_vrn(FIXED_IO_ddr_vrn),
        .FIXED_IO_ddr_vrp(FIXED_IO_ddr_vrp),
        .FIXED_IO_mio(FIXED_IO_mio),
        .FIXED_IO_ps_clk(FIXED_IO_ps_clk),
        .FIXED_IO_ps_porb(FIXED_IO_ps_porb),
        .FIXED_IO_ps_srstb(FIXED_IO_ps_srstb),
        .gpio_rtl_tri_i(gpio_rtl_tri_i),
        .gpio_rtl_tri_o(gpio_rtl_tri_o),
        .gpio_rtl_tri_t(gpio_rtl_tri_t),
        .lcd_clk(lcd_clk),
        .lcd_data(lcd_data),
        .lcd_de(lcd_de_o),
        .lcd_hs(lcd_hs_o),
		.lcd_vs(lcd_vs_o),
		.lcd_pwm(lcd_pwm_o),
		.lcd_iic_scl_i(lcd_iic_scl_i),
        .lcd_iic_scl_o(lcd_iic_scl_o),
        .lcd_iic_scl_t(lcd_iic_scl_t),
        .lcd_iic_sda_i(lcd_iic_sda_i),
        .lcd_iic_sda_o(lcd_iic_sda_o),
        .lcd_iic_sda_t(lcd_iic_sda_t),
        .dch1_in_0(dch1_in_0),
        .dch2_in_0(dch2_in_0),
        .sclka_0(sclka_0),
        .sclkb_0(sclkb_0),
        .switch_ch1_0(switch_ch1_0),
        .switch_ch2_0(switch_ch2_0)
        );
endmodule
