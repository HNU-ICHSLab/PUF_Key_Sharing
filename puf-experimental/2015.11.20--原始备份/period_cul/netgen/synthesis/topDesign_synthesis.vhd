--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: topDesign_synthesis.vhd
-- /___/   /\     Timestamp: Thu Nov 12 17:12:04 2015
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -ar Structure -tm topDesign -w -dir netgen/synthesis -ofmt vhdl -sim topDesign.ngc topDesign_synthesis.vhd 
-- Device	: xc7z010-1-clg400
-- Input file	: topDesign.ngc
-- Output file	: D:\Xilinx\period_cul\netgen\synthesis\topDesign_synthesis.vhd
-- # of Entities	: 1
-- Design Name	: topDesign
-- Xilinx	: C:\Xilinx\14.7\ISE_DS\ISE\
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
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
use UNISIM.VPKG.ALL;

entity topDesign is
  port (
    sysClock : in STD_LOGIC := 'X'; 
    sysRst : in STD_LOGIC := 'X'; 
    sysConf0 : in STD_LOGIC := 'X'; 
    sysConf1 : in STD_LOGIC := 'X'; 
    sysSel : in STD_LOGIC_VECTOR ( 3 downto 0 ); 
    sysout : out STD_LOGIC_VECTOR ( 3 downto 0 ) 
  );
end topDesign;

architecture Structure of topDesign is
  component HM_ro
    port (
      HM_conf0 : in STD_LOGIC := 'X'; 
      HM_conf1 : in STD_LOGIC := 'X'; 
      HM_ena : in STD_LOGIC := 'X'; 
      HM_out : out STD_LOGIC 
    );
  end component;
  signal sysSel_3_IBUF_0 : STD_LOGIC; 
  signal sysSel_2_IBUF_1 : STD_LOGIC; 
  signal sysSel_1_IBUF_2 : STD_LOGIC; 
  signal sysSel_0_IBUF_3 : STD_LOGIC; 
  signal sysRst_IBUF_5 : STD_LOGIC; 
  signal sysConf0_IBUF_6 : STD_LOGIC; 
  signal sysConf1_IBUF_7 : STD_LOGIC; 
  signal sysout_3_OBUF_8 : STD_LOGIC; 
  signal sysout_2_OBUF_9 : STD_LOGIC; 
  signal sysout_1_OBUF_10 : STD_LOGIC; 
  signal sysout_0_OBUF_11 : STD_LOGIC; 
  signal clk_to_driver : STD_LOGIC; 
  signal roDriver_inst_dCounterBuf_13 : STD_LOGIC; 
  signal roDriver_inst_diverOutBuf_14 : STD_LOGIC; 
  signal ro_to_counter : STD_LOGIC; 
  signal N0 : STD_LOGIC; 
  signal N1 : STD_LOGIC; 
  signal clock_inst_clkfbout_buf : STD_LOGIC; 
  signal clock_inst_clkout0 : STD_LOGIC; 
  signal clock_inst_clkfbout : STD_LOGIC; 
  signal clock_inst_clkin1 : STD_LOGIC; 
  signal counter_inst_countBuf_31_PWR_12_o_equal_1_o : STD_LOGIC; 
  signal counter_inst_Mcount_countBuf_eqn_0 : STD_LOGIC; 
  signal counter_inst_Mcount_countBuf_eqn_1 : STD_LOGIC; 
  signal counter_inst_Mcount_countBuf_eqn_2 : STD_LOGIC; 
  signal counter_inst_Mcount_countBuf_eqn_3 : STD_LOGIC; 
  signal counter_inst_Mcount_countBuf_eqn_4 : STD_LOGIC; 
  signal counter_inst_Mcount_countBuf_eqn_5 : STD_LOGIC; 
  signal counter_inst_Mcount_countBuf_eqn_6 : STD_LOGIC; 
  signal counter_inst_Mcount_countBuf_eqn_7 : STD_LOGIC; 
  signal counter_inst_Mcount_countBuf_eqn_8 : STD_LOGIC; 
  signal counter_inst_Mcount_countBuf_eqn_9 : STD_LOGIC; 
  signal counter_inst_Mcount_countBuf_eqn_10 : STD_LOGIC; 
  signal counter_inst_Mcount_countBuf_eqn_11 : STD_LOGIC; 
  signal counter_inst_Mcount_countBuf_eqn_12 : STD_LOGIC; 
  signal counter_inst_Mcount_countBuf_eqn_13 : STD_LOGIC; 
  signal counter_inst_Mcount_countBuf_eqn_14 : STD_LOGIC; 
  signal counter_inst_Mcount_countBuf_eqn_15 : STD_LOGIC; 
  signal counter_inst_Mcount_countBuf_eqn_16 : STD_LOGIC; 
  signal counter_inst_Mcount_countBuf_eqn_17 : STD_LOGIC; 
  signal counter_inst_Mcount_countBuf_eqn_18 : STD_LOGIC; 
  signal counter_inst_Mcount_countBuf_eqn_19 : STD_LOGIC; 
  signal counter_inst_Mcount_countBuf_eqn_20 : STD_LOGIC; 
  signal counter_inst_Mcount_countBuf_eqn_21 : STD_LOGIC; 
  signal counter_inst_Mcount_countBuf_eqn_22 : STD_LOGIC; 
  signal counter_inst_Mcount_countBuf_eqn_23 : STD_LOGIC; 
  signal counter_inst_Mcount_countBuf_eqn_24 : STD_LOGIC; 
  signal counter_inst_Mcount_countBuf_eqn_25 : STD_LOGIC; 
  signal counter_inst_Mcount_countBuf_eqn_26 : STD_LOGIC; 
  signal counter_inst_Mcount_countBuf_eqn_27 : STD_LOGIC; 
  signal counter_inst_Mcount_countBuf_eqn_28 : STD_LOGIC; 
  signal counter_inst_Mcount_countBuf_eqn_29 : STD_LOGIC; 
  signal counter_inst_Mcount_countBuf_eqn_30 : STD_LOGIC; 
  signal counter_inst_Mcount_countBuf_eqn_31 : STD_LOGIC; 
  signal roDriver_inst_Mcount_timeInv_eqn_14 : STD_LOGIC; 
  signal roDriver_inst_Mcount_timeInv_eqn_13 : STD_LOGIC; 
  signal roDriver_inst_Mcount_timeInv_eqn_12 : STD_LOGIC; 
  signal roDriver_inst_Mcount_timeInv_eqn_11_172 : STD_LOGIC; 
  signal roDriver_inst_Mcount_timeInv_eqn_10 : STD_LOGIC; 
  signal roDriver_inst_Mcount_timeInv_eqn_9 : STD_LOGIC; 
  signal roDriver_inst_Mcount_timeInv_eqn_8 : STD_LOGIC; 
  signal roDriver_inst_Mcount_timeInv_eqn_7 : STD_LOGIC; 
  signal roDriver_inst_Mcount_timeInv_eqn_6 : STD_LOGIC; 
  signal roDriver_inst_Mcount_timeInv_eqn_5 : STD_LOGIC; 
  signal roDriver_inst_Mcount_timeInv_eqn_4 : STD_LOGIC; 
  signal roDriver_inst_Mcount_timeInv_eqn_3 : STD_LOGIC; 
  signal roDriver_inst_Mcount_timeInv_eqn_2 : STD_LOGIC; 
  signal roDriver_inst_Mcount_timeInv_eqn_1 : STD_LOGIC; 
  signal roDriver_inst_Mcount_timeInv_eqn_0 : STD_LOGIC; 
  signal roDriver_inst_GND_41_o_GND_41_o_MUX_32_o : STD_LOGIC; 
  signal roDriver_inst_GND_41_o_GND_41_o_MUX_33_o : STD_LOGIC; 
  signal roDriver_inst_PWR_10_o_timeInv_14_equal_1_o : STD_LOGIC; 
  signal counter_inst_countBuf_31_PWR_12_o_equal_1_o_31_Q : STD_LOGIC; 
  signal counter_inst_countBuf_31_PWR_12_o_equal_1_o_31_1_215 : STD_LOGIC; 
  signal counter_inst_countBuf_31_PWR_12_o_equal_1_o_31_2_216 : STD_LOGIC; 
  signal counter_inst_countBuf_31_PWR_12_o_equal_1_o_31_3_217 : STD_LOGIC; 
  signal counter_inst_countBuf_31_PWR_12_o_equal_1_o_31_4_218 : STD_LOGIC; 
  signal counter_inst_countBuf_31_PWR_12_o_equal_1_o_31_5_219 : STD_LOGIC; 
  signal N3 : STD_LOGIC; 
  signal N5 : STD_LOGIC; 
  signal N7 : STD_LOGIC; 
  signal N9 : STD_LOGIC; 
  signal roDriver_inst_PWR_10_o_timeInv_14_equal_1_o_14_Q : STD_LOGIC; 
  signal roDriver_inst_PWR_10_o_timeInv_14_equal_1_o_14_1_225 : STD_LOGIC; 
  signal roDriver_inst_Mmux_GND_41_o_GND_41_o_MUX_32_o1 : STD_LOGIC; 
  signal roDriver_inst_Mmux_GND_41_o_GND_41_o_MUX_32_o11_227 : STD_LOGIC; 
  signal roDriver_inst_Mmux_GND_41_o_GND_41_o_MUX_32_o12_228 : STD_LOGIC; 
  signal roDriver_inst_Mmux_GND_41_o_GND_41_o_MUX_33_o1 : STD_LOGIC; 
  signal roDriver_inst_Mmux_GND_41_o_GND_41_o_MUX_33_o11_230 : STD_LOGIC; 
  signal roDriver_inst_Mmux_GND_41_o_GND_41_o_MUX_33_o12_231 : STD_LOGIC; 
  signal counter_inst_Mcount_countBuf_cy_1_rt_243 : STD_LOGIC; 
  signal counter_inst_Mcount_countBuf_cy_2_rt_244 : STD_LOGIC; 
  signal counter_inst_Mcount_countBuf_cy_3_rt_245 : STD_LOGIC; 
  signal counter_inst_Mcount_countBuf_cy_4_rt_246 : STD_LOGIC; 
  signal counter_inst_Mcount_countBuf_cy_5_rt_247 : STD_LOGIC; 
  signal counter_inst_Mcount_countBuf_cy_6_rt_248 : STD_LOGIC; 
  signal counter_inst_Mcount_countBuf_cy_7_rt_249 : STD_LOGIC; 
  signal counter_inst_Mcount_countBuf_cy_8_rt_250 : STD_LOGIC; 
  signal counter_inst_Mcount_countBuf_cy_9_rt_251 : STD_LOGIC; 
  signal counter_inst_Mcount_countBuf_cy_10_rt_252 : STD_LOGIC; 
  signal counter_inst_Mcount_countBuf_cy_11_rt_253 : STD_LOGIC; 
  signal counter_inst_Mcount_countBuf_cy_12_rt_254 : STD_LOGIC; 
  signal counter_inst_Mcount_countBuf_cy_13_rt_255 : STD_LOGIC; 
  signal counter_inst_Mcount_countBuf_cy_14_rt_256 : STD_LOGIC; 
  signal counter_inst_Mcount_countBuf_cy_15_rt_257 : STD_LOGIC; 
  signal counter_inst_Mcount_countBuf_cy_16_rt_258 : STD_LOGIC; 
  signal counter_inst_Mcount_countBuf_cy_17_rt_259 : STD_LOGIC; 
  signal counter_inst_Mcount_countBuf_cy_18_rt_260 : STD_LOGIC; 
  signal counter_inst_Mcount_countBuf_cy_19_rt_261 : STD_LOGIC; 
  signal counter_inst_Mcount_countBuf_cy_20_rt_262 : STD_LOGIC; 
  signal counter_inst_Mcount_countBuf_cy_21_rt_263 : STD_LOGIC; 
  signal counter_inst_Mcount_countBuf_cy_22_rt_264 : STD_LOGIC; 
  signal counter_inst_Mcount_countBuf_cy_23_rt_265 : STD_LOGIC; 
  signal counter_inst_Mcount_countBuf_cy_24_rt_266 : STD_LOGIC; 
  signal counter_inst_Mcount_countBuf_cy_25_rt_267 : STD_LOGIC; 
  signal counter_inst_Mcount_countBuf_cy_26_rt_268 : STD_LOGIC; 
  signal counter_inst_Mcount_countBuf_cy_27_rt_269 : STD_LOGIC; 
  signal counter_inst_Mcount_countBuf_cy_28_rt_270 : STD_LOGIC; 
  signal counter_inst_Mcount_countBuf_cy_29_rt_271 : STD_LOGIC; 
  signal counter_inst_Mcount_countBuf_cy_30_rt_272 : STD_LOGIC; 
  signal roDriver_inst_Mcount_timeInv_cy_13_rt_273 : STD_LOGIC; 
  signal roDriver_inst_Mcount_timeInv_cy_12_rt_274 : STD_LOGIC; 
  signal roDriver_inst_Mcount_timeInv_cy_11_rt_275 : STD_LOGIC; 
  signal roDriver_inst_Mcount_timeInv_cy_10_rt_276 : STD_LOGIC; 
  signal roDriver_inst_Mcount_timeInv_cy_9_rt_277 : STD_LOGIC; 
  signal roDriver_inst_Mcount_timeInv_cy_8_rt_278 : STD_LOGIC; 
  signal roDriver_inst_Mcount_timeInv_cy_7_rt_279 : STD_LOGIC; 
  signal roDriver_inst_Mcount_timeInv_cy_6_rt_280 : STD_LOGIC; 
  signal roDriver_inst_Mcount_timeInv_cy_5_rt_281 : STD_LOGIC; 
  signal roDriver_inst_Mcount_timeInv_cy_4_rt_282 : STD_LOGIC; 
  signal roDriver_inst_Mcount_timeInv_cy_3_rt_283 : STD_LOGIC; 
  signal roDriver_inst_Mcount_timeInv_cy_2_rt_284 : STD_LOGIC; 
  signal roDriver_inst_Mcount_timeInv_cy_1_rt_285 : STD_LOGIC; 
  signal counter_inst_Mcount_countBuf_xor_31_rt_286 : STD_LOGIC; 
  signal roDriver_inst_Mcount_timeInv_xor_14_rt_287 : STD_LOGIC; 
  signal NLW_clock_inst_mmcm_adv_inst_CLKOUT3_UNCONNECTED : STD_LOGIC; 
  signal NLW_clock_inst_mmcm_adv_inst_CLKOUT3B_UNCONNECTED : STD_LOGIC; 
  signal NLW_clock_inst_mmcm_adv_inst_CLKFBSTOPPED_UNCONNECTED : STD_LOGIC; 
  signal NLW_clock_inst_mmcm_adv_inst_CLKFBOUTB_UNCONNECTED : STD_LOGIC; 
  signal NLW_clock_inst_mmcm_adv_inst_CLKOUT1_UNCONNECTED : STD_LOGIC; 
  signal NLW_clock_inst_mmcm_adv_inst_CLKOUT5_UNCONNECTED : STD_LOGIC; 
  signal NLW_clock_inst_mmcm_adv_inst_DRDY_UNCONNECTED : STD_LOGIC; 
  signal NLW_clock_inst_mmcm_adv_inst_CLKOUT4_UNCONNECTED : STD_LOGIC; 
  signal NLW_clock_inst_mmcm_adv_inst_CLKOUT1B_UNCONNECTED : STD_LOGIC; 
  signal NLW_clock_inst_mmcm_adv_inst_CLKINSTOPPED_UNCONNECTED : STD_LOGIC; 
  signal NLW_clock_inst_mmcm_adv_inst_CLKOUT0B_UNCONNECTED : STD_LOGIC; 
  signal NLW_clock_inst_mmcm_adv_inst_CLKOUT2_UNCONNECTED : STD_LOGIC; 
  signal NLW_clock_inst_mmcm_adv_inst_CLKOUT2B_UNCONNECTED : STD_LOGIC; 
  signal NLW_clock_inst_mmcm_adv_inst_PSDONE_UNCONNECTED : STD_LOGIC; 
  signal NLW_clock_inst_mmcm_adv_inst_CLKOUT6_UNCONNECTED : STD_LOGIC; 
  signal NLW_clock_inst_mmcm_adv_inst_LOCKED_UNCONNECTED : STD_LOGIC; 
  signal NLW_clock_inst_mmcm_adv_inst_DO_15_UNCONNECTED : STD_LOGIC; 
  signal NLW_clock_inst_mmcm_adv_inst_DO_14_UNCONNECTED : STD_LOGIC; 
  signal NLW_clock_inst_mmcm_adv_inst_DO_13_UNCONNECTED : STD_LOGIC; 
  signal NLW_clock_inst_mmcm_adv_inst_DO_12_UNCONNECTED : STD_LOGIC; 
  signal NLW_clock_inst_mmcm_adv_inst_DO_11_UNCONNECTED : STD_LOGIC; 
  signal NLW_clock_inst_mmcm_adv_inst_DO_10_UNCONNECTED : STD_LOGIC; 
  signal NLW_clock_inst_mmcm_adv_inst_DO_9_UNCONNECTED : STD_LOGIC; 
  signal NLW_clock_inst_mmcm_adv_inst_DO_8_UNCONNECTED : STD_LOGIC; 
  signal NLW_clock_inst_mmcm_adv_inst_DO_7_UNCONNECTED : STD_LOGIC; 
  signal NLW_clock_inst_mmcm_adv_inst_DO_6_UNCONNECTED : STD_LOGIC; 
  signal NLW_clock_inst_mmcm_adv_inst_DO_5_UNCONNECTED : STD_LOGIC; 
  signal NLW_clock_inst_mmcm_adv_inst_DO_4_UNCONNECTED : STD_LOGIC; 
  signal NLW_clock_inst_mmcm_adv_inst_DO_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_clock_inst_mmcm_adv_inst_DO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_clock_inst_mmcm_adv_inst_DO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_clock_inst_mmcm_adv_inst_DO_0_UNCONNECTED : STD_LOGIC; 
  signal counter_inst_countBuf : STD_LOGIC_VECTOR ( 31 downto 0 ); 
  signal Result : STD_LOGIC_VECTOR ( 31 downto 0 ); 
  signal counter_inst_Mcount_countBuf_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal counter_inst_Mcount_countBuf_cy : STD_LOGIC_VECTOR ( 30 downto 0 ); 
  signal roDriver_inst_Mcount_timeInv_cy : STD_LOGIC_VECTOR ( 13 downto 0 ); 
  signal roDriver_inst_Mcount_timeInv_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal roDriver_inst_Result : STD_LOGIC_VECTOR ( 14 downto 0 ); 
  signal roDriver_inst_timeInv : STD_LOGIC_VECTOR ( 14 downto 0 ); 
