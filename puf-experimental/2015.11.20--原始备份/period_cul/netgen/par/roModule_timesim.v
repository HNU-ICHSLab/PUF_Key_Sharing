////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2012 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.49d
//  \   \         Application: netgen
//  /   /         Filename: roModule_timesim.v
// /___/   /\     Timestamp: Thu Jul 09 01:19:44 2015
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -s 1I -pcf roModule.pcf -sdf_anno true -sdf_path netgen/par -insert_glbl true -insert_pp_buffers true -w -dir netgen/par -ofmt verilog -sim roModule.ncd roModule_timesim.v 
// Device	: xa7z020clg400-1i (ADVANCED 1.03 2012-12-04)
// Input file	: roModule.ncd
// Output file	: F:\PUF\period_cul\netgen\par\roModule_timesim.v
// # of Modules	: 1
// Design Name	: roModule
// Xilinx        : f:\Xilinx\14.4\ISE_DS\ISE\
//             
// Purpose:    
//     This verilog netlist is a verification model and uses simulation 
//     primitives which may not represent the true implementation of the 
//     device, however the netlist is functionally correct and should not 
//     be modified. This file cannot be synthesized and should only be used 
//     with supported simulation tools.
//             
// Reference:  
//     Command Line Tools User Guide, Chapter 23 and Synthesis and Simulation Design Guide, Chapter 6
//             
////////////////////////////////////////////////////////////////////////////////

