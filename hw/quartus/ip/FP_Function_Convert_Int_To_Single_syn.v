// megafunction wizard: %ALTFP_CONVERT%
// GENERATION: STANDARD
// VERSION: WM1.0
// MODULE: ALTFP_CONVERT 

// ============================================================
// File Name: FP_Function_Convert_Int_To_Single.v
// Megafunction Name(s):
// 			ALTFP_CONVERT
//
// Simulation Library Files(s):
// 			lpm
// ============================================================
// ************************************************************
// THIS IS A WIZARD-GENERATED FILE. DO NOT EDIT THIS FILE!
//
// 18.1.0 Build 625 09/12/2018 SJ Standard Edition
// ************************************************************


//Copyright (C) 2018  Intel Corporation. All rights reserved.
//Your use of Intel Corporation's design tools, logic functions 
//and other software and tools, and its AMPP partner logic 
//functions, and any output files from any of the foregoing 
//(including device programming or simulation files), and any 
//associated documentation or information are expressly subject 
//to the terms and conditions of the Intel Program License 
//Subscription Agreement, the Intel Quartus Prime License Agreement,
//the Intel FPGA IP License Agreement, or other applicable license
//agreement, including, without limitation, that your use is for
//the sole purpose of programming logic devices manufactured by
//Intel and sold by Intel or its authorized distributors.  Please
//refer to the applicable agreement for further details.


//altfp_convert DEVICE_FAMILY="Cyclone V" OPERATION="INT2FLOAT" ROUNDING="TO_NEAREST" WIDTH_DATA=9 WIDTH_EXP_INPUT=8 WIDTH_EXP_OUTPUT=8 WIDTH_INT=9 WIDTH_MAN_INPUT=23 WIDTH_MAN_OUTPUT=23 WIDTH_RESULT=32 aclr clk_en clock dataa result
//VERSION_BEGIN 18.1 cbx_altbarrel_shift 2018:09:12:13:04:24:SJ cbx_altera_syncram_nd_impl 2018:09:12:13:04:24:SJ cbx_altfp_convert 2018:09:12:13:04:24:SJ cbx_altpriority_encoder 2018:09:12:13:04:24:SJ cbx_altsyncram 2018:09:12:13:04:24:SJ cbx_cycloneii 2018:09:12:13:04:24:SJ cbx_lpm_abs 2018:09:12:13:04:24:SJ cbx_lpm_add_sub 2018:09:12:13:04:24:SJ cbx_lpm_compare 2018:09:12:13:04:24:SJ cbx_lpm_decode 2018:09:12:13:04:24:SJ cbx_lpm_divide 2018:09:12:13:04:24:SJ cbx_lpm_mux 2018:09:12:13:04:24:SJ cbx_mgl 2018:09:12:13:10:36:SJ cbx_nadder 2018:09:12:13:04:24:SJ cbx_stratix 2018:09:12:13:04:24:SJ cbx_stratixii 2018:09:12:13:04:24:SJ cbx_stratixiii 2018:09:12:13:04:24:SJ cbx_stratixv 2018:09:12:13:04:24:SJ cbx_util_mgl 2018:09:12:13:04:24:SJ  VERSION_END
// synthesis VERILOG_INPUT_VERSION VERILOG_2001
// altera message_off 10463



//altbarrel_shift DEVICE_FAMILY="Cyclone V" PIPELINE=2 SHIFTDIR="LEFT" SHIFTTYPE="LOGICAL" WIDTH=9 WIDTHDIST=4 aclr clk_en clock data distance result
//VERSION_BEGIN 18.1 cbx_altbarrel_shift 2018:09:12:13:04:24:SJ cbx_mgl 2018:09:12:13:10:36:SJ  VERSION_END