begin
  XST_GND : GND
    port map (
      G => N0
    );
  XST_VCC : VCC
    port map (
      P => N1
    );
  counter_inst_countBuf_0 : FDCE
    port map (
      C => ro_to_counter,
      CE => roDriver_inst_dCounterBuf_13,
      CLR => sysRst_IBUF_5,
      D => counter_inst_Mcount_countBuf_eqn_0,
      Q => counter_inst_countBuf(0)
    );
  counter_inst_countBuf_1 : FDCE
    port map (
      C => ro_to_counter,
      CE => roDriver_inst_dCounterBuf_13,
      CLR => sysRst_IBUF_5,
      D => counter_inst_Mcount_countBuf_eqn_1,
      Q => counter_inst_countBuf(1)
    );
  counter_inst_countBuf_2 : FDCE
    port map (
      C => ro_to_counter,
      CE => roDriver_inst_dCounterBuf_13,
      CLR => sysRst_IBUF_5,
      D => counter_inst_Mcount_countBuf_eqn_2,
      Q => counter_inst_countBuf(2)
    );
  counter_inst_countBuf_3 : FDCE
    port map (
      C => ro_to_counter,
      CE => roDriver_inst_dCounterBuf_13,
      CLR => sysRst_IBUF_5,
      D => counter_inst_Mcount_countBuf_eqn_3,
      Q => counter_inst_countBuf(3)
    );
  counter_inst_countBuf_4 : FDCE
    port map (
      C => ro_to_counter,
      CE => roDriver_inst_dCounterBuf_13,
      CLR => sysRst_IBUF_5,
      D => counter_inst_Mcount_countBuf_eqn_4,
      Q => counter_inst_countBuf(4)
    );
  counter_inst_countBuf_5 : FDCE
    port map (
      C => ro_to_counter,
      CE => roDriver_inst_dCounterBuf_13,
      CLR => sysRst_IBUF_5,
      D => counter_inst_Mcount_countBuf_eqn_5,
      Q => counter_inst_countBuf(5)
    );
  counter_inst_countBuf_6 : FDCE
    port map (
      C => ro_to_counter,
      CE => roDriver_inst_dCounterBuf_13,
      CLR => sysRst_IBUF_5,
      D => counter_inst_Mcount_countBuf_eqn_6,
      Q => counter_inst_countBuf(6)
    );
  counter_inst_countBuf_7 : FDCE
    port map (
      C => ro_to_counter,
      CE => roDriver_inst_dCounterBuf_13,
      CLR => sysRst_IBUF_5,
      D => counter_inst_Mcount_countBuf_eqn_7,
      Q => counter_inst_countBuf(7)
    );
  counter_inst_countBuf_8 : FDCE
    port map (
      C => ro_to_counter,
      CE => roDriver_inst_dCounterBuf_13,
      CLR => sysRst_IBUF_5,
      D => counter_inst_Mcount_countBuf_eqn_8,
      Q => counter_inst_countBuf(8)
    );
  counter_inst_countBuf_9 : FDCE
    port map (
      C => ro_to_counter,
      CE => roDriver_inst_dCounterBuf_13,
      CLR => sysRst_IBUF_5,
      D => counter_inst_Mcount_countBuf_eqn_9,
      Q => counter_inst_countBuf(9)
    );
  counter_inst_countBuf_10 : FDCE
    port map (
      C => ro_to_counter,
      CE => roDriver_inst_dCounterBuf_13,
      CLR => sysRst_IBUF_5,
      D => counter_inst_Mcount_countBuf_eqn_10,
      Q => counter_inst_countBuf(10)
    );
  counter_inst_countBuf_11 : FDCE
    port map (
      C => ro_to_counter,
      CE => roDriver_inst_dCounterBuf_13,
      CLR => sysRst_IBUF_5,
      D => counter_inst_Mcount_countBuf_eqn_11,
      Q => counter_inst_countBuf(11)
    );
  counter_inst_countBuf_12 : FDCE
    port map (
      C => ro_to_counter,
      CE => roDriver_inst_dCounterBuf_13,
      CLR => sysRst_IBUF_5,
      D => counter_inst_Mcount_countBuf_eqn_12,
      Q => counter_inst_countBuf(12)
    );
  counter_inst_countBuf_13 : FDCE
    port map (
      C => ro_to_counter,
      CE => roDriver_inst_dCounterBuf_13,
      CLR => sysRst_IBUF_5,
      D => counter_inst_Mcount_countBuf_eqn_13,
      Q => counter_inst_countBuf(13)
    );
  counter_inst_countBuf_14 : FDCE
    port map (
      C => ro_to_counter,
      CE => roDriver_inst_dCounterBuf_13,
      CLR => sysRst_IBUF_5,
      D => counter_inst_Mcount_countBuf_eqn_14,
      Q => counter_inst_countBuf(14)
    );
  counter_inst_countBuf_15 : FDCE
    port map (
      C => ro_to_counter,
      CE => roDriver_inst_dCounterBuf_13,
      CLR => sysRst_IBUF_5,
      D => counter_inst_Mcount_countBuf_eqn_15,
      Q => counter_inst_countBuf(15)
    );
  counter_inst_countBuf_16 : FDCE
    port map (
      C => ro_to_counter,
      CE => roDriver_inst_dCounterBuf_13,
      CLR => sysRst_IBUF_5,
      D => counter_inst_Mcount_countBuf_eqn_16,
      Q => counter_inst_countBuf(16)
    );
  counter_inst_countBuf_17 : FDCE
    port map (
      C => ro_to_counter,
      CE => roDriver_inst_dCounterBuf_13,
      CLR => sysRst_IBUF_5,
      D => counter_inst_Mcount_countBuf_eqn_17,
      Q => counter_inst_countBuf(17)
    );
  counter_inst_countBuf_18 : FDCE
    port map (
      C => ro_to_counter,
      CE => roDriver_inst_dCounterBuf_13,
      CLR => sysRst_IBUF_5,
      D => counter_inst_Mcount_countBuf_eqn_18,
      Q => counter_inst_countBuf(18)
    );
  counter_inst_countBuf_19 : FDCE
    port map (
      C => ro_to_counter,
      CE => roDriver_inst_dCounterBuf_13,
      CLR => sysRst_IBUF_5,
      D => counter_inst_Mcount_countBuf_eqn_19,
      Q => counter_inst_countBuf(19)
    );
  counter_inst_countBuf_20 : FDCE
    port map (
      C => ro_to_counter,
      CE => roDriver_inst_dCounterBuf_13,
      CLR => sysRst_IBUF_5,
      D => counter_inst_Mcount_countBuf_eqn_20,
      Q => counter_inst_countBuf(20)
    );
  counter_inst_countBuf_21 : FDCE
    port map (
      C => ro_to_counter,
      CE => roDriver_inst_dCounterBuf_13,
      CLR => sysRst_IBUF_5,
      D => counter_inst_Mcount_countBuf_eqn_21,
      Q => counter_inst_countBuf(21)
    );
  counter_inst_countBuf_22 : FDCE
    port map (
      C => ro_to_counter,
      CE => roDriver_inst_dCounterBuf_13,
      CLR => sysRst_IBUF_5,
      D => counter_inst_Mcount_countBuf_eqn_22,
      Q => counter_inst_countBuf(22)
    );
  counter_inst_countBuf_23 : FDCE
    port map (
      C => ro_to_counter,
      CE => roDriver_inst_dCounterBuf_13,
      CLR => sysRst_IBUF_5,
      D => counter_inst_Mcount_countBuf_eqn_23,
      Q => counter_inst_countBuf(23)
    );
  counter_inst_countBuf_24 : FDCE
    port map (
      C => ro_to_counter,
      CE => roDriver_inst_dCounterBuf_13,
      CLR => sysRst_IBUF_5,
      D => counter_inst_Mcount_countBuf_eqn_24,
      Q => counter_inst_countBuf(24)
    );
  counter_inst_countBuf_25 : FDCE
    port map (
      C => ro_to_counter,
      CE => roDriver_inst_dCounterBuf_13,
      CLR => sysRst_IBUF_5,
      D => counter_inst_Mcount_countBuf_eqn_25,
      Q => counter_inst_countBuf(25)
    );
  counter_inst_countBuf_26 : FDCE
    port map (
      C => ro_to_counter,
      CE => roDriver_inst_dCounterBuf_13,
      CLR => sysRst_IBUF_5,
      D => counter_inst_Mcount_countBuf_eqn_26,
      Q => counter_inst_countBuf(26)
    );
  counter_inst_countBuf_27 : FDCE
    port map (
      C => ro_to_counter,
      CE => roDriver_inst_dCounterBuf_13,
      CLR => sysRst_IBUF_5,
      D => counter_inst_Mcount_countBuf_eqn_27,
      Q => counter_inst_countBuf(27)
    );
  counter_inst_countBuf_28 : FDCE
    port map (
      C => ro_to_counter,
      CE => roDriver_inst_dCounterBuf_13,
      CLR => sysRst_IBUF_5,
      D => counter_inst_Mcount_countBuf_eqn_28,
      Q => counter_inst_countBuf(28)
    );
  counter_inst_countBuf_29 : FDCE
    port map (
      C => ro_to_counter,
      CE => roDriver_inst_dCounterBuf_13,
      CLR => sysRst_IBUF_5,
      D => counter_inst_Mcount_countBuf_eqn_29,
      Q => counter_inst_countBuf(29)
    );
  counter_inst_countBuf_30 : FDCE
    port map (
      C => ro_to_counter,
      CE => roDriver_inst_dCounterBuf_13,
      CLR => sysRst_IBUF_5,
      D => counter_inst_Mcount_countBuf_eqn_30,
      Q => counter_inst_countBuf(30)
    );
  counter_inst_countBuf_31 : FDCE
    port map (
      C => ro_to_counter,
      CE => roDriver_inst_dCounterBuf_13,
      CLR => sysRst_IBUF_5,
      D => counter_inst_Mcount_countBuf_eqn_31,
      Q => counter_inst_countBuf(31)
    );
  counter_inst_Mcount_countBuf_cy_0_Q : MUXCY
    port map (
      CI => N0,
      DI => N1,
      S => counter_inst_Mcount_countBuf_lut(0),
      O => counter_inst_Mcount_countBuf_cy(0)
    );
  counter_inst_Mcount_countBuf_xor_0_Q : XORCY
    port map (
      CI => N0,
      LI => counter_inst_Mcount_countBuf_lut(0),
      O => Result(0)
    );
  counter_inst_Mcount_countBuf_cy_1_Q : MUXCY
    port map (
      CI => counter_inst_Mcount_countBuf_cy(0),
      DI => N0,
      S => counter_inst_Mcount_countBuf_cy_1_rt_243,
      O => counter_inst_Mcount_countBuf_cy(1)
    );
  counter_inst_Mcount_countBuf_xor_1_Q : XORCY
    port map (
      CI => counter_inst_Mcount_countBuf_cy(0),
      LI => counter_inst_Mcount_countBuf_cy_1_rt_243,
      O => Result(1)
    );
  counter_inst_Mcount_countBuf_cy_2_Q : MUXCY
    port map (
      CI => counter_inst_Mcount_countBuf_cy(1),
      DI => N0,
      S => counter_inst_Mcount_countBuf_cy_2_rt_244,
      O => counter_inst_Mcount_countBuf_cy(2)
    );
  counter_inst_Mcount_countBuf_xor_2_Q : XORCY
    port map (
      CI => counter_inst_Mcount_countBuf_cy(1),
      LI => counter_inst_Mcount_countBuf_cy_2_rt_244,
      O => Result(2)
    );
  counter_inst_Mcount_countBuf_cy_3_Q : MUXCY
    port map (
      CI => counter_inst_Mcount_countBuf_cy(2),
      DI => N0,
      S => counter_inst_Mcount_countBuf_cy_3_rt_245,
      O => counter_inst_Mcount_countBuf_cy(3)
    );
  counter_inst_Mcount_countBuf_xor_3_Q : XORCY
    port map (
      CI => counter_inst_Mcount_countBuf_cy(2),
      LI => counter_inst_Mcount_countBuf_cy_3_rt_245,
      O => Result(3)
    );
  counter_inst_Mcount_countBuf_cy_4_Q : MUXCY
    port map (
      CI => counter_inst_Mcount_countBuf_cy(3),
      DI => N0,
      S => counter_inst_Mcount_countBuf_cy_4_rt_246,
      O => counter_inst_Mcount_countBuf_cy(4)
    );
  counter_inst_Mcount_countBuf_xor_4_Q : XORCY
    port map (
      CI => counter_inst_Mcount_countBuf_cy(3),
      LI => counter_inst_Mcount_countBuf_cy_4_rt_246,
      O => Result(4)
    );
  counter_inst_Mcount_countBuf_cy_5_Q : MUXCY
    port map (
      CI => counter_inst_Mcount_countBuf_cy(4),
      DI => N0,
      S => counter_inst_Mcount_countBuf_cy_5_rt_247,
      O => counter_inst_Mcount_countBuf_cy(5)
    );
  counter_inst_Mcount_countBuf_xor_5_Q : XORCY
    port map (
      CI => counter_inst_Mcount_countBuf_cy(4),
      LI => counter_inst_Mcount_countBuf_cy_5_rt_247,
      O => Result(5)
    );
  counter_inst_Mcount_countBuf_cy_6_Q : MUXCY
    port map (
      CI => counter_inst_Mcount_countBuf_cy(5),
      DI => N0,
      S => counter_inst_Mcount_countBuf_cy_6_rt_248,
      O => counter_inst_Mcount_countBuf_cy(6)
    );
  counter_inst_Mcount_countBuf_xor_6_Q : XORCY
    port map (
      CI => counter_inst_Mcount_countBuf_cy(5),
      LI => counter_inst_Mcount_countBuf_cy_6_rt_248,
      O => Result(6)
    );
  counter_inst_Mcount_countBuf_cy_7_Q : MUXCY
    port map (
      CI => counter_inst_Mcount_countBuf_cy(6),
      DI => N0,
      S => counter_inst_Mcount_countBuf_cy_7_rt_249,
      O => counter_inst_Mcount_countBuf_cy(7)
    );
  counter_inst_Mcount_countBuf_xor_7_Q : XORCY
    port map (
      CI => counter_inst_Mcount_countBuf_cy(6),
      LI => counter_inst_Mcount_countBuf_cy_7_rt_249,
      O => Result(7)
    );
  counter_inst_Mcount_countBuf_cy_8_Q : MUXCY
    port map (
      CI => counter_inst_Mcount_countBuf_cy(7),
      DI => N0,
      S => counter_inst_Mcount_countBuf_cy_8_rt_250,
      O => counter_inst_Mcount_countBuf_cy(8)
    );
  counter_inst_Mcount_countBuf_xor_8_Q : XORCY
    port map (
      CI => counter_inst_Mcount_countBuf_cy(7),
      LI => counter_inst_Mcount_countBuf_cy_8_rt_250,
      O => Result(8)
    );
  counter_inst_Mcount_countBuf_cy_9_Q : MUXCY
    port map (
      CI => counter_inst_Mcount_countBuf_cy(8),
      DI => N0,
      S => counter_inst_Mcount_countBuf_cy_9_rt_251,
      O => counter_inst_Mcount_countBuf_cy(9)
    );
  counter_inst_Mcount_countBuf_xor_9_Q : XORCY
    port map (
      CI => counter_inst_Mcount_countBuf_cy(8),
      LI => counter_inst_Mcount_countBuf_cy_9_rt_251,
      O => Result(9)
    );
  counter_inst_Mcount_countBuf_cy_10_Q : MUXCY
    port map (
      CI => counter_inst_Mcount_countBuf_cy(9),
      DI => N0,
      S => counter_inst_Mcount_countBuf_cy_10_rt_252,
      O => counter_inst_Mcount_countBuf_cy(10)
    );
  counter_inst_Mcount_countBuf_xor_10_Q : XORCY
    port map (
      CI => counter_inst_Mcount_countBuf_cy(9),
      LI => counter_inst_Mcount_countBuf_cy_10_rt_252,
      O => Result(10)
    );
  counter_inst_Mcount_countBuf_cy_11_Q : MUXCY
    port map (
      CI => counter_inst_Mcount_countBuf_cy(10),
      DI => N0,
      S => counter_inst_Mcount_countBuf_cy_11_rt_253,
      O => counter_inst_Mcount_countBuf_cy(11)
    );
  counter_inst_Mcount_countBuf_xor_11_Q : XORCY
    port map (
      CI => counter_inst_Mcount_countBuf_cy(10),
      LI => counter_inst_Mcount_countBuf_cy_11_rt_253,
      O => Result(11)
    );
  counter_inst_Mcount_countBuf_cy_12_Q : MUXCY
    port map (
      CI => counter_inst_Mcount_countBuf_cy(11),
      DI => N0,
      S => counter_inst_Mcount_countBuf_cy_12_rt_254,
      O => counter_inst_Mcount_countBuf_cy(12)
    );
  counter_inst_Mcount_countBuf_xor_12_Q : XORCY
    port map (
      CI => counter_inst_Mcount_countBuf_cy(11),
      LI => counter_inst_Mcount_countBuf_cy_12_rt_254,
      O => Result(12)
    );
  counter_inst_Mcount_countBuf_cy_13_Q : MUXCY
    port map (
      CI => counter_inst_Mcount_countBuf_cy(12),
      DI => N0,
      S => counter_inst_Mcount_countBuf_cy_13_rt_255,
      O => counter_inst_Mcount_countBuf_cy(13)
    );
  counter_inst_Mcount_countBuf_xor_13_Q : XORCY
    port map (
      CI => counter_inst_Mcount_countBuf_cy(12),
      LI => counter_inst_Mcount_countBuf_cy_13_rt_255,
      O => Result(13)
    );
  counter_inst_Mcount_countBuf_cy_14_Q : MUXCY
    port map (
      CI => counter_inst_Mcount_countBuf_cy(13),
      DI => N0,
      S => counter_inst_Mcount_countBuf_cy_14_rt_256,
      O => counter_inst_Mcount_countBuf_cy(14)
    );
  counter_inst_Mcount_countBuf_xor_14_Q : XORCY
    port map (
      CI => counter_inst_Mcount_countBuf_cy(13),
      LI => counter_inst_Mcount_countBuf_cy_14_rt_256,
      O => Result(14)
    );
  counter_inst_Mcount_countBuf_cy_15_Q : MUXCY
    port map (
      CI => counter_inst_Mcount_countBuf_cy(14),
      DI => N0,
      S => counter_inst_Mcount_countBuf_cy_15_rt_257,
      O => counter_inst_Mcount_countBuf_cy(15)
    );
  counter_inst_Mcount_countBuf_xor_15_Q : XORCY
    port map (
      CI => counter_inst_Mcount_countBuf_cy(14),
      LI => counter_inst_Mcount_countBuf_cy_15_rt_257,
      O => Result(15)
    );
  counter_inst_Mcount_countBuf_cy_16_Q : MUXCY
    port map (
      CI => counter_inst_Mcount_countBuf_cy(15),
      DI => N0,
      S => counter_inst_Mcount_countBuf_cy_16_rt_258,
      O => counter_inst_Mcount_countBuf_cy(16)
    );
  counter_inst_Mcount_countBuf_xor_16_Q : XORCY
    port map (
      CI => counter_inst_Mcount_countBuf_cy(15),
      LI => counter_inst_Mcount_countBuf_cy_16_rt_258,
      O => Result(16)
    );
  counter_inst_Mcount_countBuf_cy_17_Q : MUXCY
    port map (
      CI => counter_inst_Mcount_countBuf_cy(16),
      DI => N0,
      S => counter_inst_Mcount_countBuf_cy_17_rt_259,
      O => counter_inst_Mcount_countBuf_cy(17)
    );
  counter_inst_Mcount_countBuf_xor_17_Q : XORCY
    port map (
      CI => counter_inst_Mcount_countBuf_cy(16),
      LI => counter_inst_Mcount_countBuf_cy_17_rt_259,
      O => Result(17)
    );
  counter_inst_Mcount_countBuf_cy_18_Q : MUXCY
    port map (
      CI => counter_inst_Mcount_countBuf_cy(17),
      DI => N0,
      S => counter_inst_Mcount_countBuf_cy_18_rt_260,
      O => counter_inst_Mcount_countBuf_cy(18)
    );
  counter_inst_Mcount_countBuf_xor_18_Q : XORCY
    port map (
      CI => counter_inst_Mcount_countBuf_cy(17),
      LI => counter_inst_Mcount_countBuf_cy_18_rt_260,
      O => Result(18)
    );
  counter_inst_Mcount_countBuf_cy_19_Q : MUXCY
    port map (
      CI => counter_inst_Mcount_countBuf_cy(18),
      DI => N0,
      S => counter_inst_Mcount_countBuf_cy_19_rt_261,
      O => counter_inst_Mcount_countBuf_cy(19)
    );
  counter_inst_Mcount_countBuf_xor_19_Q : XORCY
    port map (
      CI => counter_inst_Mcount_countBuf_cy(18),
      LI => counter_inst_Mcount_countBuf_cy_19_rt_261,
      O => Result(19)
    );
  counter_inst_Mcount_countBuf_cy_20_Q : MUXCY
    port map (
      CI => counter_inst_Mcount_countBuf_cy(19),
      DI => N0,
      S => counter_inst_Mcount_countBuf_cy_20_rt_262,
      O => counter_inst_Mcount_countBuf_cy(20)
    );
  counter_inst_Mcount_countBuf_xor_20_Q : XORCY
    port map (
      CI => counter_inst_Mcount_countBuf_cy(19),
      LI => counter_inst_Mcount_countBuf_cy_20_rt_262,
      O => Result(20)
    );
  counter_inst_Mcount_countBuf_cy_21_Q : MUXCY
    port map (
      CI => counter_inst_Mcount_countBuf_cy(20),
      DI => N0,
      S => counter_inst_Mcount_countBuf_cy_21_rt_263,
      O => counter_inst_Mcount_countBuf_cy(21)
    );
  counter_inst_Mcount_countBuf_xor_21_Q : XORCY
    port map (
      CI => counter_inst_Mcount_countBuf_cy(20),
      LI => counter_inst_Mcount_countBuf_cy_21_rt_263,
      O => Result(21)
    );
  counter_inst_Mcount_countBuf_cy_22_Q : MUXCY
    port map (
      CI => counter_inst_Mcount_countBuf_cy(21),
      DI => N0,
      S => counter_inst_Mcount_countBuf_cy_22_rt_264,
      O => counter_inst_Mcount_countBuf_cy(22)
    );
  counter_inst_Mcount_countBuf_xor_22_Q : XORCY
    port map (
      CI => counter_inst_Mcount_countBuf_cy(21),
      LI => counter_inst_Mcount_countBuf_cy_22_rt_264,
      O => Result(22)
    );
  counter_inst_Mcount_countBuf_cy_23_Q : MUXCY
    port map (
      CI => counter_inst_Mcount_countBuf_cy(22),
      DI => N0,
      S => counter_inst_Mcount_countBuf_cy_23_rt_265,
      O => counter_inst_Mcount_countBuf_cy(23)
    );
  counter_inst_Mcount_countBuf_xor_23_Q : XORCY
    port map (
      CI => counter_inst_Mcount_countBuf_cy(22),
      LI => counter_inst_Mcount_countBuf_cy_23_rt_265,
      O => Result(23)
    );
  counter_inst_Mcount_countBuf_cy_24_Q : MUXCY
    port map (
      CI => counter_inst_Mcount_countBuf_cy(23),
      DI => N0,
      S => counter_inst_Mcount_countBuf_cy_24_rt_266,
      O => counter_inst_Mcount_countBuf_cy(24)
    );
  counter_inst_Mcount_countBuf_xor_24_Q : XORCY
    port map (
      CI => counter_inst_Mcount_countBuf_cy(23),
      LI => counter_inst_Mcount_countBuf_cy_24_rt_266,
      O => Result(24)
    );
  counter_inst_Mcount_countBuf_cy_25_Q : MUXCY
    port map (
      CI => counter_inst_Mcount_countBuf_cy(24),
      DI => N0,
      S => counter_inst_Mcount_countBuf_cy_25_rt_267,
      O => counter_inst_Mcount_countBuf_cy(25)
    );
  counter_inst_Mcount_countBuf_xor_25_Q : XORCY
    port map (
      CI => counter_inst_Mcount_countBuf_cy(24),
      LI => counter_inst_Mcount_countBuf_cy_25_rt_267,
      O => Result(25)
    );
  counter_inst_Mcount_countBuf_cy_26_Q : MUXCY
    port map (
      CI => counter_inst_Mcount_countBuf_cy(25),
      DI => N0,
      S => counter_inst_Mcount_countBuf_cy_26_rt_268,
      O => counter_inst_Mcount_countBuf_cy(26)
    );
  counter_inst_Mcount_countBuf_xor_26_Q : XORCY
    port map (
      CI => counter_inst_Mcount_countBuf_cy(25),
      LI => counter_inst_Mcount_countBuf_cy_26_rt_268,
      O => Result(26)
    );
  counter_inst_Mcount_countBuf_cy_27_Q : MUXCY
    port map (
      CI => counter_inst_Mcount_countBuf_cy(26),
      DI => N0,
      S => counter_inst_Mcount_countBuf_cy_27_rt_269,
      O => counter_inst_Mcount_countBuf_cy(27)
    );
  counter_inst_Mcount_countBuf_xor_27_Q : XORCY
    port map (
      CI => counter_inst_Mcount_countBuf_cy(26),
      LI => counter_inst_Mcount_countBuf_cy_27_rt_269,
      O => Result(27)
    );
  counter_inst_Mcount_countBuf_cy_28_Q : MUXCY
    port map (
      CI => counter_inst_Mcount_countBuf_cy(27),
      DI => N0,
      S => counter_inst_Mcount_countBuf_cy_28_rt_270,
      O => counter_inst_Mcount_countBuf_cy(28)
    );
  counter_inst_Mcount_countBuf_xor_28_Q : XORCY
    port map (
      CI => counter_inst_Mcount_countBuf_cy(27),
      LI => counter_inst_Mcount_countBuf_cy_28_rt_270,
      O => Result(28)
    );
  counter_inst_Mcount_countBuf_cy_29_Q : MUXCY
    port map (
      CI => counter_inst_Mcount_countBuf_cy(28),
      DI => N0,
      S => counter_inst_Mcount_countBuf_cy_29_rt_271,
      O => counter_inst_Mcount_countBuf_cy(29)
    );
  counter_inst_Mcount_countBuf_xor_29_Q : XORCY
    port map (
      CI => counter_inst_Mcount_countBuf_cy(28),
      LI => counter_inst_Mcount_countBuf_cy_29_rt_271,
      O => Result(29)
    );
  counter_inst_Mcount_countBuf_cy_30_Q : MUXCY
    port map (
      CI => counter_inst_Mcount_countBuf_cy(29),
      DI => N0,
      S => counter_inst_Mcount_countBuf_cy_30_rt_272,
      O => counter_inst_Mcount_countBuf_cy(30)
    );
  counter_inst_Mcount_countBuf_xor_30_Q : XORCY
    port map (
      CI => counter_inst_Mcount_countBuf_cy(29),
      LI => counter_inst_Mcount_countBuf_cy_30_rt_272,
      O => Result(30)
    );
  counter_inst_Mcount_countBuf_xor_31_Q : XORCY
    port map (
      CI => counter_inst_Mcount_countBuf_cy(30),
      LI => counter_inst_Mcount_countBuf_xor_31_rt_286,
      O => Result(31)
    );
  clock_inst_clkout1_buf : BUFG
    port map (
      O => clk_to_driver,
      I => clock_inst_clkout0
    );
  clock_inst_clkf_buf : BUFG
    port map (
      O => clock_inst_clkfbout_buf,
      I => clock_inst_clkfbout
    );
  clock_inst_mmcm_adv_inst : MMCME2_ADV
    generic map(
      BANDWIDTH => "OPTIMIZED",
      CLKFBOUT_MULT_F => 39.000000,
      CLKFBOUT_PHASE => 0.000000,
      CLKFBOUT_USE_FINE_PS => FALSE,
      CLKIN1_PERIOD => 10.000000,
      CLKIN2_PERIOD => 0.000000,
      CLKOUT0_DIVIDE_F => 78.000000,
      CLKOUT0_DUTY_CYCLE => 0.500000,
      CLKOUT0_PHASE => 0.000000,
      CLKOUT0_USE_FINE_PS => FALSE,
      CLKOUT1_DIVIDE => 1,
      CLKOUT1_DUTY_CYCLE => 0.500000,
      CLKOUT1_PHASE => 0.000000,
      CLKOUT1_USE_FINE_PS => FALSE,
      CLKOUT2_DIVIDE => 1,
      CLKOUT2_DUTY_CYCLE => 0.500000,
      CLKOUT2_PHASE => 0.000000,
      CLKOUT2_USE_FINE_PS => FALSE,
      CLKOUT3_DIVIDE => 1,
      CLKOUT3_DUTY_CYCLE => 0.500000,
      CLKOUT3_PHASE => 0.000000,
      CLKOUT3_USE_FINE_PS => FALSE,
      CLKOUT4_CASCADE => FALSE,
      CLKOUT4_DIVIDE => 1,
      CLKOUT4_DUTY_CYCLE => 0.500000,
      CLKOUT4_PHASE => 0.000000,
      CLKOUT4_USE_FINE_PS => FALSE,
      CLKOUT5_DIVIDE => 1,
      CLKOUT5_DUTY_CYCLE => 0.500000,
      CLKOUT5_PHASE => 0.000000,
      CLKOUT5_USE_FINE_PS => FALSE,
      CLKOUT6_DIVIDE => 1,
      CLKOUT6_DUTY_CYCLE => 0.500000,
      CLKOUT6_PHASE => 0.000000,
      CLKOUT6_USE_FINE_PS => FALSE,
      COMPENSATION => "ZHOLD",
      DIVCLK_DIVIDE => 5,
      REF_JITTER1 => 0.010000,
      REF_JITTER2 => 0.000000,
      SS_EN => "FALSE",
      SS_MODE => "CENTER_HIGH",
      SS_MOD_PERIOD => 10000,
      STARTUP_WAIT => FALSE
    )
    port map (
      CLKOUT3 => NLW_clock_inst_mmcm_adv_inst_CLKOUT3_UNCONNECTED,
      CLKFBIN => clock_inst_clkfbout_buf,
      PSCLK => N0,
      CLKOUT3B => NLW_clock_inst_mmcm_adv_inst_CLKOUT3B_UNCONNECTED,
      PWRDWN => N0,
      DCLK => N0,
      CLKFBOUT => clock_inst_clkfbout,
      CLKFBSTOPPED => NLW_clock_inst_mmcm_adv_inst_CLKFBSTOPPED_UNCONNECTED,
      CLKFBOUTB => NLW_clock_inst_mmcm_adv_inst_CLKFBOUTB_UNCONNECTED,
      CLKOUT1 => NLW_clock_inst_mmcm_adv_inst_CLKOUT1_UNCONNECTED,
      DEN => N0,
      CLKOUT5 => NLW_clock_inst_mmcm_adv_inst_CLKOUT5_UNCONNECTED,
      CLKINSEL => N1,
      CLKIN2 => N0,
      DRDY => NLW_clock_inst_mmcm_adv_inst_DRDY_UNCONNECTED,
      RST => N0,
      PSINCDEC => N0,
      DWE => N0,
      PSEN => N0,
      CLKOUT0 => clock_inst_clkout0,
      CLKOUT4 => NLW_clock_inst_mmcm_adv_inst_CLKOUT4_UNCONNECTED,
      CLKOUT1B => NLW_clock_inst_mmcm_adv_inst_CLKOUT1B_UNCONNECTED,
      CLKINSTOPPED => NLW_clock_inst_mmcm_adv_inst_CLKINSTOPPED_UNCONNECTED,
      CLKOUT0B => NLW_clock_inst_mmcm_adv_inst_CLKOUT0B_UNCONNECTED,
      CLKIN1 => clock_inst_clkin1,
      CLKOUT2 => NLW_clock_inst_mmcm_adv_inst_CLKOUT2_UNCONNECTED,
      CLKOUT2B => NLW_clock_inst_mmcm_adv_inst_CLKOUT2B_UNCONNECTED,
      PSDONE => NLW_clock_inst_mmcm_adv_inst_PSDONE_UNCONNECTED,
      CLKOUT6 => NLW_clock_inst_mmcm_adv_inst_CLKOUT6_UNCONNECTED,
      LOCKED => NLW_clock_inst_mmcm_adv_inst_LOCKED_UNCONNECTED,
      DI(15) => N0,
      DI(14) => N0,
      DI(13) => N0,
      DI(12) => N0,
      DI(11) => N0,
      DI(10) => N0,
      DI(9) => N0,
      DI(8) => N0,
      DI(7) => N0,
      DI(6) => N0,
      DI(5) => N0,
      DI(4) => N0,
      DI(3) => N0,
      DI(2) => N0,
      DI(1) => N0,
      DI(0) => N0,
      DO(15) => NLW_clock_inst_mmcm_adv_inst_DO_15_UNCONNECTED,
      DO(14) => NLW_clock_inst_mmcm_adv_inst_DO_14_UNCONNECTED,
      DO(13) => NLW_clock_inst_mmcm_adv_inst_DO_13_UNCONNECTED,
      DO(12) => NLW_clock_inst_mmcm_adv_inst_DO_12_UNCONNECTED,
      DO(11) => NLW_clock_inst_mmcm_adv_inst_DO_11_UNCONNECTED,
      DO(10) => NLW_clock_inst_mmcm_adv_inst_DO_10_UNCONNECTED,
      DO(9) => NLW_clock_inst_mmcm_adv_inst_DO_9_UNCONNECTED,
      DO(8) => NLW_clock_inst_mmcm_adv_inst_DO_8_UNCONNECTED,
      DO(7) => NLW_clock_inst_mmcm_adv_inst_DO_7_UNCONNECTED,
      DO(6) => NLW_clock_inst_mmcm_adv_inst_DO_6_UNCONNECTED,
      DO(5) => NLW_clock_inst_mmcm_adv_inst_DO_5_UNCONNECTED,
      DO(4) => NLW_clock_inst_mmcm_adv_inst_DO_4_UNCONNECTED,
      DO(3) => NLW_clock_inst_mmcm_adv_inst_DO_3_UNCONNECTED,
      DO(2) => NLW_clock_inst_mmcm_adv_inst_DO_2_UNCONNECTED,
      DO(1) => NLW_clock_inst_mmcm_adv_inst_DO_1_UNCONNECTED,
      DO(0) => NLW_clock_inst_mmcm_adv_inst_DO_0_UNCONNECTED,
      DADDR(6) => N0,
      DADDR(5) => N0,
      DADDR(4) => N0,
      DADDR(3) => N0,
      DADDR(2) => N0,
      DADDR(1) => N0,
      DADDR(0) => N0
    );
  clock_inst_clkin1_buf : IBUFG
    generic map(
      CAPACITANCE => "DONT_CARE",
      IBUF_DELAY_VALUE => "0",
      IBUF_LOW_PWR => TRUE,
      IOSTANDARD => "DEFAULT"
    )
    port map (
      I => sysClock,
      O => clock_inst_clkin1
    );
  ro_module_inst_roModule_inst : HM_ro
    port map (
      HM_conf0 => sysConf0_IBUF_6,
      HM_conf1 => sysConf1_IBUF_7,
      HM_ena => roDriver_inst_diverOutBuf_14,
      HM_out => ro_to_counter
    );
  roDriver_inst_Mcount_timeInv_xor_14_Q : XORCY
    port map (
      CI => roDriver_inst_Mcount_timeInv_cy(13),
      LI => roDriver_inst_Mcount_timeInv_xor_14_rt_287,
      O => roDriver_inst_Result(14)
    );
  roDriver_inst_Mcount_timeInv_xor_13_Q : XORCY
    port map (
      CI => roDriver_inst_Mcount_timeInv_cy(12),
      LI => roDriver_inst_Mcount_timeInv_cy_13_rt_273,
      O => roDriver_inst_Result(13)
    );
  roDriver_inst_Mcount_timeInv_cy_13_Q : MUXCY
    port map (
      CI => roDriver_inst_Mcount_timeInv_cy(12),
      DI => N0,
      S => roDriver_inst_Mcount_timeInv_cy_13_rt_273,
      O => roDriver_inst_Mcount_timeInv_cy(13)
    );
  roDriver_inst_Mcount_timeInv_xor_12_Q : XORCY
    port map (
      CI => roDriver_inst_Mcount_timeInv_cy(11),
      LI => roDriver_inst_Mcount_timeInv_cy_12_rt_274,
      O => roDriver_inst_Result(12)
    );
  roDriver_inst_Mcount_timeInv_cy_12_Q : MUXCY
    port map (
      CI => roDriver_inst_Mcount_timeInv_cy(11),
      DI => N0,
      S => roDriver_inst_Mcount_timeInv_cy_12_rt_274,
      O => roDriver_inst_Mcount_timeInv_cy(12)
    );
  roDriver_inst_Mcount_timeInv_xor_11_Q : XORCY
    port map (
      CI => roDriver_inst_Mcount_timeInv_cy(10),
      LI => roDriver_inst_Mcount_timeInv_cy_11_rt_275,
      O => roDriver_inst_Result(11)
    );
  roDriver_inst_Mcount_timeInv_cy_11_Q : MUXCY
    port map (
      CI => roDriver_inst_Mcount_timeInv_cy(10),
      DI => N0,
      S => roDriver_inst_Mcount_timeInv_cy_11_rt_275,
      O => roDriver_inst_Mcount_timeInv_cy(11)
    );
  roDriver_inst_Mcount_timeInv_xor_10_Q : XORCY
    port map (
      CI => roDriver_inst_Mcount_timeInv_cy(9),
      LI => roDriver_inst_Mcount_timeInv_cy_10_rt_276,
      O => roDriver_inst_Result(10)
    );
  roDriver_inst_Mcount_timeInv_cy_10_Q : MUXCY
    port map (
      CI => roDriver_inst_Mcount_timeInv_cy(9),
      DI => N0,
      S => roDriver_inst_Mcount_timeInv_cy_10_rt_276,
      O => roDriver_inst_Mcount_timeInv_cy(10)
    );
  roDriver_inst_Mcount_timeInv_xor_9_Q : XORCY
    port map (
      CI => roDriver_inst_Mcount_timeInv_cy(8),
      LI => roDriver_inst_Mcount_timeInv_cy_9_rt_277,
      O => roDriver_inst_Result(9)
    );
  roDriver_inst_Mcount_timeInv_cy_9_Q : MUXCY
    port map (
      CI => roDriver_inst_Mcount_timeInv_cy(8),
      DI => N0,
      S => roDriver_inst_Mcount_timeInv_cy_9_rt_277,
      O => roDriver_inst_Mcount_timeInv_cy(9)
    );
  roDriver_inst_Mcount_timeInv_xor_8_Q : XORCY
    port map (
      CI => roDriver_inst_Mcount_timeInv_cy(7),
      LI => roDriver_inst_Mcount_timeInv_cy_8_rt_278,
      O => roDriver_inst_Result(8)
    );
  roDriver_inst_Mcount_timeInv_cy_8_Q : MUXCY
    port map (
      CI => roDriver_inst_Mcount_timeInv_cy(7),
      DI => N0,
      S => roDriver_inst_Mcount_timeInv_cy_8_rt_278,
      O => roDriver_inst_Mcount_timeInv_cy(8)
    );
  roDriver_inst_Mcount_timeInv_xor_7_Q : XORCY
    port map (
      CI => roDriver_inst_Mcount_timeInv_cy(6),
      LI => roDriver_inst_Mcount_timeInv_cy_7_rt_279,
      O => roDriver_inst_Result(7)
    );
  roDriver_inst_Mcount_timeInv_cy_7_Q : MUXCY
    port map (
      CI => roDriver_inst_Mcount_timeInv_cy(6),
      DI => N0,
      S => roDriver_inst_Mcount_timeInv_cy_7_rt_279,
      O => roDriver_inst_Mcount_timeInv_cy(7)
    );
  roDriver_inst_Mcount_timeInv_xor_6_Q : XORCY
    port map (
      CI => roDriver_inst_Mcount_timeInv_cy(5),
      LI => roDriver_inst_Mcount_timeInv_cy_6_rt_280,
      O => roDriver_inst_Result(6)
    );
  roDriver_inst_Mcount_timeInv_cy_6_Q : MUXCY
    port map (
      CI => roDriver_inst_Mcount_timeInv_cy(5),
      DI => N0,
      S => roDriver_inst_Mcount_timeInv_cy_6_rt_280,
      O => roDriver_inst_Mcount_timeInv_cy(6)
    );
  roDriver_inst_Mcount_timeInv_xor_5_Q : XORCY
    port map (
      CI => roDriver_inst_Mcount_timeInv_cy(4),
      LI => roDriver_inst_Mcount_timeInv_cy_5_rt_281,
      O => roDriver_inst_Result(5)
    );
  roDriver_inst_Mcount_timeInv_cy_5_Q : MUXCY
    port map (
      CI => roDriver_inst_Mcount_timeInv_cy(4),
      DI => N0,
      S => roDriver_inst_Mcount_timeInv_cy_5_rt_281,
      O => roDriver_inst_Mcount_timeInv_cy(5)
    );
  roDriver_inst_Mcount_timeInv_xor_4_Q : XORCY
    port map (
      CI => roDriver_inst_Mcount_timeInv_cy(3),
      LI => roDriver_inst_Mcount_timeInv_cy_4_rt_282,
      O => roDriver_inst_Result(4)
    );
  roDriver_inst_Mcount_timeInv_cy_4_Q : MUXCY
    port map (
      CI => roDriver_inst_Mcount_timeInv_cy(3),
      DI => N0,
      S => roDriver_inst_Mcount_timeInv_cy_4_rt_282,
      O => roDriver_inst_Mcount_timeInv_cy(4)
    );
  roDriver_inst_Mcount_timeInv_xor_3_Q : XORCY
    port map (
      CI => roDriver_inst_Mcount_timeInv_cy(2),
      LI => roDriver_inst_Mcount_timeInv_cy_3_rt_283,
      O => roDriver_inst_Result(3)
    );
  roDriver_inst_Mcount_timeInv_cy_3_Q : MUXCY
    port map (
      CI => roDriver_inst_Mcount_timeInv_cy(2),
      DI => N0,
      S => roDriver_inst_Mcount_timeInv_cy_3_rt_283,
      O => roDriver_inst_Mcount_timeInv_cy(3)
    );
  roDriver_inst_Mcount_timeInv_xor_2_Q : XORCY
    port map (
      CI => roDriver_inst_Mcount_timeInv_cy(1),
      LI => roDriver_inst_Mcount_timeInv_cy_2_rt_284,
      O => roDriver_inst_Result(2)
    );
  roDriver_inst_Mcount_timeInv_cy_2_Q : MUXCY
    port map (
      CI => roDriver_inst_Mcount_timeInv_cy(1),
      DI => N0,
      S => roDriver_inst_Mcount_timeInv_cy_2_rt_284,
      O => roDriver_inst_Mcount_timeInv_cy(2)
    );
  roDriver_inst_Mcount_timeInv_xor_1_Q : XORCY
    port map (
      CI => roDriver_inst_Mcount_timeInv_cy(0),
      LI => roDriver_inst_Mcount_timeInv_cy_1_rt_285,
      O => roDriver_inst_Result(1)
    );
  roDriver_inst_Mcount_timeInv_cy_1_Q : MUXCY
    port map (
      CI => roDriver_inst_Mcount_timeInv_cy(0),
      DI => N0,
      S => roDriver_inst_Mcount_timeInv_cy_1_rt_285,
      O => roDriver_inst_Mcount_timeInv_cy(1)
    );
  roDriver_inst_Mcount_timeInv_xor_0_Q : XORCY
    port map (
      CI => N0,
      LI => roDriver_inst_Mcount_timeInv_lut(0),
      O => roDriver_inst_Result(0)
    );
  roDriver_inst_Mcount_timeInv_cy_0_Q : MUXCY
    port map (
      CI => N0,
      DI => N1,
      S => roDriver_inst_Mcount_timeInv_lut(0),
      O => roDriver_inst_Mcount_timeInv_cy(0)
    );
  roDriver_inst_timeInv_14 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_to_driver,
      CLR => sysRst_IBUF_5,
      D => roDriver_inst_Mcount_timeInv_eqn_14,
      Q => roDriver_inst_timeInv(14)
    );
  roDriver_inst_timeInv_13 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_to_driver,
      CLR => sysRst_IBUF_5,
      D => roDriver_inst_Mcount_timeInv_eqn_13,
      Q => roDriver_inst_timeInv(13)
    );
  roDriver_inst_timeInv_12 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_to_driver,
      CLR => sysRst_IBUF_5,
      D => roDriver_inst_Mcount_timeInv_eqn_12,
      Q => roDriver_inst_timeInv(12)
    );
  roDriver_inst_timeInv_11 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_to_driver,
      CLR => sysRst_IBUF_5,
      D => roDriver_inst_Mcount_timeInv_eqn_11_172,
      Q => roDriver_inst_timeInv(11)
    );
  roDriver_inst_timeInv_10 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_to_driver,
      CLR => sysRst_IBUF_5,
      D => roDriver_inst_Mcount_timeInv_eqn_10,
      Q => roDriver_inst_timeInv(10)
    );
  roDriver_inst_timeInv_9 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_to_driver,
      CLR => sysRst_IBUF_5,
      D => roDriver_inst_Mcount_timeInv_eqn_9,
      Q => roDriver_inst_timeInv(9)
    );
  roDriver_inst_timeInv_8 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_to_driver,
      CLR => sysRst_IBUF_5,
      D => roDriver_inst_Mcount_timeInv_eqn_8,
      Q => roDriver_inst_timeInv(8)
    );
  roDriver_inst_timeInv_7 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_to_driver,
      CLR => sysRst_IBUF_5,
      D => roDriver_inst_Mcount_timeInv_eqn_7,
      Q => roDriver_inst_timeInv(7)
    );
  roDriver_inst_timeInv_6 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_to_driver,
      CLR => sysRst_IBUF_5,
      D => roDriver_inst_Mcount_timeInv_eqn_6,
      Q => roDriver_inst_timeInv(6)
    );
  roDriver_inst_timeInv_5 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_to_driver,
      CLR => sysRst_IBUF_5,
      D => roDriver_inst_Mcount_timeInv_eqn_5,
      Q => roDriver_inst_timeInv(5)
    );
  roDriver_inst_timeInv_4 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_to_driver,
      CLR => sysRst_IBUF_5,
      D => roDriver_inst_Mcount_timeInv_eqn_4,
      Q => roDriver_inst_timeInv(4)
    );
  roDriver_inst_timeInv_3 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_to_driver,
      CLR => sysRst_IBUF_5,
      D => roDriver_inst_Mcount_timeInv_eqn_3,
      Q => roDriver_inst_timeInv(3)
    );
  roDriver_inst_timeInv_2 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_to_driver,
      CLR => sysRst_IBUF_5,
      D => roDriver_inst_Mcount_timeInv_eqn_2,
      Q => roDriver_inst_timeInv(2)
    );
  roDriver_inst_timeInv_1 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_to_driver,
      CLR => sysRst_IBUF_5,
      D => roDriver_inst_Mcount_timeInv_eqn_1,
      Q => roDriver_inst_timeInv(1)
    );
  roDriver_inst_timeInv_0 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_to_driver,
      CLR => sysRst_IBUF_5,
      D => roDriver_inst_Mcount_timeInv_eqn_0,
      Q => roDriver_inst_timeInv(0)
    );
  roDriver_inst_diverOutBuf : FDC
    port map (
      C => clk_to_driver,
      CLR => sysRst_IBUF_5,
      D => roDriver_inst_GND_41_o_GND_41_o_MUX_32_o,
      Q => roDriver_inst_diverOutBuf_14
    );
  roDriver_inst_dCounterBuf : FDC
    port map (
      C => clk_to_driver,
      CLR => sysRst_IBUF_5,
      D => roDriver_inst_GND_41_o_GND_41_o_MUX_33_o,
      Q => roDriver_inst_dCounterBuf_13
    );
  counter_inst_Mcount_countBuf_eqn_01 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => Result(0),
      I1 => counter_inst_countBuf_31_PWR_12_o_equal_1_o,
      O => counter_inst_Mcount_countBuf_eqn_0
    );
  counter_inst_Mcount_countBuf_eqn_110 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => Result(1),
      I1 => counter_inst_countBuf_31_PWR_12_o_equal_1_o,
      O => counter_inst_Mcount_countBuf_eqn_1
    );
  counter_inst_Mcount_countBuf_eqn_210 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => Result(2),
      I1 => counter_inst_countBuf_31_PWR_12_o_equal_1_o,
      O => counter_inst_Mcount_countBuf_eqn_2
    );
  counter_inst_Mcount_countBuf_eqn_32 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => Result(3),
      I1 => counter_inst_countBuf_31_PWR_12_o_equal_1_o,
      O => counter_inst_Mcount_countBuf_eqn_3
    );
  counter_inst_Mcount_countBuf_eqn_41 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => Result(4),
      I1 => counter_inst_countBuf_31_PWR_12_o_equal_1_o,
      O => counter_inst_Mcount_countBuf_eqn_4
    );
  counter_inst_Mcount_countBuf_eqn_51 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => Result(5),
      I1 => counter_inst_countBuf_31_PWR_12_o_equal_1_o,
      O => counter_inst_Mcount_countBuf_eqn_5
    );
  counter_inst_Mcount_countBuf_eqn_61 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => Result(6),
      I1 => counter_inst_countBuf_31_PWR_12_o_equal_1_o,
      O => counter_inst_Mcount_countBuf_eqn_6
    );
  counter_inst_Mcount_countBuf_eqn_71 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => Result(7),
      I1 => counter_inst_countBuf_31_PWR_12_o_equal_1_o,
      O => counter_inst_Mcount_countBuf_eqn_7
    );
  counter_inst_Mcount_countBuf_eqn_81 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => Result(8),
      I1 => counter_inst_countBuf_31_PWR_12_o_equal_1_o,
      O => counter_inst_Mcount_countBuf_eqn_8
    );
  counter_inst_Mcount_countBuf_eqn_91 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => Result(9),
      I1 => counter_inst_countBuf_31_PWR_12_o_equal_1_o,
      O => counter_inst_Mcount_countBuf_eqn_9
    );
  counter_inst_Mcount_countBuf_eqn_101 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => Result(10),
      I1 => counter_inst_countBuf_31_PWR_12_o_equal_1_o,
      O => counter_inst_Mcount_countBuf_eqn_10
    );
  counter_inst_Mcount_countBuf_eqn_111 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => Result(11),
      I1 => counter_inst_countBuf_31_PWR_12_o_equal_1_o,
      O => counter_inst_Mcount_countBuf_eqn_11
    );
  counter_inst_Mcount_countBuf_eqn_121 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => Result(12),
      I1 => counter_inst_countBuf_31_PWR_12_o_equal_1_o,
      O => counter_inst_Mcount_countBuf_eqn_12
    );
  counter_inst_Mcount_countBuf_eqn_131 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => Result(13),
      I1 => counter_inst_countBuf_31_PWR_12_o_equal_1_o,
      O => counter_inst_Mcount_countBuf_eqn_13
    );
  counter_inst_Mcount_countBuf_eqn_141 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => Result(14),
      I1 => counter_inst_countBuf_31_PWR_12_o_equal_1_o,
      O => counter_inst_Mcount_countBuf_eqn_14
    );
  counter_inst_Mcount_countBuf_eqn_151 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => Result(15),
      I1 => counter_inst_countBuf_31_PWR_12_o_equal_1_o,
      O => counter_inst_Mcount_countBuf_eqn_15
    );
  counter_inst_Mcount_countBuf_eqn_161 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => Result(16),
      I1 => counter_inst_countBuf_31_PWR_12_o_equal_1_o,
      O => counter_inst_Mcount_countBuf_eqn_16
    );
  counter_inst_Mcount_countBuf_eqn_171 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => Result(17),
      I1 => counter_inst_countBuf_31_PWR_12_o_equal_1_o,
      O => counter_inst_Mcount_countBuf_eqn_17
    );
  counter_inst_Mcount_countBuf_eqn_181 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => Result(18),
      I1 => counter_inst_countBuf_31_PWR_12_o_equal_1_o,
      O => counter_inst_Mcount_countBuf_eqn_18
    );
  counter_inst_Mcount_countBuf_eqn_191 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => Result(19),
      I1 => counter_inst_countBuf_31_PWR_12_o_equal_1_o,
      O => counter_inst_Mcount_countBuf_eqn_19
    );
  counter_inst_Mcount_countBuf_eqn_201 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => Result(20),
      I1 => counter_inst_countBuf_31_PWR_12_o_equal_1_o,
      O => counter_inst_Mcount_countBuf_eqn_20
    );
  counter_inst_Mcount_countBuf_eqn_211 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => Result(21),
      I1 => counter_inst_countBuf_31_PWR_12_o_equal_1_o,
      O => counter_inst_Mcount_countBuf_eqn_21
    );
  counter_inst_Mcount_countBuf_eqn_221 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => Result(22),
      I1 => counter_inst_countBuf_31_PWR_12_o_equal_1_o,
      O => counter_inst_Mcount_countBuf_eqn_22
    );
  counter_inst_Mcount_countBuf_eqn_231 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => Result(23),
      I1 => counter_inst_countBuf_31_PWR_12_o_equal_1_o,
      O => counter_inst_Mcount_countBuf_eqn_23
    );
  counter_inst_Mcount_countBuf_eqn_241 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => Result(24),
      I1 => counter_inst_countBuf_31_PWR_12_o_equal_1_o,
      O => counter_inst_Mcount_countBuf_eqn_24
    );
  counter_inst_Mcount_countBuf_eqn_251 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => Result(25),
      I1 => counter_inst_countBuf_31_PWR_12_o_equal_1_o,
      O => counter_inst_Mcount_countBuf_eqn_25
    );
  counter_inst_Mcount_countBuf_eqn_261 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => Result(26),
      I1 => counter_inst_countBuf_31_PWR_12_o_equal_1_o,
      O => counter_inst_Mcount_countBuf_eqn_26
    );
  counter_inst_Mcount_countBuf_eqn_271 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => Result(27),
      I1 => counter_inst_countBuf_31_PWR_12_o_equal_1_o,
      O => counter_inst_Mcount_countBuf_eqn_27
    );
  counter_inst_Mcount_countBuf_eqn_281 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => Result(28),
      I1 => counter_inst_countBuf_31_PWR_12_o_equal_1_o,
      O => counter_inst_Mcount_countBuf_eqn_28
    );
  counter_inst_Mcount_countBuf_eqn_291 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => Result(29),
      I1 => counter_inst_countBuf_31_PWR_12_o_equal_1_o,
      O => counter_inst_Mcount_countBuf_eqn_29
    );
  counter_inst_Mcount_countBuf_eqn_301 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => Result(30),
      I1 => counter_inst_countBuf_31_PWR_12_o_equal_1_o,
      O => counter_inst_Mcount_countBuf_eqn_30
    );
  counter_inst_Mcount_countBuf_eqn_311 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => Result(31),
      I1 => counter_inst_countBuf_31_PWR_12_o_equal_1_o,
      O => counter_inst_Mcount_countBuf_eqn_31
    );
  counter_inst_countBuf_31_PWR_12_o_equal_1_o_31_1 : LUT6
    generic map(
      INIT => X"8000000000000000"
    )
    port map (
      I0 => counter_inst_countBuf(15),
      I1 => counter_inst_countBuf(14),
      I2 => counter_inst_countBuf(17),
      I3 => counter_inst_countBuf(16),
      I4 => counter_inst_countBuf(19),
      I5 => counter_inst_countBuf(18),
      O => counter_inst_countBuf_31_PWR_12_o_equal_1_o_31_Q
    );
  counter_inst_countBuf_31_PWR_12_o_equal_1_o_31_2 : LUT6
    generic map(
      INIT => X"8000000000000000"
    )
    port map (
      I0 => counter_inst_countBuf(9),
      I1 => counter_inst_countBuf(8),
      I2 => counter_inst_countBuf(11),
      I3 => counter_inst_countBuf(10),
      I4 => counter_inst_countBuf(13),
      I5 => counter_inst_countBuf(12),
      O => counter_inst_countBuf_31_PWR_12_o_equal_1_o_31_1_215
    );
  counter_inst_countBuf_31_PWR_12_o_equal_1_o_31_3 : LUT6
    generic map(
      INIT => X"8000000000000000"
    )
    port map (
      I0 => counter_inst_countBuf(27),
      I1 => counter_inst_countBuf(26),
      I2 => counter_inst_countBuf(29),
      I3 => counter_inst_countBuf(28),
      I4 => counter_inst_countBuf(31),
      I5 => counter_inst_countBuf(30),
      O => counter_inst_countBuf_31_PWR_12_o_equal_1_o_31_2_216
    );
  counter_inst_countBuf_31_PWR_12_o_equal_1_o_31_4 : LUT6
    generic map(
      INIT => X"8000000000000000"
    )
    port map (
      I0 => counter_inst_countBuf(21),
      I1 => counter_inst_countBuf(20),
      I2 => counter_inst_countBuf(23),
      I3 => counter_inst_countBuf(22),
      I4 => counter_inst_countBuf(25),
      I5 => counter_inst_countBuf(24),
      O => counter_inst_countBuf_31_PWR_12_o_equal_1_o_31_3_217
    );
  counter_inst_countBuf_31_PWR_12_o_equal_1_o_31_5 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => counter_inst_countBuf(1),
      I1 => counter_inst_countBuf(0),
      O => counter_inst_countBuf_31_PWR_12_o_equal_1_o_31_4_218
    );
  counter_inst_countBuf_31_PWR_12_o_equal_1_o_31_6 : LUT6
    generic map(
      INIT => X"8000000000000000"
    )
    port map (
      I0 => counter_inst_countBuf(3),
      I1 => counter_inst_countBuf(2),
      I2 => counter_inst_countBuf(5),
      I3 => counter_inst_countBuf(4),
      I4 => counter_inst_countBuf(7),
      I5 => counter_inst_countBuf(6),
      O => counter_inst_countBuf_31_PWR_12_o_equal_1_o_31_5_219
    );
  counter_inst_countBuf_31_PWR_12_o_equal_1_o_31_7 : LUT6
    generic map(
      INIT => X"8000000000000000"
    )
    port map (
      I0 => counter_inst_countBuf_31_PWR_12_o_equal_1_o_31_4_218,
      I1 => counter_inst_countBuf_31_PWR_12_o_equal_1_o_31_5_219,
      I2 => counter_inst_countBuf_31_PWR_12_o_equal_1_o_31_Q,
      I3 => counter_inst_countBuf_31_PWR_12_o_equal_1_o_31_1_215,
      I4 => counter_inst_countBuf_31_PWR_12_o_equal_1_o_31_2_216,
      I5 => counter_inst_countBuf_31_PWR_12_o_equal_1_o_31_3_217,
      O => counter_inst_countBuf_31_PWR_12_o_equal_1_o
    );
  counterOutPut_inst_Mmux_countPart1_SW0 : LUT4
    generic map(
      INIT => X"15BF"
    )
    port map (
      I0 => sysSel_2_IBUF_1,
      I1 => counter_inst_countBuf(12),
      I2 => sysSel_3_IBUF_0,
      I3 => counter_inst_countBuf(8),
      O => N3
    );
  counterOutPut_inst_Mmux_countPart1 : LUT5
    generic map(
      INIT => X"EFAB4501"
    )
    port map (
      I0 => sysSel_0_IBUF_3,
      I1 => sysSel_1_IBUF_2,
      I2 => N3,
      I3 => counter_inst_countBuf(4),
      I4 => counter_inst_countBuf(0),
      O => sysout_0_OBUF_11
    );
  counterOutPut_inst_Mmux_countPart2_SW0 : LUT4
    generic map(
      INIT => X"15BF"
    )
    port map (
      I0 => sysSel_2_IBUF_1,
      I1 => counter_inst_countBuf(13),
      I2 => sysSel_3_IBUF_0,
      I3 => counter_inst_countBuf(9),
      O => N5
    );
  counterOutPut_inst_Mmux_countPart2 : LUT5
    generic map(
      INIT => X"EFAB4501"
    )
    port map (
      I0 => sysSel_0_IBUF_3,
      I1 => sysSel_1_IBUF_2,
      I2 => N5,
      I3 => counter_inst_countBuf(5),
      I4 => counter_inst_countBuf(1),
      O => sysout_1_OBUF_10
    );
  counterOutPut_inst_Mmux_countPart3_SW0 : LUT4
    generic map(
      INIT => X"15BF"
    )
    port map (
      I0 => sysSel_2_IBUF_1,
      I1 => counter_inst_countBuf(14),
      I2 => sysSel_3_IBUF_0,
      I3 => counter_inst_countBuf(10),
      O => N7
    );
  counterOutPut_inst_Mmux_countPart3 : LUT5
    generic map(
      INIT => X"EFAB4501"
    )
    port map (
      I0 => sysSel_0_IBUF_3,
      I1 => sysSel_1_IBUF_2,
      I2 => N7,
      I3 => counter_inst_countBuf(6),
      I4 => counter_inst_countBuf(2),
      O => sysout_2_OBUF_9
    );
  counterOutPut_inst_Mmux_countPart4_SW0 : LUT4
    generic map(
      INIT => X"15BF"
    )
    port map (
      I0 => sysSel_2_IBUF_1,
      I1 => counter_inst_countBuf(15),
      I2 => sysSel_3_IBUF_0,
      I3 => counter_inst_countBuf(11),
      O => N9
    );
  counterOutPut_inst_Mmux_countPart4 : LUT5
    generic map(
      INIT => X"EFAB4501"
    )
    port map (
      I0 => sysSel_0_IBUF_3,
      I1 => sysSel_1_IBUF_2,
      I2 => N9,
      I3 => counter_inst_countBuf(7),
      I4 => counter_inst_countBuf(3),
      O => sysout_3_OBUF_8
    );
  roDriver_inst_PWR_10_o_timeInv_14_equal_1_o_14_1 : LUT6
    generic map(
      INIT => X"8000000000000000"
    )
    port map (
      I0 => roDriver_inst_timeInv(7),
      I1 => roDriver_inst_timeInv(5),
      I2 => roDriver_inst_timeInv(3),
      I3 => roDriver_inst_timeInv(8),
      I4 => roDriver_inst_timeInv(13),
      I5 => roDriver_inst_timeInv(14),
      O => roDriver_inst_PWR_10_o_timeInv_14_equal_1_o_14_Q
    );
  roDriver_inst_PWR_10_o_timeInv_14_equal_1_o_14_2 : LUT6
    generic map(
      INIT => X"0000000000000001"
    )
    port map (
      I0 => roDriver_inst_timeInv(6),
      I1 => roDriver_inst_timeInv(9),
      I2 => roDriver_inst_timeInv(4),
      I3 => roDriver_inst_timeInv(2),
      I4 => roDriver_inst_timeInv(1),
      I5 => roDriver_inst_timeInv(12),
      O => roDriver_inst_PWR_10_o_timeInv_14_equal_1_o_14_1_225
    );
  roDriver_inst_PWR_10_o_timeInv_14_equal_1_o_14_3 : LUT5
    generic map(
      INIT => X"01000000"
    )
    port map (
      I0 => roDriver_inst_timeInv(0),
      I1 => roDriver_inst_timeInv(11),
      I2 => roDriver_inst_timeInv(10),
      I3 => roDriver_inst_PWR_10_o_timeInv_14_equal_1_o_14_1_225,
      I4 => roDriver_inst_PWR_10_o_timeInv_14_equal_1_o_14_Q,
      O => roDriver_inst_PWR_10_o_timeInv_14_equal_1_o
    );
  roDriver_inst_Mmux_GND_41_o_GND_41_o_MUX_32_o11 : LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
    port map (
      I0 => roDriver_inst_timeInv(14),
      I1 => roDriver_inst_timeInv(9),
      I2 => roDriver_inst_timeInv(12),
      I3 => roDriver_inst_timeInv(13),
      I4 => roDriver_inst_timeInv(10),
      I5 => roDriver_inst_timeInv(11),
      O => roDriver_inst_Mmux_GND_41_o_GND_41_o_MUX_32_o1
    );
  roDriver_inst_Mmux_GND_41_o_GND_41_o_MUX_32_o12 : LUT5
    generic map(
      INIT => X"80000000"
    )
    port map (
      I0 => roDriver_inst_timeInv(7),
      I1 => roDriver_inst_timeInv(8),
      I2 => roDriver_inst_timeInv(4),
      I3 => roDriver_inst_timeInv(5),
      I4 => roDriver_inst_timeInv(6),
      O => roDriver_inst_Mmux_GND_41_o_GND_41_o_MUX_32_o11_227
    );
  roDriver_inst_Mmux_GND_41_o_GND_41_o_MUX_32_o13 : LUT6
    generic map(
      INIT => X"FFFFFFFFFAEA0000"
    )
    port map (
      I0 => roDriver_inst_timeInv(3),
      I1 => roDriver_inst_timeInv(1),
      I2 => roDriver_inst_timeInv(2),
      I3 => roDriver_inst_timeInv(0),
      I4 => roDriver_inst_Mmux_GND_41_o_GND_41_o_MUX_32_o11_227,
      I5 => roDriver_inst_Mmux_GND_41_o_GND_41_o_MUX_32_o1,
      O => roDriver_inst_Mmux_GND_41_o_GND_41_o_MUX_32_o12_228
    );
  roDriver_inst_Mmux_GND_41_o_GND_41_o_MUX_33_o11 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => roDriver_inst_timeInv(9),
      I1 => roDriver_inst_timeInv(8),
      I2 => roDriver_inst_timeInv(10),
      O => roDriver_inst_Mmux_GND_41_o_GND_41_o_MUX_33_o1
    );
  roDriver_inst_Mmux_GND_41_o_GND_41_o_MUX_33_o12 : LUT5
    generic map(
      INIT => X"AAAAAAA8"
    )
    port map (
      I0 => roDriver_inst_timeInv(4),
      I1 => roDriver_inst_timeInv(2),
      I2 => roDriver_inst_timeInv(3),
      I3 => roDriver_inst_timeInv(0),
      I4 => roDriver_inst_timeInv(1),
      O => roDriver_inst_Mmux_GND_41_o_GND_41_o_MUX_33_o11_230
    );
  roDriver_inst_Mmux_GND_41_o_GND_41_o_MUX_33_o13 : LUT5
    generic map(
      INIT => X"FF00FE00"
    )
    port map (
      I0 => roDriver_inst_timeInv(7),
      I1 => roDriver_inst_timeInv(6),
      I2 => roDriver_inst_timeInv(5),
      I3 => roDriver_inst_Mmux_GND_41_o_GND_41_o_MUX_33_o1,
      I4 => roDriver_inst_Mmux_GND_41_o_GND_41_o_MUX_33_o11_230,
      O => roDriver_inst_Mmux_GND_41_o_GND_41_o_MUX_33_o12_231
    );
  roDriver_inst_Mmux_GND_41_o_GND_41_o_MUX_33_o14 : LUT6
    generic map(
      INIT => X"00000000FAFAFAEA"
    )
    port map (
      I0 => roDriver_inst_timeInv(14),
      I1 => roDriver_inst_timeInv(12),
      I2 => roDriver_inst_timeInv(13),
      I3 => roDriver_inst_timeInv(11),
      I4 => roDriver_inst_Mmux_GND_41_o_GND_41_o_MUX_33_o12_231,
      I5 => roDriver_inst_PWR_10_o_timeInv_14_equal_1_o,
      O => roDriver_inst_GND_41_o_GND_41_o_MUX_33_o
    );
  sysSel_3_IBUF : IBUF
    port map (
      I => sysSel(3),
      O => sysSel_3_IBUF_0
    );
  sysSel_2_IBUF : IBUF
    port map (
      I => sysSel(2),
      O => sysSel_2_IBUF_1
    );
  sysSel_1_IBUF : IBUF
    port map (
      I => sysSel(1),
      O => sysSel_1_IBUF_2
    );
  sysSel_0_IBUF : IBUF
    port map (
      I => sysSel(0),
      O => sysSel_0_IBUF_3
    );
  sysRst_IBUF : IBUF
    port map (
      I => sysRst,
      O => sysRst_IBUF_5
    );
  sysConf0_IBUF : IBUF
    port map (
      I => sysConf0,
      O => sysConf0_IBUF_6
    );
  sysConf1_IBUF : IBUF
    port map (
      I => sysConf1,
      O => sysConf1_IBUF_7
    );
  sysout_3_OBUF : OBUF
    port map (
      I => sysout_3_OBUF_8,
      O => sysout(3)
    );
  sysout_2_OBUF : OBUF
    port map (
      I => sysout_2_OBUF_9,
      O => sysout(2)
    );
  sysout_1_OBUF : OBUF
    port map (
      I => sysout_1_OBUF_10,
      O => sysout(1)
    );
  sysout_0_OBUF : OBUF
    port map (
      I => sysout_0_OBUF_11,
      O => sysout(0)
    );
  counter_inst_Mcount_countBuf_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => counter_inst_countBuf(1),
      O => counter_inst_Mcount_countBuf_cy_1_rt_243
    );
  counter_inst_Mcount_countBuf_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => counter_inst_countBuf(2),
      O => counter_inst_Mcount_countBuf_cy_2_rt_244
    );
  counter_inst_Mcount_countBuf_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => counter_inst_countBuf(3),
      O => counter_inst_Mcount_countBuf_cy_3_rt_245
    );
  counter_inst_Mcount_countBuf_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => counter_inst_countBuf(4),
      O => counter_inst_Mcount_countBuf_cy_4_rt_246
    );
  counter_inst_Mcount_countBuf_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => counter_inst_countBuf(5),
      O => counter_inst_Mcount_countBuf_cy_5_rt_247
    );
  counter_inst_Mcount_countBuf_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => counter_inst_countBuf(6),
      O => counter_inst_Mcount_countBuf_cy_6_rt_248
    );
  counter_inst_Mcount_countBuf_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => counter_inst_countBuf(7),
      O => counter_inst_Mcount_countBuf_cy_7_rt_249
    );
  counter_inst_Mcount_countBuf_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => counter_inst_countBuf(8),
      O => counter_inst_Mcount_countBuf_cy_8_rt_250
    );
  counter_inst_Mcount_countBuf_cy_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => counter_inst_countBuf(9),
      O => counter_inst_Mcount_countBuf_cy_9_rt_251
    );
  counter_inst_Mcount_countBuf_cy_10_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => counter_inst_countBuf(10),
      O => counter_inst_Mcount_countBuf_cy_10_rt_252
    );
  counter_inst_Mcount_countBuf_cy_11_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => counter_inst_countBuf(11),
      O => counter_inst_Mcount_countBuf_cy_11_rt_253
    );
  counter_inst_Mcount_countBuf_cy_12_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => counter_inst_countBuf(12),
      O => counter_inst_Mcount_countBuf_cy_12_rt_254
    );
  counter_inst_Mcount_countBuf_cy_13_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => counter_inst_countBuf(13),
      O => counter_inst_Mcount_countBuf_cy_13_rt_255
    );
  counter_inst_Mcount_countBuf_cy_14_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => counter_inst_countBuf(14),
      O => counter_inst_Mcount_countBuf_cy_14_rt_256
    );
  counter_inst_Mcount_countBuf_cy_15_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => counter_inst_countBuf(15),
      O => counter_inst_Mcount_countBuf_cy_15_rt_257
    );
  counter_inst_Mcount_countBuf_cy_16_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => counter_inst_countBuf(16),
      O => counter_inst_Mcount_countBuf_cy_16_rt_258
    );
  counter_inst_Mcount_countBuf_cy_17_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => counter_inst_countBuf(17),
      O => counter_inst_Mcount_countBuf_cy_17_rt_259
    );
  counter_inst_Mcount_countBuf_cy_18_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => counter_inst_countBuf(18),
      O => counter_inst_Mcount_countBuf_cy_18_rt_260
    );
  counter_inst_Mcount_countBuf_cy_19_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => counter_inst_countBuf(19),
      O => counter_inst_Mcount_countBuf_cy_19_rt_261
    );
  counter_inst_Mcount_countBuf_cy_20_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => counter_inst_countBuf(20),
      O => counter_inst_Mcount_countBuf_cy_20_rt_262
    );
  counter_inst_Mcount_countBuf_cy_21_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => counter_inst_countBuf(21),
      O => counter_inst_Mcount_countBuf_cy_21_rt_263
    );
  counter_inst_Mcount_countBuf_cy_22_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => counter_inst_countBuf(22),
      O => counter_inst_Mcount_countBuf_cy_22_rt_264
    );
  counter_inst_Mcount_countBuf_cy_23_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => counter_inst_countBuf(23),
      O => counter_inst_Mcount_countBuf_cy_23_rt_265
    );
  counter_inst_Mcount_countBuf_cy_24_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => counter_inst_countBuf(24),
      O => counter_inst_Mcount_countBuf_cy_24_rt_266
    );
  counter_inst_Mcount_countBuf_cy_25_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => counter_inst_countBuf(25),
      O => counter_inst_Mcount_countBuf_cy_25_rt_267
    );
  counter_inst_Mcount_countBuf_cy_26_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => counter_inst_countBuf(26),
      O => counter_inst_Mcount_countBuf_cy_26_rt_268
    );
  counter_inst_Mcount_countBuf_cy_27_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => counter_inst_countBuf(27),
      O => counter_inst_Mcount_countBuf_cy_27_rt_269
    );
  counter_inst_Mcount_countBuf_cy_28_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => counter_inst_countBuf(28),
      O => counter_inst_Mcount_countBuf_cy_28_rt_270
    );
  counter_inst_Mcount_countBuf_cy_29_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => counter_inst_countBuf(29),
      O => counter_inst_Mcount_countBuf_cy_29_rt_271
    );
  counter_inst_Mcount_countBuf_cy_30_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => counter_inst_countBuf(30),
      O => counter_inst_Mcount_countBuf_cy_30_rt_272
    );
  roDriver_inst_Mcount_timeInv_cy_13_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => roDriver_inst_timeInv(13),
      O => roDriver_inst_Mcount_timeInv_cy_13_rt_273
    );
  roDriver_inst_Mcount_timeInv_cy_12_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => roDriver_inst_timeInv(12),
      O => roDriver_inst_Mcount_timeInv_cy_12_rt_274
    );
  roDriver_inst_Mcount_timeInv_cy_11_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => roDriver_inst_timeInv(11),
      O => roDriver_inst_Mcount_timeInv_cy_11_rt_275
    );
  roDriver_inst_Mcount_timeInv_cy_10_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => roDriver_inst_timeInv(10),
      O => roDriver_inst_Mcount_timeInv_cy_10_rt_276
    );
  roDriver_inst_Mcount_timeInv_cy_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => roDriver_inst_timeInv(9),
      O => roDriver_inst_Mcount_timeInv_cy_9_rt_277
    );
  roDriver_inst_Mcount_timeInv_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => roDriver_inst_timeInv(8),
      O => roDriver_inst_Mcount_timeInv_cy_8_rt_278
    );
  roDriver_inst_Mcount_timeInv_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => roDriver_inst_timeInv(7),
      O => roDriver_inst_Mcount_timeInv_cy_7_rt_279
    );
  roDriver_inst_Mcount_timeInv_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => roDriver_inst_timeInv(6),
      O => roDriver_inst_Mcount_timeInv_cy_6_rt_280
    );
  roDriver_inst_Mcount_timeInv_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => roDriver_inst_timeInv(5),
      O => roDriver_inst_Mcount_timeInv_cy_5_rt_281
    );
  roDriver_inst_Mcount_timeInv_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => roDriver_inst_timeInv(4),
      O => roDriver_inst_Mcount_timeInv_cy_4_rt_282
    );
  roDriver_inst_Mcount_timeInv_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => roDriver_inst_timeInv(3),
      O => roDriver_inst_Mcount_timeInv_cy_3_rt_283
    );
  roDriver_inst_Mcount_timeInv_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => roDriver_inst_timeInv(2),
      O => roDriver_inst_Mcount_timeInv_cy_2_rt_284
    );
  roDriver_inst_Mcount_timeInv_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => roDriver_inst_timeInv(1),
      O => roDriver_inst_Mcount_timeInv_cy_1_rt_285
    );
  counter_inst_Mcount_countBuf_xor_31_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => counter_inst_countBuf(31),
      O => counter_inst_Mcount_countBuf_xor_31_rt_286
    );
  roDriver_inst_Mcount_timeInv_xor_14_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => roDriver_inst_timeInv(14),
      O => roDriver_inst_Mcount_timeInv_xor_14_rt_287
    );
  roDriver_inst_Mcount_timeInv_eqn_141 : LUT6
    generic map(
      INIT => X"FFFFFFFF00000008"
    )
    port map (
      I0 => roDriver_inst_PWR_10_o_timeInv_14_equal_1_o_14_Q,
      I1 => roDriver_inst_PWR_10_o_timeInv_14_equal_1_o_14_1_225,
      I2 => roDriver_inst_timeInv(10),
      I3 => roDriver_inst_timeInv(11),
      I4 => roDriver_inst_timeInv(0),
      I5 => roDriver_inst_Result(14),
      O => roDriver_inst_Mcount_timeInv_eqn_14
    );
  roDriver_inst_Mcount_timeInv_eqn_131 : LUT6
    generic map(
      INIT => X"FFFFFFFF00000008"
    )
    port map (
      I0 => roDriver_inst_PWR_10_o_timeInv_14_equal_1_o_14_Q,
      I1 => roDriver_inst_PWR_10_o_timeInv_14_equal_1_o_14_1_225,
      I2 => roDriver_inst_timeInv(10),
      I3 => roDriver_inst_timeInv(11),
      I4 => roDriver_inst_timeInv(0),
      I5 => roDriver_inst_Result(13),
      O => roDriver_inst_Mcount_timeInv_eqn_13
    );
  roDriver_inst_Mcount_timeInv_eqn_121 : LUT6
    generic map(
      INIT => X"FEFFFFFF00000000"
    )
    port map (
      I0 => roDriver_inst_timeInv(11),
      I1 => roDriver_inst_timeInv(10),
      I2 => roDriver_inst_timeInv(0),
      I3 => roDriver_inst_PWR_10_o_timeInv_14_equal_1_o_14_1_225,
      I4 => roDriver_inst_PWR_10_o_timeInv_14_equal_1_o_14_Q,
      I5 => roDriver_inst_Result(12),
      O => roDriver_inst_Mcount_timeInv_eqn_12
    );
  roDriver_inst_Mcount_timeInv_eqn_111 : LUT6
    generic map(
      INIT => X"FEFFFFFF00000000"
    )
    port map (
      I0 => roDriver_inst_timeInv(11),
      I1 => roDriver_inst_timeInv(10),
      I2 => roDriver_inst_timeInv(0),
      I3 => roDriver_inst_PWR_10_o_timeInv_14_equal_1_o_14_1_225,
      I4 => roDriver_inst_PWR_10_o_timeInv_14_equal_1_o_14_Q,
      I5 => roDriver_inst_Result(11),
      O => roDriver_inst_Mcount_timeInv_eqn_11_172
    );
  roDriver_inst_Mcount_timeInv_eqn_101 : LUT6
    generic map(
      INIT => X"FEFFFFFF00000000"
    )
    port map (
      I0 => roDriver_inst_timeInv(11),
      I1 => roDriver_inst_timeInv(10),
      I2 => roDriver_inst_timeInv(0),
      I3 => roDriver_inst_PWR_10_o_timeInv_14_equal_1_o_14_1_225,
      I4 => roDriver_inst_PWR_10_o_timeInv_14_equal_1_o_14_Q,
      I5 => roDriver_inst_Result(10),
      O => roDriver_inst_Mcount_timeInv_eqn_10
    );
  roDriver_inst_Mcount_timeInv_eqn_91 : LUT6
    generic map(
      INIT => X"FEFFFFFF00000000"
    )
    port map (
      I0 => roDriver_inst_timeInv(11),
      I1 => roDriver_inst_timeInv(10),
      I2 => roDriver_inst_timeInv(0),
      I3 => roDriver_inst_PWR_10_o_timeInv_14_equal_1_o_14_1_225,
      I4 => roDriver_inst_PWR_10_o_timeInv_14_equal_1_o_14_Q,
      I5 => roDriver_inst_Result(9),
      O => roDriver_inst_Mcount_timeInv_eqn_9
    );
  roDriver_inst_Mcount_timeInv_eqn_81 : LUT6
    generic map(
      INIT => X"FFFFFFFF00000008"
    )
    port map (
      I0 => roDriver_inst_PWR_10_o_timeInv_14_equal_1_o_14_Q,
      I1 => roDriver_inst_PWR_10_o_timeInv_14_equal_1_o_14_1_225,
      I2 => roDriver_inst_timeInv(10),
      I3 => roDriver_inst_timeInv(11),
      I4 => roDriver_inst_timeInv(0),
      I5 => roDriver_inst_Result(8),
      O => roDriver_inst_Mcount_timeInv_eqn_8
    );
  roDriver_inst_Mcount_timeInv_eqn_71 : LUT6
    generic map(
      INIT => X"FFFFFFFF00000008"
    )
    port map (
      I0 => roDriver_inst_PWR_10_o_timeInv_14_equal_1_o_14_Q,
      I1 => roDriver_inst_PWR_10_o_timeInv_14_equal_1_o_14_1_225,
      I2 => roDriver_inst_timeInv(10),
      I3 => roDriver_inst_timeInv(11),
      I4 => roDriver_inst_timeInv(0),
      I5 => roDriver_inst_Result(7),
      O => roDriver_inst_Mcount_timeInv_eqn_7
    );
  roDriver_inst_Mcount_timeInv_eqn_61 : LUT6
    generic map(
      INIT => X"FEFFFFFF00000000"
    )
    port map (
      I0 => roDriver_inst_timeInv(11),
      I1 => roDriver_inst_timeInv(10),
      I2 => roDriver_inst_timeInv(0),
      I3 => roDriver_inst_PWR_10_o_timeInv_14_equal_1_o_14_1_225,
      I4 => roDriver_inst_PWR_10_o_timeInv_14_equal_1_o_14_Q,
      I5 => roDriver_inst_Result(6),
      O => roDriver_inst_Mcount_timeInv_eqn_6
    );
  roDriver_inst_Mcount_timeInv_eqn_51 : LUT6
    generic map(
      INIT => X"FFFFFFFF00000008"
    )
    port map (
      I0 => roDriver_inst_PWR_10_o_timeInv_14_equal_1_o_14_Q,
      I1 => roDriver_inst_PWR_10_o_timeInv_14_equal_1_o_14_1_225,
      I2 => roDriver_inst_timeInv(10),
      I3 => roDriver_inst_timeInv(11),
      I4 => roDriver_inst_timeInv(0),
      I5 => roDriver_inst_Result(5),
      O => roDriver_inst_Mcount_timeInv_eqn_5
    );
  roDriver_inst_Mcount_timeInv_eqn_41 : LUT6
    generic map(
      INIT => X"FEFFFFFF00000000"
    )
    port map (
      I0 => roDriver_inst_timeInv(11),
      I1 => roDriver_inst_timeInv(10),
      I2 => roDriver_inst_timeInv(0),
      I3 => roDriver_inst_PWR_10_o_timeInv_14_equal_1_o_14_1_225,
      I4 => roDriver_inst_PWR_10_o_timeInv_14_equal_1_o_14_Q,
      I5 => roDriver_inst_Result(4),
      O => roDriver_inst_Mcount_timeInv_eqn_4
    );
  roDriver_inst_Mcount_timeInv_eqn_31 : LUT6
    generic map(
      INIT => X"FFFFFFFF00000008"
    )
    port map (
      I0 => roDriver_inst_PWR_10_o_timeInv_14_equal_1_o_14_Q,
      I1 => roDriver_inst_PWR_10_o_timeInv_14_equal_1_o_14_1_225,
      I2 => roDriver_inst_timeInv(10),
      I3 => roDriver_inst_timeInv(11),
      I4 => roDriver_inst_timeInv(0),
      I5 => roDriver_inst_Result(3),
      O => roDriver_inst_Mcount_timeInv_eqn_3
    );
  roDriver_inst_Mcount_timeInv_eqn_01 : LUT6
    generic map(
      INIT => X"AAAAAAA2AAAAAAAA"
    )
    port map (
      I0 => roDriver_inst_Result(0),
      I1 => roDriver_inst_PWR_10_o_timeInv_14_equal_1_o_14_Q,
      I2 => roDriver_inst_timeInv(0),
      I3 => roDriver_inst_timeInv(10),
      I4 => roDriver_inst_timeInv(11),
      I5 => roDriver_inst_PWR_10_o_timeInv_14_equal_1_o_14_1_225,
      O => roDriver_inst_Mcount_timeInv_eqn_0
    );
  roDriver_inst_Mcount_timeInv_eqn_21 : LUT6
    generic map(
      INIT => X"FEFFFFFF00000000"
    )
    port map (
      I0 => roDriver_inst_timeInv(11),
      I1 => roDriver_inst_timeInv(10),
      I2 => roDriver_inst_timeInv(0),
      I3 => roDriver_inst_PWR_10_o_timeInv_14_equal_1_o_14_1_225,
      I4 => roDriver_inst_PWR_10_o_timeInv_14_equal_1_o_14_Q,
      I5 => roDriver_inst_Result(2),
      O => roDriver_inst_Mcount_timeInv_eqn_2
    );
  roDriver_inst_Mcount_timeInv_eqn_11 : LUT6
    generic map(
      INIT => X"FEFFFFFF00000000"
    )
    port map (
      I0 => roDriver_inst_timeInv(11),
      I1 => roDriver_inst_timeInv(10),
      I2 => roDriver_inst_timeInv(0),
      I3 => roDriver_inst_PWR_10_o_timeInv_14_equal_1_o_14_1_225,
      I4 => roDriver_inst_PWR_10_o_timeInv_14_equal_1_o_14_Q,
      I5 => roDriver_inst_Result(1),
      O => roDriver_inst_Mcount_timeInv_eqn_1
    );
  roDriver_inst_Mmux_GND_41_o_GND_41_o_MUX_32_o14 : LUT6
    generic map(
      INIT => X"FEFFFFFF00000000"
    )
    port map (
      I0 => roDriver_inst_timeInv(11),
      I1 => roDriver_inst_timeInv(10),
      I2 => roDriver_inst_timeInv(0),
      I3 => roDriver_inst_PWR_10_o_timeInv_14_equal_1_o_14_1_225,
      I4 => roDriver_inst_PWR_10_o_timeInv_14_equal_1_o_14_Q,
      I5 => roDriver_inst_Mmux_GND_41_o_GND_41_o_MUX_32_o12_228,
      O => roDriver_inst_GND_41_o_GND_41_o_MUX_32_o
    );
  counter_inst_Mcount_countBuf_lut_0_INV_0 : INV
    port map (
      I => counter_inst_countBuf(0),
      O => counter_inst_Mcount_countBuf_lut(0)
    );
  roDriver_inst_Mcount_timeInv_lut_0_INV_0 : INV
    port map (
      I => roDriver_inst_timeInv(0),
      O => roDriver_inst_Mcount_timeInv_lut(0)
    );

end Structure;

