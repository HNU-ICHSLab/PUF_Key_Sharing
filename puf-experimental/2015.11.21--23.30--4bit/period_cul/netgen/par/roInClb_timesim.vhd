--------------------------------------------------------------------------------
-- Copyright (c) 1995-2012 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.49d
--  \   \         Application: netgen
--  /   /         Filename: roInClb_timesim.vhd
-- /___/   /\     Timestamp: Thu Jul 09 01:48:54 2015
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -s 1 -pcf roInClb.pcf -rpw 100 -tpw 0 -ar Structure -tm roInClb -insert_pp_buffers true -w -dir netgen/par -ofmt vhdl -sim roInClb.ncd roInClb_timesim.vhd 
-- Device	: 7z020clg484-1 (ADVANCED 1.04 2012-12-04)
-- Input file	: roInClb.ncd
-- Output file	: F:\PUF\period_cul\netgen\par\roInClb_timesim.vhd
-- # of Entities	: 1
-- Design Name	: roInClb
-- Xilinx	: f:\Xilinx\14.4\ISE_DS\ISE\
--             
-- Purpose:    
--     This VHDL netlist is a verification model and uses simulation 
--     primitives which may not represent the true implementation of the 
--     device, however the netlist is functionally correct and should not 
--     be modified. This file cannot be synthesized and should only be used 
--     with supported simulation tools.
--             
-- Reference:  
--     Command Line Tools User Guide, Chapter 23
--     Synthesis and Simulation Design Guide, Chapter 6
--             
--------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library SIMPRIM;
use SIMPRIM.VCOMPONENTS.ALL;
use SIMPRIM.VPACKAGE.ALL;

entity roInClb is
  port (
    Ro_ena : in STD_LOGIC := 'X'; 
    Ro_conf0 : in STD_LOGIC := 'X'; 
    Ro_conf1 : in STD_LOGIC := 'X'; 
    Ro_out : out STD_LOGIC 
  );
end roInClb;

architecture Structure of roInClb is
  signal NAND_out : STD_LOGIC; 
  signal Ro_ena_IBUF_37 : STD_LOGIC; 
  signal Ro_out_OBUF_38 : STD_LOGIC; 
  signal Ro_conf1_IBUF_39 : STD_LOGIC; 
  signal LUT4_out : STD_LOGIC; 
  signal Ro_conf0_IBUF_41 : STD_LOGIC; 
  signal LUT2_out : STD_LOGIC; 
  signal LUT1_out : STD_LOGIC; 
  signal MUX1_out : STD_LOGIC; 
  signal LUT6_out : STD_LOGIC; 
  signal LUT5_out : STD_LOGIC; 
  signal ProtoComp2_INTERMDISABLE_GND_0 : STD_LOGIC; 
  signal Ro_conf0_ProtoComp2_INTERMDISABLE_GND_0 : STD_LOGIC; 
  signal Ro_conf1_ProtoComp2_INTERMDISABLE_GND_0 : STD_LOGIC; 
  signal LUT3_out : STD_LOGIC; 
  signal MUX1_out_pack_3 : STD_LOGIC; 
  signal LUT7_out : STD_LOGIC; 
  signal Ro_out_OBUF_pack_3 : STD_LOGIC; 
  signal NlwBufferSignal_Ro_out_OBUF_I : STD_LOGIC; 