//synthesis_resources = reg 22 
//synopsys translate_off
`timescale 1 ps / 1 ps
//synopsys translate_on
module  FP_Function_Convert_Int_To_Single_altbarrel_shift
	( 
	aclr,
	clk_en,
	clock,
	data,
	distance,
	result) /* synthesis synthesis_clearbox=1 */;
	input   aclr;
	input   clk_en;
	input   clock;
	input   [8:0]  data;
	input   [3:0]  distance;
	output   [8:0]  result;
`ifndef ALTERA_RESERVED_QIS
// synopsys translate_off
`endif
	tri0   aclr;
	tri1   clk_en;
	tri0   clock;
`ifndef ALTERA_RESERVED_QIS
// synopsys translate_on
`endif

	reg	[1:0]	dir_pipe;
	reg	[8:0]	sbit_piper1d;
	reg	[8:0]	sbit_piper2d;
	reg	sel_pipec2r1d;
	reg	sel_pipec3r1d;
	wire  [4:0]  dir_w;
	wire  direction_w;
	wire  [7:0]  pad_w;
	wire  [44:0]  sbit_w;
	wire  [3:0]  sel_w;
	wire  [35:0]  smux_w;

	// synopsys translate_off
	initial
		dir_pipe = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dir_pipe <= 2'b0;
		else if  (clk_en == 1'b1)   dir_pipe <= {dir_w[3], dir_w[1]};
	// synopsys translate_off
	initial
		sbit_piper1d = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) sbit_piper1d <= 9'b0;
		else if  (clk_en == 1'b1)   sbit_piper1d <= smux_w[17:9];
	// synopsys translate_off
	initial
		sbit_piper2d = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) sbit_piper2d <= 9'b0;
		else if  (clk_en == 1'b1)   sbit_piper2d <= smux_w[35:27];
	// synopsys translate_off
	initial
		sel_pipec2r1d = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) sel_pipec2r1d <= 1'b0;
		else if  (clk_en == 1'b1)   sel_pipec2r1d <= distance[2];
	// synopsys translate_off
	initial
		sel_pipec3r1d = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) sel_pipec3r1d <= 1'b0;
		else if  (clk_en == 1'b1)   sel_pipec3r1d <= distance[3];
	assign
		dir_w = {dir_pipe[1], dir_w[2], dir_pipe[0], dir_w[0], direction_w},
		direction_w = 1'b0,
		pad_w = {8{1'b0}},
		result = sbit_w[44:36],
		sbit_w = {sbit_piper2d, smux_w[26:18], sbit_piper1d, smux_w[8:0], data},
		sel_w = {sel_pipec3r1d, sel_pipec2r1d, distance[1:0]},
		smux_w = {((({9{(sel_w[3] & (~ dir_w[3]))}} & {sbit_w[27], pad_w[7:0]}) | ({9{(sel_w[3] & dir_w[3])}} & {pad_w[7:0], sbit_w[35]})) | ({9{(~ sel_w[3])}} & sbit_w[35:27])), ((({9{(sel_w[2] & (~ dir_w[2]))}} & {sbit_w[22:18], pad_w[3:0]}) | ({9{(sel_w[2] & dir_w[2])}} & {pad_w[3:0], sbit_w[26:22]})) | ({9{(~ sel_w[2])}} & sbit_w[26:18])), ((({9{(sel_w[1] & (~ dir_w[1]))}} & {sbit_w[15:9], pad_w[1:0]}) | ({9{(sel_w[1] & dir_w[1])}} & {pad_w[1:0], sbit_w[17:11]})) | ({9{(~ sel_w[1])}} & sbit_w[17:9])), ((({9{(sel_w[0] & (~ dir_w[0]))}} & {sbit_w[7:0], pad_w[0]}) | ({9{(sel_w[0] & dir_w[0])}} & {pad_w[0], sbit_w[8:1]})) | ({9{(~ sel_w[0])}} & sbit_w[8:0]))};
endmodule //FP_Function_Convert_Int_To_Single_altbarrel_shift


//altpriority_encoder WIDTH=16 WIDTHAD=4 data q
//VERSION_BEGIN 18.1 cbx_altpriority_encoder 2018:09:12:13:04:24:SJ cbx_mgl 2018:09:12:13:10:36:SJ  VERSION_END


//altpriority_encoder LSB_PRIORITY="NO" WIDTH=8 WIDTHAD=3 data q
//VERSION_BEGIN 18.1 cbx_altpriority_encoder 2018:09:12:13:04:24:SJ cbx_mgl 2018:09:12:13:10:36:SJ  VERSION_END


//altpriority_encoder LSB_PRIORITY="NO" WIDTH=4 WIDTHAD=2 data q
//VERSION_BEGIN 18.1 cbx_altpriority_encoder 2018:09:12:13:04:24:SJ cbx_mgl 2018:09:12:13:10:36:SJ  VERSION_END


//altpriority_encoder LSB_PRIORITY="NO" WIDTH=2 WIDTHAD=1 data q
//VERSION_BEGIN 18.1 cbx_altpriority_encoder 2018:09:12:13:04:24:SJ cbx_mgl 2018:09:12:13:10:36:SJ  VERSION_END

//synthesis_resources = 
//synopsys translate_off
`timescale 1 ps / 1 ps
//synopsys translate_on
module  FP_Function_Convert_Int_To_Single_altpriority_encoder123
	( 
	data,
	q) /* synthesis synthesis_clearbox=1 */;
	input   [1:0]  data;
	output   [0:0]  q;


	assign
		q = {data[1]};