`timescale 1 ns/1 ps

module roModule (
  roModuleEna, roModuleConf0, roModuleConf1, roModuleOut
);
  input roModuleEna;
  input roModuleConf0;
  input roModuleConf1;
  output roModuleOut;
  wire roModuleConf0_IBUF_47;
  wire roModuleConf1_IBUF_48;
  wire roModuleEna_IBUF_49;
  wire roModuleOut_OBUF_50;
  wire \roModule_inst/LUT5_out ;
  wire \roModule_inst/LUT6_out ;
  wire \roModule_inst/NAND_out ;
  wire \roModule_inst/MUX1_out ;
  wire \roModule_inst/LUT4_out ;
  wire \roModule_inst/LUT1_out ;
  wire \roModule_inst/LUT2_out ;
  wire LUT3_out;
  wire MUX1_out_pack_3;
  wire LUT7_out;
  wire Ro_out_OBUF_pack_3;
  wire \ProtoComp1.INTERMDISABLE_GND.0 ;
  wire \roModuleConf0/ProtoComp1.INTERMDISABLE_GND.0 ;
  wire \roModuleConf1/ProtoComp1.INTERMDISABLE_GND.0 ;
  wire \NlwBufferSignal_roModuleOut_OBUF/I ;
  initial $sdf_annotate("netgen/par/romodule_timesim.sdf");
  X_BUF   \roModule_inst/roModule_inst/LUT1_out/roModule_inst/LUT1_out_CMUX_Delay  (
    .I(MUX1_out_pack_3),
    .O(\roModule_inst/MUX1_out )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X1Y3" ))
  \roModule_inst/MUXF7_inst1  (
    .IA(\roModule_inst/LUT1_out ),
    .IB(LUT3_out),
    .O(MUX1_out_pack_3),
    .SEL(roModuleConf0_IBUF_47)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X1Y3" ),
    .INIT ( 64'h0F0F0F0F0F0F0F0F ))
  \roModule_inst/LUT_inst1  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR5(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .ADR2(\roModule_inst/NAND_out ),
    .O(\roModule_inst/LUT1_out )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X1Y3" ),
    .INIT ( 64'h5555555555555555 ))
  \roModule_inst/LUT_inst3  (
    .ADR5(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .ADR0(\roModule_inst/LUT2_out ),
    .O(LUT3_out)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X1Y3" ),
    .INIT ( 64'h0000FFFF0000FFFF ))
  \roModule_inst/LUT_inst4  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR5(1'b1),
    .ADR4(\roModule_inst/MUX1_out ),
    .O(\roModule_inst/LUT4_out )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X1Y3" ),
    .INIT ( 64'h5555555555555555 ))
  \roModule_inst/LUT_inst2  (
    .ADR5(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .ADR0(\roModule_inst/LUT1_out ),
    .O(\roModule_inst/LUT2_out )
  );
  X_BUF   \roModule_inst/roModule_inst/LUT5_out/roModule_inst/LUT5_out_CMUX_Delay  (
    .I(Ro_out_OBUF_pack_3),
    .O(roModuleOut_OBUF_50)
  );
  X_MUX2 #(
    .LOC ( "SLICE_X0Y3" ))
  \roModule_inst/MUXF7_inst2  (
    .IA(\roModule_inst/LUT5_out ),
    .IB(LUT7_out),
    .O(Ro_out_OBUF_pack_3),
    .SEL(roModuleConf1_IBUF_48)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X0Y3" ),
    .INIT ( 64'h0F0F0F0F0F0F0F0F ))
  \roModule_inst/LUT_inst5  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR5(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .ADR2(\roModule_inst/LUT4_out ),
    .O(\roModule_inst/LUT5_out )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X0Y3" ),
    .INIT ( 64'h5555555555555555 ))
  \roModule_inst/LUT_inst7  (
    .ADR5(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .ADR0(\roModule_inst/LUT6_out ),
    .O(LUT7_out)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X0Y3" ),
    .INIT ( 64'hFF000000FF000000 ))
  \roModule_inst/LUT2_inst1  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR5(1'b1),
    .ADR3(roModuleEna_IBUF_49),
    .ADR4(roModuleOut_OBUF_50),
    .O(\roModule_inst/NAND_out )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X0Y3" ),
    .INIT ( 64'h5555555555555555 ))
  \roModule_inst/LUT_inst6  (
    .ADR5(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .ADR0(\roModule_inst/LUT5_out ),
    .O(\roModule_inst/LUT6_out )
  );
  X_OPAD #(
    .LOC ( "IOB_X1Y133" ))
  roModuleOut_16 (
    .PAD(roModuleOut)
  );
  X_OBUF #(
    .LOC ( "IOB_X1Y133" ))
  roModuleOut_OBUF (
    .I(\NlwBufferSignal_roModuleOut_OBUF/I ),
    .O(roModuleOut)
  );
  X_IPAD #(
    .LOC ( "IOB_X1Y135" ))
  roModuleEna_20 (
    .PAD(roModuleEna)
  );
  X_ZERO #(
    .LOC ( "IOB_X1Y135" ))
  \ProtoComp1.INTERMDISABLE_GND  (
    .O(\ProtoComp1.INTERMDISABLE_GND.0 )
  );
  X_IBUF_INTERMDISABLE_TPWRGT #(
    .LOC ( "IOB_X1Y135" ))
  roModuleEna_IBUF (
    .IBUFDISABLE(1'b0),
    .INTERMDISABLE(\ProtoComp1.INTERMDISABLE_GND.0 ),
    .O(roModuleEna_IBUF_49),
    .I(roModuleEna),
    .TPWRGT(1'b1)
  );
  X_IPAD #(
    .LOC ( "IOB_X1Y139" ))
  roModuleConf0_24 (
    .PAD(roModuleConf0)
  );
  X_ZERO #(
    .LOC ( "IOB_X1Y139" ))
  \ProtoComp1.INTERMDISABLE_GND.1  (
    .O(\roModuleConf0/ProtoComp1.INTERMDISABLE_GND.0 )
  );
  X_IBUF_INTERMDISABLE_TPWRGT #(
    .LOC ( "IOB_X1Y139" ))
  roModuleConf0_IBUF (
    .IBUFDISABLE(1'b0),
    .INTERMDISABLE(\roModuleConf0/ProtoComp1.INTERMDISABLE_GND.0 ),
    .O(roModuleConf0_IBUF_47),
    .I(roModuleConf0),
    .TPWRGT(1'b1)
  );
  X_IPAD #(
    .LOC ( "IOB_X1Y141" ))
  roModuleConf1_28 (
    .PAD(roModuleConf1)
  );
  X_ZERO #(
    .LOC ( "IOB_X1Y141" ))
  \ProtoComp1.INTERMDISABLE_GND.2  (
    .O(\roModuleConf1/ProtoComp1.INTERMDISABLE_GND.0 )
  );
  X_IBUF_INTERMDISABLE_TPWRGT #(
    .LOC ( "IOB_X1Y141" ))
  roModuleConf1_IBUF (
    .IBUFDISABLE(1'b0),
    .INTERMDISABLE(\roModuleConf1/ProtoComp1.INTERMDISABLE_GND.0 ),
    .O(roModuleConf1_IBUF_48),
    .I(roModuleConf1),
    .TPWRGT(1'b1)
  );
  X_BUF   \NlwBufferBlock_roModuleOut_OBUF/I  (
    .I(roModuleOut_OBUF_50),
    .O(\NlwBufferSignal_roModuleOut_OBUF/I )
  );
endmodule


`ifndef GLBL
`define GLBL

`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;

    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule

`endif