begin
  ProtoComp2_INTERMDISABLE_GND : X_ZERO
    generic map(
      LOC => "IOB_X0Y41"
    )
    port map (
      O => ProtoComp2_INTERMDISABLE_GND_0
    );
  Ro_ena_IBUF : X_IBUF_INTERMDISABLE_TPWRGT
    generic map(
      LOC => "IOB_X0Y41"
    )
    port map (
      IBUFDISABLE => '0',
      INTERMDISABLE => ProtoComp2_INTERMDISABLE_GND_0,
      O => Ro_ena_IBUF_37,
      I => Ro_ena,
      TPWRGT => '1'
    );
  ProtoComp2_INTERMDISABLE_GND_1 : X_ZERO
    generic map(
      LOC => "IOB_X0Y35"
    )
    port map (
      O => Ro_conf0_ProtoComp2_INTERMDISABLE_GND_0
    );
  Ro_conf0_IBUF : X_IBUF_INTERMDISABLE_TPWRGT
    generic map(
      LOC => "IOB_X0Y35"
    )
    port map (
      IBUFDISABLE => '0',
      INTERMDISABLE => Ro_conf0_ProtoComp2_INTERMDISABLE_GND_0,
      O => Ro_conf0_IBUF_41,
      I => Ro_conf0,
      TPWRGT => '1'
    );
  ProtoComp2_INTERMDISABLE_GND_2 : X_ZERO
    generic map(
      LOC => "IOB_X0Y39"
    )
    port map (
      O => Ro_conf1_ProtoComp2_INTERMDISABLE_GND_0
    );
  Ro_conf1_IBUF : X_IBUF_INTERMDISABLE_TPWRGT
    generic map(
      LOC => "IOB_X0Y39"
    )
    port map (
      IBUFDISABLE => '0',
      INTERMDISABLE => Ro_conf1_ProtoComp2_INTERMDISABLE_GND_0,
      O => Ro_conf1_IBUF_39,
      I => Ro_conf1,
      TPWRGT => '1'
    );
  Ro_out_OBUF : X_OBUF
    generic map(
      LOC => "IOB_X0Y33"
    )
    port map (
      I => NlwBufferSignal_Ro_out_OBUF_I,
      O => Ro_out
    );
  LUT1_out_LUT1_out_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => MUX1_out_pack_3,
      O => MUX1_out
    );
  MUXF7_inst1 : X_MUX2
    generic map(
      LOC => "SLICE_X1Y1"
    )
    port map (
      IA => LUT1_out,
      IB => LUT3_out,
      O => MUX1_out_pack_3,
      SEL => Ro_conf0_IBUF_41
    );
  LUT_inst1 : X_LUT6
    generic map(
      LOC => "SLICE_X1Y1",
      INIT => X"0F0F0F0F0F0F0F0F"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR5 => '1',
      ADR3 => '1',
      ADR4 => '1',
      ADR2 => NAND_out,
      O => LUT1_out
    );
  LUT_inst3 : X_LUT6
    generic map(
      LOC => "SLICE_X1Y1",
      INIT => X"5555555555555555"
    )
    port map (
      ADR5 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      ADR0 => LUT2_out,
      O => LUT3_out
    );
  LUT_inst4 : X_LUT6
    generic map(
      LOC => "SLICE_X1Y1",
      INIT => X"0000FFFF0000FFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR5 => '1',
      ADR4 => MUX1_out,
      O => LUT4_out
    );
  LUT_inst2 : X_LUT6
    generic map(
      LOC => "SLICE_X1Y1",
      INIT => X"5555555555555555"
    )
    port map (
      ADR5 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      ADR0 => LUT1_out,
      O => LUT2_out
    );
  LUT5_out_LUT5_out_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Ro_out_OBUF_pack_3,
      O => Ro_out_OBUF_38
    );
  MUXF7_inst2 : X_MUX2
    generic map(
      LOC => "SLICE_X0Y1"
    )
    port map (
      IA => LUT5_out,
      IB => LUT7_out,
      O => Ro_out_OBUF_pack_3,
      SEL => Ro_conf1_IBUF_39
    );
  LUT_inst5 : X_LUT6
    generic map(
      LOC => "SLICE_X0Y1",
      INIT => X"0F0F0F0F0F0F0F0F"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR5 => '1',
      ADR3 => '1',
      ADR4 => '1',
      ADR2 => LUT4_out,
      O => LUT5_out
    );
  LUT_inst7 : X_LUT6
    generic map(
      LOC => "SLICE_X0Y1",
      INIT => X"5555555555555555"
    )
    port map (
      ADR5 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      ADR0 => LUT6_out,
      O => LUT7_out
    );
  LUT2_inst1 : X_LUT6
    generic map(
      LOC => "SLICE_X0Y1",
      INIT => X"FF000000FF000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR5 => '1',
      ADR3 => Ro_ena_IBUF_37,
      ADR4 => Ro_out_OBUF_38,
      O => NAND_out
    );
  LUT_inst6 : X_LUT6
    generic map(
      LOC => "SLICE_X0Y1",
      INIT => X"5555555555555555"
    )
    port map (
      ADR5 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      ADR0 => LUT5_out,
      O => LUT6_out
    );
  NlwBufferBlock_Ro_out_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Ro_out_OBUF_38,
      O => NlwBufferSignal_Ro_out_OBUF_I
    );
  NlwBlockROC : X_ROC
    generic map (ROC_WIDTH => 100 ns)
    port map (O => GSR);
  NlwBlockTOC : X_TOC
    port map (O => GTS);

end Structure;