endmodule //FP_Function_Convert_Int_To_Single_altpriority_encoder123


//altpriority_encoder LSB_PRIORITY="NO" WIDTH=2 WIDTHAD=1 data q zero
//VERSION_BEGIN 18.1 cbx_altpriority_encoder 2018:09:12:13:04:24:SJ cbx_mgl 2018:09:12:13:10:36:SJ  VERSION_END

//synthesis_resources = 
//synopsys translate_off
`timescale 1 ps / 1 ps
//synopsys translate_on
module  FP_Function_Convert_Int_To_Single_altpriority_encoder1234
	( 
	data,
	q,
	zero) /* synthesis synthesis_clearbox=1 */;
	input   [1:0]  data;
	output   [0:0]  q;
	output   zero;


	assign
		q = {data[1]},
		zero = (~ (data[0] | data[1]));
endmodule //FP_Function_Convert_Int_To_Single_altpriority_encoder1234

//synthesis_resources = 
//synopsys translate_off
`timescale 1 ps / 1 ps
//synopsys translate_on
module  FP_Function_Convert_Int_To_Single_altpriority_encoder12
	( 
	data,
	q) /* synthesis synthesis_clearbox=1 */;
	input   [3:0]  data;
	output   [1:0]  q;

	wire  [0:0]   wire_altpriority_encoder10_q;
	wire  [0:0]   wire_altpriority_encoder11_q;
	wire  wire_altpriority_encoder11_zero;

	FP_Function_Convert_Int_To_Single_altpriority_encoder123   altpriority_encoder10
	( 
	.data(data[1:0]),
	.q(wire_altpriority_encoder10_q));
	FP_Function_Convert_Int_To_Single_altpriority_encoder1234   altpriority_encoder11
	( 
	.data(data[3:2]),
	.q(wire_altpriority_encoder11_q),
	.zero(wire_altpriority_encoder11_zero));
	assign
		q = {(~ wire_altpriority_encoder11_zero), ((wire_altpriority_encoder11_zero & wire_altpriority_encoder10_q) | ((~ wire_altpriority_encoder11_zero) & wire_altpriority_encoder11_q))};
endmodule //FP_Function_Convert_Int_To_Single_altpriority_encoder12


//altpriority_encoder LSB_PRIORITY="NO" WIDTH=4 WIDTHAD=2 data q zero
//VERSION_BEGIN 18.1 cbx_altpriority_encoder 2018:09:12:13:04:24:SJ cbx_mgl 2018:09:12:13:10:36:SJ  VERSION_END

//synthesis_resources = 
//synopsys translate_off
`timescale 1 ps / 1 ps
//synopsys translate_on
module  FP_Function_Convert_Int_To_Single_altpriority_encoder12345
	( 
	data,
	q,
	zero) /* synthesis synthesis_clearbox=1 */;
	input   [3:0]  data;
	output   [1:0]  q;
	output   zero;

	wire  [0:0]   wire_altpriority_encoder12_q;
	wire  wire_altpriority_encoder12_zero;
	wire  [0:0]   wire_altpriority_encoder13_q;
	wire  wire_altpriority_encoder13_zero;

	FP_Function_Convert_Int_To_Single_altpriority_encoder1234   altpriority_encoder12
	( 
	.data(data[1:0]),
	.q(wire_altpriority_encoder12_q),
	.zero(wire_altpriority_encoder12_zero));
	FP_Function_Convert_Int_To_Single_altpriority_encoder1234   altpriority_encoder13
	( 
	.data(data[3:2]),
	.q(wire_altpriority_encoder13_q),
	.zero(wire_altpriority_encoder13_zero));
	assign
		q = {(~ wire_altpriority_encoder13_zero), ((wire_altpriority_encoder13_zero & wire_altpriority_encoder12_q) | ((~ wire_altpriority_encoder13_zero) & wire_altpriority_encoder13_q))},
		zero = (wire_altpriority_encoder12_zero & wire_altpriority_encoder13_zero);
endmodule //FP_Function_Convert_Int_To_Single_altpriority_encoder12345

//synthesis_resources = 
//synopsys translate_off
`timescale 1 ps / 1 ps
//synopsys translate_on
module  FP_Function_Convert_Int_To_Single_altpriority_encoder1
	( 
	data,
	q) /* synthesis synthesis_clearbox=1 */;
	input   [7:0]  data;
	output   [2:0]  q;

	wire  [1:0]   wire_altpriority_encoder8_q;
	wire  [1:0]   wire_altpriority_encoder9_q;
	wire  wire_altpriority_encoder9_zero;

	FP_Function_Convert_Int_To_Single_altpriority_encoder12   altpriority_encoder8
	( 
	.data(data[3:0]),
	.q(wire_altpriority_encoder8_q));
	FP_Function_Convert_Int_To_Single_altpriority_encoder12345   altpriority_encoder9
	( 
	.data(data[7:4]),
	.q(wire_altpriority_encoder9_q),
	.zero(wire_altpriority_encoder9_zero));
	assign
		q = {(~ wire_altpriority_encoder9_zero), (({2{wire_altpriority_encoder9_zero}} & wire_altpriority_encoder8_q) | ({2{(~ wire_altpriority_encoder9_zero)}} & wire_altpriority_encoder9_q))};
endmodule //FP_Function_Convert_Int_To_Single_altpriority_encoder1


//altpriority_encoder LSB_PRIORITY="NO" WIDTH=8 WIDTHAD=3 data q zero
//VERSION_BEGIN 18.1 cbx_altpriority_encoder 2018:09:12:13:04:24:SJ cbx_mgl 2018:09:12:13:10:36:SJ  VERSION_END

//synthesis_resources = 
//synopsys translate_off
`timescale 1 ps / 1 ps
//synopsys translate_on
module  FP_Function_Convert_Int_To_Single_altpriority_encoder123456
	( 
	data,
	q,
	zero) /* synthesis synthesis_clearbox=1 */;
	input   [7:0]  data;
	output   [2:0]  q;
	output   zero;

	wire  [1:0]   wire_altpriority_encoder14_q;
	wire  wire_altpriority_encoder14_zero;
	wire  [1:0]   wire_altpriority_encoder15_q;
	wire  wire_altpriority_encoder15_zero;

	FP_Function_Convert_Int_To_Single_altpriority_encoder12345   altpriority_encoder14
	( 
	.data(data[3:0]),
	.q(wire_altpriority_encoder14_q),
	.zero(wire_altpriority_encoder14_zero));
	FP_Function_Convert_Int_To_Single_altpriority_encoder12345   altpriority_encoder15
	( 
	.data(data[7:4]),
	.q(wire_altpriority_encoder15_q),
	.zero(wire_altpriority_encoder15_zero));
	assign
		q = {(~ wire_altpriority_encoder15_zero), (({2{wire_altpriority_encoder15_zero}} & wire_altpriority_encoder14_q) | ({2{(~ wire_altpriority_encoder15_zero)}} & wire_altpriority_encoder15_q))},
		zero = (wire_altpriority_encoder14_zero & wire_altpriority_encoder15_zero);
endmodule //FP_Function_Convert_Int_To_Single_altpriority_encoder123456

//synthesis_resources = 
//synopsys translate_off
`timescale 1 ps / 1 ps
//synopsys translate_on
module  FP_Function_Convert_Int_To_Single_altpriority_encoder
	( 
	data,
	q) /* synthesis synthesis_clearbox=1 */;
	input   [15:0]  data;
	output   [3:0]  q;

	wire  [2:0]   wire_altpriority_encoder6_q;
	wire  [2:0]   wire_altpriority_encoder7_q;
	wire  wire_altpriority_encoder7_zero;

	FP_Function_Convert_Int_To_Single_altpriority_encoder1   altpriority_encoder6
	( 
	.data(data[7:0]),
	.q(wire_altpriority_encoder6_q));
	FP_Function_Convert_Int_To_Single_altpriority_encoder123456   altpriority_encoder7
	( 
	.data(data[15:8]),
	.q(wire_altpriority_encoder7_q),
	.zero(wire_altpriority_encoder7_zero));
	assign
		q = {(~ wire_altpriority_encoder7_zero), (({3{wire_altpriority_encoder7_zero}} & wire_altpriority_encoder6_q) | ({3{(~ wire_altpriority_encoder7_zero)}} & wire_altpriority_encoder7_q))};
endmodule //FP_Function_Convert_Int_To_Single_altpriority_encoder


//lpm_add_sub DEVICE_FAMILY="Cyclone V" LPM_DIRECTION="ADD" LPM_WIDTH=8 ONE_INPUT_IS_CONSTANT="YES" dataa datab result
//VERSION_BEGIN 18.1 cbx_cycloneii 2018:09:12:13:04:24:SJ cbx_lpm_add_sub 2018:09:12:13:04:24:SJ cbx_mgl 2018:09:12:13:10:36:SJ cbx_nadder 2018:09:12:13:04:24:SJ cbx_stratix 2018:09:12:13:04:24:SJ cbx_stratixii 2018:09:12:13:04:24:SJ  VERSION_END


//lpm_add_sub DEVICE_FAMILY="Cyclone V" LPM_DIRECTION="SUB" LPM_WIDTH=8 ONE_INPUT_IS_CONSTANT="YES" dataa datab result
//VERSION_BEGIN 18.1 cbx_cycloneii 2018:09:12:13:04:24:SJ cbx_lpm_add_sub 2018:09:12:13:04:24:SJ cbx_mgl 2018:09:12:13:10:36:SJ cbx_nadder 2018:09:12:13:04:24:SJ cbx_stratix 2018:09:12:13:04:24:SJ cbx_stratixii 2018:09:12:13:04:24:SJ  VERSION_END


//lpm_compare DEVICE_FAMILY="Cyclone V" LPM_REPRESENTATION="UNSIGNED" LPM_WIDTH=8 alb dataa datab
//VERSION_BEGIN 18.1 cbx_cycloneii 2018:09:12:13:04:24:SJ cbx_lpm_add_sub 2018:09:12:13:04:24:SJ cbx_lpm_compare 2018:09:12:13:04:24:SJ cbx_mgl 2018:09:12:13:10:36:SJ cbx_nadder 2018:09:12:13:04:24:SJ cbx_stratix 2018:09:12:13:04:24:SJ cbx_stratixii 2018:09:12:13:04:24:SJ  VERSION_END

//synthesis_resources = lut 24 reg 127 
//synopsys translate_off
`timescale 1 ps / 1 ps
//synopsys translate_on
module  FP_Function_Convert_Int_To_Single_altfp_convert
	( 
	aclr,
	clk_en,
	clock,
	dataa,
	result) /* synthesis synthesis_clearbox=1 */;
	input   aclr;
	input   clk_en;
	input   clock;
	input   [8:0]  dataa;
	output   [31:0]  result;
`ifndef ALTERA_RESERVED_QIS
// synopsys translate_off
`endif
	tri0   aclr;
	tri1   clk_en;
`ifndef ALTERA_RESERVED_QIS
// synopsys translate_on
`endif

	wire  [8:0]   wire_altbarrel_shift5_result;
	wire  [3:0]   wire_altpriority_encoder2_q;
	reg	[7:0]	exponent_bus_pre_reg;
	reg	[7:0]	exponent_bus_pre_reg2;
	reg	[7:0]	exponent_bus_pre_reg3;
	reg	[7:0]	mag_int_a_reg;
	reg	[7:0]	mag_int_a_reg2;
	reg	[23:0]	mantissa_pre_round_reg;
	reg	[3:0]	priority_encoder_reg;
	reg	[31:0]	result_reg;
	reg	sign_int_a_reg1;
	reg	sign_int_a_reg2;
	reg	sign_int_a_reg3;
	reg	sign_int_a_reg4;
	reg	sign_int_a_reg5;
	wire	[7:0]	wire_add_sub1_dataa;
	wire	[7:0]	wire_add_sub1_datab;
	wire	[7:0]	wire_add_sub1_result;
	wire	[7:0]	wire_add_sub3_dataa;
	wire	[7:0]	wire_add_sub3_datab;
	wire	[7:0]	wire_add_sub3_result;
	reg	wire_cmpr4_alb_int;
	wire	wire_cmpr4_alb;
	wire	[7:0]	wire_cmpr4_dataa;
	wire	[7:0]	wire_cmpr4_datab;
	wire  [7:0]  bias_value_w;
	wire  [7:0]  const_bias_value_add_width_int_w;
	wire  [7:0]  exceptions_value;
	wire  [7:0]  exponent_bus;
	wire  [7:0]  exponent_bus_pre;
	wire  [7:0]  exponent_output_w;
	wire  [7:0]  exponent_rounded;
	wire  [7:0]  exponent_zero_w;
	wire  [7:0]  int_a;
	wire  [7:0]  int_a_2s;
	wire  [7:0]  invert_int_a;
	wire  [3:0]  leading_zeroes;
	wire  [7:0]  mag_int_a;
	wire  [22:0]  mantissa_bus;
	wire  [23:0]  mantissa_pre_round;
	wire  [23:0]  mantissa_rounded;
	wire  max_neg_value_selector;
	wire  [7:0]  max_neg_value_w;
	wire  [7:0]  minus_leading_zero;
	wire  [8:0]  prio_mag_int_a;
	wire  [6:0]  priority_pad_one_w;
	wire  [31:0]  result_w;
	wire  [7:0]  shifted_mag_int_a;
	wire  sign_bus;
	wire  sign_int_a;
	wire  [3:0]  zero_padding_w;

	FP_Function_Convert_Int_To_Single_altbarrel_shift   altbarrel_shift5
	( 
	.aclr(aclr),
	.clk_en(clk_en),
	.clock(clock),
	.data({1'b0, mag_int_a_reg2}),
	.distance(leading_zeroes),
	.result(wire_altbarrel_shift5_result));
	FP_Function_Convert_Int_To_Single_altpriority_encoder   altpriority_encoder2
	( 
	.data({prio_mag_int_a, priority_pad_one_w}),
	.q(wire_altpriority_encoder2_q));
	// synopsys translate_off
	initial
		exponent_bus_pre_reg = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) exponent_bus_pre_reg <= 8'b0;
		else if  (clk_en == 1'b1)   exponent_bus_pre_reg <= exponent_bus_pre_reg2;
	// synopsys translate_off
	initial
		exponent_bus_pre_reg2 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) exponent_bus_pre_reg2 <= 8'b0;
		else if  (clk_en == 1'b1)   exponent_bus_pre_reg2 <= exponent_bus_pre_reg3;
	// synopsys translate_off
	initial
		exponent_bus_pre_reg3 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) exponent_bus_pre_reg3 <= 8'b0;
		else if  (clk_en == 1'b1)   exponent_bus_pre_reg3 <= exponent_bus_pre;
	// synopsys translate_off
	initial
		mag_int_a_reg = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) mag_int_a_reg <= 8'b0;
		else if  (clk_en == 1'b1)   mag_int_a_reg <= mag_int_a;
	// synopsys translate_off
	initial
		mag_int_a_reg2 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) mag_int_a_reg2 <= 8'b0;
		else if  (clk_en == 1'b1)   mag_int_a_reg2 <= mag_int_a_reg;
	// synopsys translate_off
	initial
		mantissa_pre_round_reg = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) mantissa_pre_round_reg <= 24'b0;
		else if  (clk_en == 1'b1)   mantissa_pre_round_reg <= mantissa_pre_round;
	// synopsys translate_off
	initial
		priority_encoder_reg = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) priority_encoder_reg <= 4'b0;
		else if  (clk_en == 1'b1)   priority_encoder_reg <= wire_altpriority_encoder2_q;
	// synopsys translate_off
	initial
		result_reg = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) result_reg <= 32'b0;
		else if  (clk_en == 1'b1)   result_reg <= result_w;
	// synopsys translate_off
	initial
		sign_int_a_reg1 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) sign_int_a_reg1 <= 1'b0;
		else if  (clk_en == 1'b1)   sign_int_a_reg1 <= sign_int_a;
	// synopsys translate_off
	initial
		sign_int_a_reg2 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) sign_int_a_reg2 <= 1'b0;
		else if  (clk_en == 1'b1)   sign_int_a_reg2 <= sign_int_a_reg1;
	// synopsys translate_off
	initial
		sign_int_a_reg3 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) sign_int_a_reg3 <= 1'b0;
		else if  (clk_en == 1'b1)   sign_int_a_reg3 <= sign_int_a_reg2;
	// synopsys translate_off
	initial
		sign_int_a_reg4 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) sign_int_a_reg4 <= 1'b0;
		else if  (clk_en == 1'b1)   sign_int_a_reg4 <= sign_int_a_reg3;
	// synopsys translate_off
	initial
		sign_int_a_reg5 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) sign_int_a_reg5 <= 1'b0;
		else if  (clk_en == 1'b1)   sign_int_a_reg5 <= sign_int_a_reg4;
	assign
		wire_add_sub1_result = wire_add_sub1_dataa + wire_add_sub1_datab;
	assign
		wire_add_sub1_dataa = invert_int_a,
		wire_add_sub1_datab = 8'b00000001;
	assign
		wire_add_sub3_result = wire_add_sub3_dataa - wire_add_sub3_datab;
	assign
		wire_add_sub3_dataa = const_bias_value_add_width_int_w,
		wire_add_sub3_datab = minus_leading_zero;
	always @(wire_cmpr4_dataa or wire_cmpr4_datab)
	begin
		if (wire_cmpr4_dataa < wire_cmpr4_datab) 
			begin
				wire_cmpr4_alb_int = 1'b1;
			end
		else
			begin
				wire_cmpr4_alb_int = 1'b0;
			end
	end
	assign
		wire_cmpr4_alb = wire_cmpr4_alb_int;
	assign
		wire_cmpr4_dataa = exponent_output_w,
		wire_cmpr4_datab = bias_value_w;
	assign
		bias_value_w = 8'b01111111,
		const_bias_value_add_width_int_w = 8'b10000110,
		exceptions_value = (({8{(~ max_neg_value_selector)}} & exponent_zero_w) | ({8{max_neg_value_selector}} & max_neg_value_w)),
		exponent_bus = exponent_rounded,
		exponent_bus_pre = (({8{(~ wire_cmpr4_alb)}} & exponent_output_w) | ({8{wire_cmpr4_alb}} & exceptions_value)),
		exponent_output_w = wire_add_sub3_result,
		exponent_rounded = exponent_bus_pre_reg,
		exponent_zero_w = {8{1'b0}},
		int_a = dataa[7:0],
		int_a_2s = wire_add_sub1_result,
		invert_int_a = (~ int_a),
		leading_zeroes = (~ priority_encoder_reg),
		mag_int_a = (({8{(~ sign_int_a)}} & int_a) | ({8{sign_int_a}} & int_a_2s)),
		mantissa_bus = mantissa_rounded[22:0],
		mantissa_pre_round = {shifted_mag_int_a[7:0], {16{1'b0}}},
		mantissa_rounded = mantissa_pre_round_reg,
		max_neg_value_selector = (wire_cmpr4_alb & sign_int_a_reg2),
		max_neg_value_w = 8'b10000111,
		minus_leading_zero = {zero_padding_w, leading_zeroes},
		prio_mag_int_a = {mag_int_a_reg, 1'b1},
		priority_pad_one_w = {7{1'b1}},
		result = result_reg,
		result_w = {sign_bus, exponent_bus, mantissa_bus},
		shifted_mag_int_a = wire_altbarrel_shift5_result[7:0],
		sign_bus = sign_int_a_reg5,
		sign_int_a = dataa[8],
		zero_padding_w = {4{1'b0}};
endmodule //FP_Function_Convert_Int_To_Single_altfp_convert
//VALID FILE


// synopsys translate_off
`timescale 1 ps / 1 ps
// synopsys translate_on
module FP_Function_Convert_Int_To_Single (
	aclr,
	clk_en,
	clock,
	dataa,
	result)/* synthesis synthesis_clearbox = 1 */;

	input	  aclr;
	input	  clk_en;
	input	  clock;
	input	[8:0]  dataa;
	output	[31:0]  result;

	wire [31:0] sub_wire0;
	wire [31:0] result = sub_wire0[31:0];

	FP_Function_Convert_Int_To_Single_altfp_convert	FP_Function_Convert_Int_To_Single_altfp_convert_component (
				.aclr (aclr),
				.clk_en (clk_en),
				.clock (clock),
				.dataa (dataa),
				.result (sub_wire0));

endmodule

// ============================================================
// CNX file retrieval info
// ============================================================
// Retrieval info: LIBRARY: altera_mf altera_mf.altera_mf_components.all
// Retrieval info: PRIVATE: INTENDED_DEVICE_FAMILY STRING "Cyclone V"
// Retrieval info: CONSTANT: INTENDED_DEVICE_FAMILY STRING "Cyclone V"
// Retrieval info: CONSTANT: LPM_HINT STRING "UNUSED"
// Retrieval info: CONSTANT: LPM_TYPE STRING "altfp_convert"
// Retrieval info: CONSTANT: OPERATION STRING "INT2FLOAT"
// Retrieval info: CONSTANT: ROUNDING STRING "TO_NEAREST"
// Retrieval info: CONSTANT: WIDTH_DATA NUMERIC "9"
// Retrieval info: CONSTANT: WIDTH_EXP_INPUT NUMERIC "8"
// Retrieval info: CONSTANT: WIDTH_EXP_OUTPUT NUMERIC "8"
// Retrieval info: CONSTANT: WIDTH_INT NUMERIC "9"
// Retrieval info: CONSTANT: WIDTH_MAN_INPUT NUMERIC "23"
// Retrieval info: CONSTANT: WIDTH_MAN_OUTPUT NUMERIC "23"
// Retrieval info: CONSTANT: WIDTH_RESULT NUMERIC "32"
// Retrieval info: USED_PORT: aclr 0 0 0 0 INPUT NODEFVAL "aclr"
// Retrieval info: CONNECT: @aclr 0 0 0 0 aclr 0 0 0 0
// Retrieval info: USED_PORT: clk_en 0 0 0 0 INPUT NODEFVAL "clk_en"
// Retrieval info: CONNECT: @clk_en 0 0 0 0 clk_en 0 0 0 0
// Retrieval info: USED_PORT: clock 0 0 0 0 INPUT NODEFVAL "clock"
// Retrieval info: CONNECT: @clock 0 0 0 0 clock 0 0 0 0
// Retrieval info: USED_PORT: dataa 0 0 9 0 INPUT NODEFVAL "dataa[8..0]"
// Retrieval info: CONNECT: @dataa 0 0 9 0 dataa 0 0 9 0
// Retrieval info: USED_PORT: result 0 0 32 0 OUTPUT NODEFVAL "result[31..0]"
// Retrieval info: CONNECT: result 0 0 32 0 @result 0 0 32 0
// Retrieval info: GEN_FILE: TYPE_NORMAL FP_Function_Convert_Int_To_Single.vhd TRUE FALSE
// Retrieval info: GEN_FILE: TYPE_NORMAL FP_Function_Convert_Int_To_Single.qip TRUE FALSE
// Retrieval info: GEN_FILE: TYPE_NORMAL FP_Function_Convert_Int_To_Single.bsf TRUE TRUE
// Retrieval info: GEN_FILE: TYPE_NORMAL FP_Function_Convert_Int_To_Single_inst.vhd TRUE TRUE
// Retrieval info: GEN_FILE: TYPE_NORMAL FP_Function_Convert_Int_To_Single.inc TRUE TRUE
// Retrieval info: GEN_FILE: TYPE_NORMAL FP_Function_Convert_Int_To_Single.cmp TRUE TRUE
// Retrieval info: PRIVATE: SYNTH_WRAPPER_GEN_POSTFIX NUMERIC "1"
// Retrieval info: LIB_FILE: lpm