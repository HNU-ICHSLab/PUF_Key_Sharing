--------------------------------------------------------------------------------
-- Copyright (c) 1995-2012 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.49d
--  \   \         Application: netgen
--  /   /         Filename: topDesign_timesim.vhd
-- /___/   /\     Timestamp: Thu Jul 09 04:40:22 2015
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -s 1 -pcf topDesign.pcf -rpw 100 -tpw 0 -ar Structure -tm topDesign -insert_pp_buffers true -w -dir netgen/par -ofmt vhdl -sim topDesign.ncd topDesign_timesim.vhd 
-- Device	: 7z020clg484-1 (ADVANCED 1.04 2012-12-04)
-- Input file	: topDesign.ncd
-- Output file	: F:\PUF\period_cul\netgen\par\topDesign_timesim.vhd
-- # of Entities	: 1
-- Design Name	: topDesign
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

entity topDesign is
  port (
    sysClock : in STD_LOGIC := 'X'; 
    sysRst : in STD_LOGIC := 'X'; 
    sysConf0 : in STD_LOGIC := 'X'; 
    sysConf1 : in STD_LOGIC := 'X'; 
    sysSel : in STD_LOGIC_VECTOR ( 3 downto 0 ); 
    sysout : out STD_LOGIC_VECTOR ( 7 downto 0 ) 
  );
end topDesign;

architecture Structure of topDesign is
  signal sysConf0_IBUF_710 : STD_LOGIC; 
  signal sysConf1_IBUF_711 : STD_LOGIC; 
  signal roDriver_inst_diverOutBuf_712 : STD_LOGIC; 
  signal ro_to_counter : STD_LOGIC; 
  signal N21_0 : STD_LOGIC; 
  signal Result_0_0 : STD_LOGIC; 
  signal Result_1_0 : STD_LOGIC; 
  signal Result_2_0 : STD_LOGIC; 
  signal counter_inst_Mcount_countBuf_cy_3_Q_726 : STD_LOGIC; 
  signal Result_3_0 : STD_LOGIC; 
  signal Result_4_0 : STD_LOGIC; 
  signal Result_5_0 : STD_LOGIC; 
  signal Result_6_0 : STD_LOGIC; 
  signal counter_inst_Mcount_countBuf_cy_7_Q_735 : STD_LOGIC; 
  signal Result_7_0 : STD_LOGIC; 
  signal Result_8_0 : STD_LOGIC; 
  signal Result_9_0 : STD_LOGIC; 
  signal Result_10_0 : STD_LOGIC; 
  signal counter_inst_Mcount_countBuf_cy_11_Q_744 : STD_LOGIC; 
  signal Result_11_0 : STD_LOGIC; 
  signal Result_12_0 : STD_LOGIC; 
  signal Result_13_0 : STD_LOGIC; 
  signal Result_14_0 : STD_LOGIC; 
  signal counter_inst_Mcount_countBuf_cy_15_Q_753 : STD_LOGIC; 
  signal Result_15_0 : STD_LOGIC; 
  signal Result_16_0 : STD_LOGIC; 
  signal Result_17_0 : STD_LOGIC; 
  signal Result_18_0 : STD_LOGIC; 
  signal counter_inst_Mcount_countBuf_cy_19_Q_762 : STD_LOGIC; 
  signal Result_19_0 : STD_LOGIC; 
  signal Result_20_0 : STD_LOGIC; 
  signal Result_21_0 : STD_LOGIC; 
  signal Result_22_0 : STD_LOGIC; 
  signal counter_inst_Mcount_countBuf_cy_23_Q_771 : STD_LOGIC; 
  signal Result_23_0 : STD_LOGIC; 
  signal Result_24_0 : STD_LOGIC; 
  signal Result_25_0 : STD_LOGIC; 
  signal Result_26_0 : STD_LOGIC; 
  signal counter_inst_Mcount_countBuf_cy_27_Q_780 : STD_LOGIC; 
  signal Result_27_0 : STD_LOGIC; 
  signal Result_28_0 : STD_LOGIC; 
  signal Result_29_0 : STD_LOGIC; 
  signal Result_30_0 : STD_LOGIC; 
  signal Result_31_0 : STD_LOGIC; 
  signal roDriver_inst_PWR_10_o_timeInv_9_equal_1_o_inv : STD_LOGIC; 
  signal clk_to_driver : STD_LOGIC; 
  signal roDriver_inst_Mcount_timeInv_cy_3_Q_793 : STD_LOGIC; 
  signal sysRst_IBUF_794 : STD_LOGIC; 
  signal roDriver_inst_Mcount_timeInv_cy_7_Q_798 : STD_LOGIC; 
  signal roDriver_inst_PWR_10_o_timeInv_9_equal_1_o : STD_LOGIC; 
  signal clock_inst_clkin1 : STD_LOGIC; 
  signal sysSel_0_IBUF_804 : STD_LOGIC; 
  signal sysSel_1_IBUF_805 : STD_LOGIC; 
  signal sysout_0_OBUF_806 : STD_LOGIC; 
  signal sysSel_2_IBUF_807 : STD_LOGIC; 
  signal sysout_1_OBUF_808 : STD_LOGIC; 
  signal sysSel_3_IBUF_809 : STD_LOGIC; 
  signal sysout_2_OBUF_810 : STD_LOGIC; 
  signal sysout_3_OBUF_811 : STD_LOGIC; 
  signal sysout_4_OBUF_812 : STD_LOGIC; 
  signal sysout_5_OBUF_813 : STD_LOGIC; 
  signal sysout_6_OBUF_814 : STD_LOGIC; 
  signal sysout_7_OBUF_815 : STD_LOGIC; 
  signal clock_inst_clkfbout : STD_LOGIC; 
  signal clock_inst_clkfbout_buf : STD_LOGIC; 
  signal clock_inst_clkout0 : STD_LOGIC; 
  signal roDriver_inst_PWR_10_o_timeInv_9_equal_1_o_9_1 : STD_LOGIC; 
  signal roDriver_inst_dCounterBuf_821 : STD_LOGIC; 
  signal counter_inst_countBuf_31_PWR_12_o_equal_1_o : STD_LOGIC; 
  signal N23 : STD_LOGIC; 
  signal counter_inst_countBuf_31_PWR_12_o_equal_1_o_31_Q : STD_LOGIC; 
  signal counter_inst_countBuf_31_PWR_12_o_equal_1_o_31_1_825 : STD_LOGIC; 
  signal counter_inst_countBuf_31_PWR_12_o_equal_1_o_31_2_826 : STD_LOGIC; 
  signal counter_inst_countBuf_31_PWR_12_o_equal_1_o_31_3_827 : STD_LOGIC; 
  signal counter_inst_countBuf_31_PWR_12_o_equal_1_o_31_4_828 : STD_LOGIC; 
  signal counter_inst_countBuf_31_PWR_12_o_equal_1_o_31_5_829 : STD_LOGIC; 
  signal N19 : STD_LOGIC; 
  signal N5 : STD_LOGIC; 
  signal N15 : STD_LOGIC; 
  signal N13 : STD_LOGIC; 
  signal N17 : STD_LOGIC; 
  signal N3 : STD_LOGIC; 
  signal N7 : STD_LOGIC; 
  signal N11 : STD_LOGIC; 
  signal N9 : STD_LOGIC; 
  signal ro_module_inst_roModule_inst_LUT5_out : STD_LOGIC; 
  signal ro_module_inst_roModule_inst_LUT6_out : STD_LOGIC; 
  signal ro_module_inst_roModule_inst_NAND_out : STD_LOGIC; 
  signal ro_module_inst_roModule_inst_MUX1_out : STD_LOGIC; 
  signal ro_module_inst_roModule_inst_LUT4_out : STD_LOGIC; 
  signal ro_module_inst_roModule_inst_LUT1_out : STD_LOGIC; 
  signal ro_module_inst_roModule_inst_LUT2_out : STD_LOGIC; 
  signal LUT3_out : STD_LOGIC; 
  signal MUX1_out_pack_3 : STD_LOGIC; 
  signal LUT7_out : STD_LOGIC; 
  signal Ro_out_OBUF_pack_3 : STD_LOGIC; 
  signal counter_inst_countBuf_1_rt_44 : STD_LOGIC; 
  signal counter_inst_countBuf_2_rt_41 : STD_LOGIC; 
  signal counter_inst_countBuf_3_rt_32 : STD_LOGIC; 
  signal counter_inst_countBuf_4_rt_69 : STD_LOGIC; 
  signal counter_inst_countBuf_5_rt_66 : STD_LOGIC; 
  signal counter_inst_countBuf_6_rt_63 : STD_LOGIC; 
  signal counter_inst_countBuf_7_rt_54 : STD_LOGIC; 
  signal counter_inst_countBuf_8_rt_91 : STD_LOGIC; 
  signal counter_inst_countBuf_9_rt_88 : STD_LOGIC; 
  signal counter_inst_countBuf_10_rt_85 : STD_LOGIC; 
  signal counter_inst_countBuf_11_rt_76 : STD_LOGIC; 
  signal counter_inst_countBuf_12_rt_113 : STD_LOGIC; 
  signal counter_inst_countBuf_13_rt_110 : STD_LOGIC; 
  signal counter_inst_countBuf_14_rt_107 : STD_LOGIC; 
  signal counter_inst_countBuf_15_rt_98 : STD_LOGIC; 
  signal counter_inst_countBuf_16_rt_135 : STD_LOGIC; 
  signal counter_inst_countBuf_17_rt_132 : STD_LOGIC; 
  signal counter_inst_countBuf_18_rt_129 : STD_LOGIC; 
  signal counter_inst_countBuf_19_rt_120 : STD_LOGIC; 
  signal counter_inst_countBuf_20_rt_157 : STD_LOGIC; 
  signal counter_inst_countBuf_21_rt_154 : STD_LOGIC; 
  signal counter_inst_countBuf_22_rt_151 : STD_LOGIC; 
  signal counter_inst_countBuf_23_rt_142 : STD_LOGIC; 
  signal counter_inst_countBuf_24_rt_179 : STD_LOGIC; 
  signal counter_inst_countBuf_25_rt_176 : STD_LOGIC; 
  signal counter_inst_countBuf_26_rt_173 : STD_LOGIC; 
  signal counter_inst_countBuf_27_rt_164 : STD_LOGIC; 
  signal counter_inst_countBuf_28_rt_199 : STD_LOGIC; 
  signal counter_inst_countBuf_29_rt_196 : STD_LOGIC; 
  signal counter_inst_countBuf_30_rt_193 : STD_LOGIC; 
  signal counter_inst_countBuf_31_rt_186 : STD_LOGIC; 
  signal roDriver_inst_timeInv_0_rt_226 : STD_LOGIC; 
  signal roDriver_inst_timeInv_1_rt_221 : STD_LOGIC; 
  signal roDriver_inst_timeInv_2_rt_217 : STD_LOGIC; 
  signal roDriver_inst_Mcount_timeInv : STD_LOGIC; 
  signal roDriver_inst_Mcount_timeInv1 : STD_LOGIC; 
  signal roDriver_inst_Mcount_timeInv2 : STD_LOGIC; 
  signal roDriver_inst_Mcount_timeInv3 : STD_LOGIC; 
  signal roDriver_inst_timeInv_3_rt_207 : STD_LOGIC; 
  signal roDriver_inst_timeInv_4_rt_254 : STD_LOGIC; 
  signal roDriver_inst_timeInv_5_rt_250 : STD_LOGIC; 
  signal roDriver_inst_timeInv_6_rt_246 : STD_LOGIC; 
  signal roDriver_inst_Mcount_timeInv4 : STD_LOGIC; 
  signal roDriver_inst_Mcount_timeInv5 : STD_LOGIC; 
  signal roDriver_inst_Mcount_timeInv6 : STD_LOGIC; 
  signal roDriver_inst_Mcount_timeInv7 : STD_LOGIC; 
  signal roDriver_inst_timeInv_7_rt_235 : STD_LOGIC; 
  signal roDriver_inst_timeInv_8_rt_271 : STD_LOGIC; 
  signal roDriver_inst_Mcount_timeInv8 : STD_LOGIC; 
  signal roDriver_inst_Mcount_timeInv9 : STD_LOGIC; 
  signal clock_inst_mmcm_adv_inst_DO0 : STD_LOGIC; 
  signal clock_inst_mmcm_adv_inst_DO1 : STD_LOGIC; 
  signal clock_inst_mmcm_adv_inst_DO2 : STD_LOGIC; 
  signal clock_inst_mmcm_adv_inst_DO3 : STD_LOGIC; 
  signal clock_inst_mmcm_adv_inst_DO4 : STD_LOGIC; 
  signal clock_inst_mmcm_adv_inst_DO5 : STD_LOGIC; 
  signal clock_inst_mmcm_adv_inst_DO6 : STD_LOGIC; 
  signal clock_inst_mmcm_adv_inst_DO7 : STD_LOGIC; 
  signal clock_inst_mmcm_adv_inst_DO8 : STD_LOGIC; 
  signal clock_inst_mmcm_adv_inst_DO9 : STD_LOGIC; 
  signal clock_inst_mmcm_adv_inst_DO10 : STD_LOGIC; 
  signal clock_inst_mmcm_adv_inst_DO11 : STD_LOGIC; 
  signal clock_inst_mmcm_adv_inst_DO12 : STD_LOGIC; 
  signal clock_inst_mmcm_adv_inst_DO13 : STD_LOGIC; 
  signal clock_inst_mmcm_adv_inst_DO14 : STD_LOGIC; 
  signal clock_inst_mmcm_adv_inst_DO15 : STD_LOGIC; 
  signal clock_inst_mmcm_adv_inst_LOCKED : STD_LOGIC; 
  signal clock_inst_mmcm_adv_inst_CLKOUT6 : STD_LOGIC; 
  signal clock_inst_mmcm_adv_inst_PSDONE : STD_LOGIC; 
  signal clock_inst_mmcm_adv_inst_CLKOUT2B : STD_LOGIC; 
  signal clock_inst_mmcm_adv_inst_CLKOUT2 : STD_LOGIC; 
  signal clock_inst_mmcm_adv_inst_CLKOUT0B : STD_LOGIC; 
  signal clock_inst_mmcm_adv_inst_CLKINSTOPPED : STD_LOGIC; 
  signal clock_inst_mmcm_adv_inst_CLKOUT1B : STD_LOGIC; 
  signal clock_inst_mmcm_adv_inst_CLKOUT4 : STD_LOGIC; 
  signal clock_inst_mmcm_adv_inst_DRDY : STD_LOGIC; 
  signal clock_inst_mmcm_adv_inst_CLKOUT5 : STD_LOGIC; 
  signal clock_inst_mmcm_adv_inst_CLKOUT1 : STD_LOGIC; 
  signal clock_inst_mmcm_adv_inst_CLKFBOUTB : STD_LOGIC; 
  signal clock_inst_mmcm_adv_inst_CLKFBSTOPPED : STD_LOGIC; 
  signal clock_inst_mmcm_adv_inst_CLKOUT3B : STD_LOGIC; 
  signal clock_inst_mmcm_adv_inst_CLKOUT3 : STD_LOGIC; 
  signal clock_inst_mmcm_adv_inst_CLKIN1_INT : STD_LOGIC; 
  signal clock_inst_mmcm_adv_inst_PSEN_INT : STD_LOGIC; 
  signal clock_inst_mmcm_adv_inst_PSINCDEC_INT : STD_LOGIC; 
  signal clock_inst_mmcm_adv_inst_RST_INT : STD_LOGIC; 
  signal clock_inst_mmcm_adv_inst_CLKIN2_INT : STD_LOGIC; 
  signal clock_inst_mmcm_adv_inst_CLKINSEL_INT : STD_LOGIC; 
  signal clock_inst_mmcm_adv_inst_PWRDWN_INT : STD_LOGIC; 
  signal clock_inst_mmcm_adv_inst_CLKFBIN_INT : STD_LOGIC; 
  signal roDriver_inst_GND_41_o_GND_41_o_MUX_22_o : STD_LOGIC; 
  signal N21 : STD_LOGIC; 
  signal roDriver_inst_PWR_10_o_GND_41_o_MUX_23_o : STD_LOGIC; 
  signal counter_inst_Mcount_countBuf_eqn_20 : STD_LOGIC; 
  signal counter_inst_Mcount_countBuf_eqn_21 : STD_LOGIC; 
  signal counter_inst_Mcount_countBuf_eqn_22 : STD_LOGIC; 
  signal counter_inst_Mcount_countBuf_eqn_0 : STD_LOGIC; 
  signal counter_inst_Mcount_countBuf_eqn_23 : STD_LOGIC; 
  signal counter_inst_Mcount_countBuf_eqn_24 : STD_LOGIC; 
  signal counter_inst_Mcount_countBuf_eqn_26 : STD_LOGIC; 
  signal counter_inst_Mcount_countBuf_eqn_1 : STD_LOGIC; 
  signal counter_inst_Mcount_countBuf_eqn_10 : STD_LOGIC; 
  signal counter_inst_Mcount_countBuf_eqn_7 : STD_LOGIC; 
  signal counter_inst_Mcount_countBuf_eqn_8 : STD_LOGIC; 
  signal counter_inst_Mcount_countBuf_eqn_2 : STD_LOGIC; 
  signal counter_inst_Mcount_countBuf_eqn_11 : STD_LOGIC; 
  signal counter_inst_Mcount_countBuf_eqn_9 : STD_LOGIC; 
  signal counter_inst_Mcount_countBuf_eqn_14 : STD_LOGIC; 
  signal counter_inst_Mcount_countBuf_eqn_13 : STD_LOGIC; 
  signal counter_inst_Mcount_countBuf_eqn_12 : STD_LOGIC; 
  signal counter_inst_Mcount_countBuf_eqn_15 : STD_LOGIC; 
  signal counter_inst_Mcount_countBuf_eqn_18 : STD_LOGIC; 
  signal counter_inst_Mcount_countBuf_eqn_17 : STD_LOGIC; 
  signal counter_inst_Mcount_countBuf_eqn_16 : STD_LOGIC; 
  signal counter_inst_Mcount_countBuf_eqn_19 : STD_LOGIC; 
  signal counter_inst_Mcount_countBuf_eqn_25 : STD_LOGIC; 
  signal counter_inst_Mcount_countBuf_eqn_30 : STD_LOGIC; 
  signal counter_inst_Mcount_countBuf_eqn_29 : STD_LOGIC; 
  signal counter_inst_Mcount_countBuf_eqn_28 : STD_LOGIC; 
  signal counter_inst_Mcount_countBuf_eqn_27 : STD_LOGIC; 
  signal counter_inst_Mcount_countBuf_eqn_6 : STD_LOGIC; 
  signal counter_inst_Mcount_countBuf_eqn_5 : STD_LOGIC; 
  signal counter_inst_Mcount_countBuf_eqn_4 : STD_LOGIC; 
  signal counter_inst_Mcount_countBuf_eqn_3 : STD_LOGIC; 
  signal counter_inst_Mcount_countBuf_eqn_31 : STD_LOGIC; 
  signal NlwBufferSignal_roDriver_inst_timeInv_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_roDriver_inst_timeInv_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_roDriver_inst_timeInv_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_roDriver_inst_timeInv_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_roDriver_inst_timeInv_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_roDriver_inst_timeInv_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_roDriver_inst_timeInv_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_roDriver_inst_timeInv_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_roDriver_inst_timeInv_9_CLK : STD_LOGIC; 
  signal NlwBufferSignal_roDriver_inst_timeInv_8_CLK : STD_LOGIC; 
  signal NlwBufferSignal_sysout_0_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_sysout_1_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_sysout_2_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_sysout_3_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_sysout_4_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_sysout_5_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_sysout_6_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_sysout_7_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_clock_inst_clkf_buf_IN : STD_LOGIC; 
  signal NlwBufferSignal_clock_inst_clkout1_buf_IN : STD_LOGIC; 
  signal NlwBufferSignal_roDriver_inst_diverOutBuf_CLK : STD_LOGIC; 
  signal NlwBufferSignal_roDriver_inst_dCounterBuf_CLK : STD_LOGIC; 
  signal NlwBufferSignal_counter_inst_countBuf_22_CLK : STD_LOGIC; 
  signal NlwBufferSignal_counter_inst_countBuf_21_CLK : STD_LOGIC; 
  signal NlwBufferSignal_counter_inst_countBuf_20_CLK : STD_LOGIC; 
  signal NlwBufferSignal_counter_inst_countBuf_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_counter_inst_countBuf_26_CLK : STD_LOGIC; 
  signal NlwBufferSignal_counter_inst_countBuf_24_CLK : STD_LOGIC; 
  signal NlwBufferSignal_counter_inst_countBuf_23_CLK : STD_LOGIC; 
  signal NlwBufferSignal_counter_inst_countBuf_10_CLK : STD_LOGIC; 
  signal NlwBufferSignal_counter_inst_countBuf_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_counter_inst_countBuf_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_counter_inst_countBuf_8_CLK : STD_LOGIC; 
  signal NlwBufferSignal_counter_inst_countBuf_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_counter_inst_countBuf_9_CLK : STD_LOGIC; 
  signal NlwBufferSignal_counter_inst_countBuf_11_CLK : STD_LOGIC; 
  signal NlwBufferSignal_counter_inst_countBuf_14_CLK : STD_LOGIC; 
  signal NlwBufferSignal_counter_inst_countBuf_13_CLK : STD_LOGIC; 
  signal NlwBufferSignal_counter_inst_countBuf_12_CLK : STD_LOGIC; 
  signal NlwBufferSignal_counter_inst_countBuf_15_CLK : STD_LOGIC; 
  signal NlwBufferSignal_counter_inst_countBuf_18_CLK : STD_LOGIC; 
  signal NlwBufferSignal_counter_inst_countBuf_17_CLK : STD_LOGIC; 
  signal NlwBufferSignal_counter_inst_countBuf_16_CLK : STD_LOGIC; 
  signal NlwBufferSignal_counter_inst_countBuf_19_CLK : STD_LOGIC; 
  signal NlwBufferSignal_counter_inst_countBuf_25_CLK : STD_LOGIC; 
  signal NlwBufferSignal_counter_inst_countBuf_30_CLK : STD_LOGIC; 
  signal NlwBufferSignal_counter_inst_countBuf_29_CLK : STD_LOGIC; 
  signal NlwBufferSignal_counter_inst_countBuf_28_CLK : STD_LOGIC; 
  signal NlwBufferSignal_counter_inst_countBuf_27_CLK : STD_LOGIC; 
  signal NlwBufferSignal_counter_inst_countBuf_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_counter_inst_countBuf_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_counter_inst_countBuf_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_counter_inst_countBuf_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_counter_inst_countBuf_31_CLK : STD_LOGIC; 
  signal NLW_N0_5_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_ProtoComp1_CYINITGND_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_counter_inst_Mcount_countBuf_cy_3_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_counter_inst_Mcount_countBuf_cy_3_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_counter_inst_Mcount_countBuf_cy_3_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_4_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_3_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N1_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_9_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_counter_inst_Mcount_countBuf_cy_7_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_counter_inst_Mcount_countBuf_cy_7_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_counter_inst_Mcount_countBuf_cy_7_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_8_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_7_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_6_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_13_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_counter_inst_Mcount_countBuf_cy_11_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_counter_inst_Mcount_countBuf_cy_11_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_counter_inst_Mcount_countBuf_cy_11_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_12_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_11_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_10_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_17_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_counter_inst_Mcount_countBuf_cy_15_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_counter_inst_Mcount_countBuf_cy_15_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_counter_inst_Mcount_countBuf_cy_15_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_16_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_15_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_14_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_21_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_counter_inst_Mcount_countBuf_cy_19_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_counter_inst_Mcount_countBuf_cy_19_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_counter_inst_Mcount_countBuf_cy_19_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_20_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_19_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_18_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_25_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_counter_inst_Mcount_countBuf_cy_23_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_counter_inst_Mcount_countBuf_cy_23_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_counter_inst_Mcount_countBuf_cy_23_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_24_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_23_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_22_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_29_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_counter_inst_Mcount_countBuf_cy_27_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_counter_inst_Mcount_countBuf_cy_27_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_counter_inst_Mcount_countBuf_cy_27_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_28_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_27_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_26_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_counter_inst_Mcount_countBuf_xor_31_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_counter_inst_Mcount_countBuf_xor_31_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_counter_inst_Mcount_countBuf_xor_31_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_counter_inst_Mcount_countBuf_xor_31_CO_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_counter_inst_Mcount_countBuf_xor_31_DI_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_32_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_31_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_30_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal VCC : STD_LOGIC; 
  signal GND : STD_LOGIC; 
  signal NLW_N0_70_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_roDriver_inst_Mcount_timeInv_cy_3_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_roDriver_inst_Mcount_timeInv_cy_3_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_roDriver_inst_Mcount_timeInv_cy_3_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_71_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_72_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_73_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_66_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_roDriver_inst_Mcount_timeInv_cy_7_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_roDriver_inst_Mcount_timeInv_cy_7_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_roDriver_inst_Mcount_timeInv_cy_7_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_67_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_68_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_69_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_roDriver_inst_Mcount_timeInv_xor_9_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_roDriver_inst_Mcount_timeInv_xor_9_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_roDriver_inst_Mcount_timeInv_xor_9_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_roDriver_inst_Mcount_timeInv_xor_9_CO_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_roDriver_inst_Mcount_timeInv_xor_9_DI_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_roDriver_inst_Mcount_timeInv_xor_9_DI_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_roDriver_inst_Mcount_timeInv_xor_9_DI_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_roDriver_inst_Mcount_timeInv_xor_9_O_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_roDriver_inst_Mcount_timeInv_xor_9_O_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_roDriver_inst_Mcount_timeInv_xor_9_S_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_roDriver_inst_Mcount_timeInv_xor_9_S_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_65_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal roDriver_inst_timeInv : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal counter_inst_countBuf : STD_LOGIC_VECTOR ( 31 downto 0 ); 
  signal counter_inst_Mcount_countBuf_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal Result : STD_LOGIC_VECTOR ( 31 downto 0 ); 
  signal roDriver_inst_Mcount_timeInv_lut : STD_LOGIC_VECTOR ( 9 downto 9 ); 
begin
  ro_module_inst_roModule_inst_ro_module_inst_roModule_inst_LUT1_out_ro_module_inst_roModule_inst_LUT1_out_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => MUX1_out_pack_3,
      O => ro_module_inst_roModule_inst_MUX1_out
    );
  ro_module_inst_roModule_inst_MUXF7_inst1 : X_MUX2
    generic map(
      LOC => "SLICE_X1Y15"
    )
    port map (
      IA => ro_module_inst_roModule_inst_LUT1_out,
      IB => LUT3_out,
      O => MUX1_out_pack_3,
      SEL => sysConf0_IBUF_710
    );
  ro_module_inst_roModule_inst_LUT_inst1 : X_LUT6
    generic map(
      LOC => "SLICE_X1Y15",
      INIT => X"0F0F0F0F0F0F0F0F"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR5 => '1',
      ADR3 => '1',
      ADR4 => '1',
      ADR2 => ro_module_inst_roModule_inst_NAND_out,
      O => ro_module_inst_roModule_inst_LUT1_out
    );
  ro_module_inst_roModule_inst_LUT_inst3 : X_LUT6
    generic map(
      LOC => "SLICE_X1Y15",
      INIT => X"5555555555555555"
    )
    port map (
      ADR5 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      ADR0 => ro_module_inst_roModule_inst_LUT2_out,
      O => LUT3_out
    );
  ro_module_inst_roModule_inst_LUT_inst4 : X_LUT6
    generic map(
      LOC => "SLICE_X1Y15",
      INIT => X"0000FFFF0000FFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR5 => '1',
      ADR4 => ro_module_inst_roModule_inst_MUX1_out,
      O => ro_module_inst_roModule_inst_LUT4_out
    );
  ro_module_inst_roModule_inst_LUT_inst2 : X_LUT6
    generic map(
      LOC => "SLICE_X1Y15",
      INIT => X"5555555555555555"
    )
    port map (
      ADR5 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      ADR0 => ro_module_inst_roModule_inst_LUT1_out,
      O => ro_module_inst_roModule_inst_LUT2_out
    );
  ro_module_inst_roModule_inst_ro_module_inst_roModule_inst_LUT5_out_ro_module_inst_roModule_inst_LUT5_out_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Ro_out_OBUF_pack_3,
      O => ro_to_counter
    );
  ro_module_inst_roModule_inst_MUXF7_inst2 : X_MUX2
    generic map(
      LOC => "SLICE_X0Y15"
    )
    port map (
      IA => ro_module_inst_roModule_inst_LUT5_out,
      IB => LUT7_out,
      O => Ro_out_OBUF_pack_3,
      SEL => sysConf1_IBUF_711
    );
  ro_module_inst_roModule_inst_LUT_inst5 : X_LUT6
    generic map(
      LOC => "SLICE_X0Y15",
      INIT => X"0F0F0F0F0F0F0F0F"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR5 => '1',
      ADR3 => '1',
      ADR4 => '1',
      ADR2 => ro_module_inst_roModule_inst_LUT4_out,
      O => ro_module_inst_roModule_inst_LUT5_out
    );
  ro_module_inst_roModule_inst_LUT_inst7 : X_LUT6
    generic map(
      LOC => "SLICE_X0Y15",
      INIT => X"5555555555555555"
    )
    port map (
      ADR5 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      ADR0 => ro_module_inst_roModule_inst_LUT6_out,
      O => LUT7_out
    );
  ro_module_inst_roModule_inst_LUT2_inst1 : X_LUT6
    generic map(
      LOC => "SLICE_X0Y15",
      INIT => X"F0F00000F0F00000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR5 => '1',
      ADR3 => '1',
      ADR2 => roDriver_inst_diverOutBuf_712,
      ADR4 => ro_to_counter,
      O => ro_module_inst_roModule_inst_NAND_out
    );
  ro_module_inst_roModule_inst_LUT_inst6 : X_LUT6
    generic map(
      LOC => "SLICE_X0Y15",
      INIT => X"5555555555555555"
    )
    port map (
      ADR5 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      ADR0 => ro_module_inst_roModule_inst_LUT5_out,
      O => ro_module_inst_roModule_inst_LUT6_out
    );
  counter_inst_Mcount_countBuf_cy_3_counter_inst_Mcount_countBuf_cy_3_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Result(3),
      O => Result_3_0
    );
  counter_inst_Mcount_countBuf_cy_3_counter_inst_Mcount_countBuf_cy_3_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Result(2),
      O => Result_2_0
    );
  counter_inst_Mcount_countBuf_cy_3_counter_inst_Mcount_countBuf_cy_3_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Result(1),
      O => Result_1_0
    );
  counter_inst_Mcount_countBuf_cy_3_counter_inst_Mcount_countBuf_cy_3_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Result(0),
      O => Result_0_0
    );
  counter_inst_countBuf_3_rt : X_LUT6
    generic map(
      LOC => "SLICE_X86Y59",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => counter_inst_countBuf(3),
      ADR5 => '1',
      O => counter_inst_countBuf_3_rt_32
    );
  N0_5_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X86Y59",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_5_D5LUT_O_UNCONNECTED
    );
  ProtoComp1_CYINITGND : X_ZERO
    generic map(
      LOC => "SLICE_X86Y59"
    )
    port map (
      O => NLW_ProtoComp1_CYINITGND_O_UNCONNECTED
    );
  counter_inst_Mcount_countBuf_cy_3_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X86Y59"
    )
    port map (
      CI => '0',
      CYINIT => '0',
      CO(3) => counter_inst_Mcount_countBuf_cy_3_Q_726,
      CO(2) => NLW_counter_inst_Mcount_countBuf_cy_3_CO_2_UNCONNECTED,
      CO(1) => NLW_counter_inst_Mcount_countBuf_cy_3_CO_1_UNCONNECTED,
      CO(0) => NLW_counter_inst_Mcount_countBuf_cy_3_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '1',
      O(3) => Result(3),
      O(2) => Result(2),
      O(1) => Result(1),
      O(0) => Result(0),
      S(3) => counter_inst_countBuf_3_rt_32,
      S(2) => counter_inst_countBuf_2_rt_41,
      S(1) => counter_inst_countBuf_1_rt_44,
      S(0) => counter_inst_Mcount_countBuf_lut(0)
    );
  counter_inst_countBuf_2_rt : X_LUT6
    generic map(
      LOC => "SLICE_X86Y59",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => counter_inst_countBuf(2),
      ADR5 => '1',
      O => counter_inst_countBuf_2_rt_41
    );
  N0_4_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X86Y59",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_4_C5LUT_O_UNCONNECTED
    );
  counter_inst_countBuf_1_rt : X_LUT6
    generic map(
      LOC => "SLICE_X86Y59",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => counter_inst_countBuf(1),
      ADR5 => '1',
      O => counter_inst_countBuf_1_rt_44
    );
  N0_3_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X86Y59",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_3_B5LUT_O_UNCONNECTED
    );
  counter_inst_Mcount_countBuf_lut_0_INV_0 : X_LUT6
    generic map(
      LOC => "SLICE_X86Y59",
      INIT => X"0000FFFF0000FFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => counter_inst_countBuf(0),
      ADR5 => '1',
      O => counter_inst_Mcount_countBuf_lut(0)
    );
  N1_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X86Y59",
      INIT => X"FFFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N1_A5LUT_O_UNCONNECTED
    );
  counter_inst_Mcount_countBuf_cy_7_counter_inst_Mcount_countBuf_cy_7_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Result(7),
      O => Result_7_0
    );
  counter_inst_Mcount_countBuf_cy_7_counter_inst_Mcount_countBuf_cy_7_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Result(6),
      O => Result_6_0
    );
  counter_inst_Mcount_countBuf_cy_7_counter_inst_Mcount_countBuf_cy_7_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Result(5),
      O => Result_5_0
    );
  counter_inst_Mcount_countBuf_cy_7_counter_inst_Mcount_countBuf_cy_7_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Result(4),
      O => Result_4_0
    );
  counter_inst_countBuf_7_rt : X_LUT6
    generic map(
      LOC => "SLICE_X86Y60",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => counter_inst_countBuf(7),
      ADR5 => '1',
      O => counter_inst_countBuf_7_rt_54
    );
  N0_9_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X86Y60",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_9_D5LUT_O_UNCONNECTED
    );
  counter_inst_Mcount_countBuf_cy_7_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X86Y60"
    )
    port map (
      CI => counter_inst_Mcount_countBuf_cy_3_Q_726,
      CYINIT => '0',
      CO(3) => counter_inst_Mcount_countBuf_cy_7_Q_735,
      CO(2) => NLW_counter_inst_Mcount_countBuf_cy_7_CO_2_UNCONNECTED,
      CO(1) => NLW_counter_inst_Mcount_countBuf_cy_7_CO_1_UNCONNECTED,
      CO(0) => NLW_counter_inst_Mcount_countBuf_cy_7_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => Result(7),
      O(2) => Result(6),
      O(1) => Result(5),
      O(0) => Result(4),
      S(3) => counter_inst_countBuf_7_rt_54,
      S(2) => counter_inst_countBuf_6_rt_63,
      S(1) => counter_inst_countBuf_5_rt_66,
      S(0) => counter_inst_countBuf_4_rt_69
    );
  counter_inst_countBuf_6_rt : X_LUT6
    generic map(
      LOC => "SLICE_X86Y60",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => counter_inst_countBuf(6),
      ADR5 => '1',
      O => counter_inst_countBuf_6_rt_63
    );
  N0_8_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X86Y60",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_8_C5LUT_O_UNCONNECTED
    );
  counter_inst_countBuf_5_rt : X_LUT6
    generic map(
      LOC => "SLICE_X86Y60",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => counter_inst_countBuf(5),
      ADR5 => '1',
      O => counter_inst_countBuf_5_rt_66
    );
  N0_7_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X86Y60",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_7_B5LUT_O_UNCONNECTED
    );
  counter_inst_countBuf_4_rt : X_LUT6
    generic map(
      LOC => "SLICE_X86Y60",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => counter_inst_countBuf(4),
      ADR5 => '1',
      O => counter_inst_countBuf_4_rt_69
    );
  N0_6_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X86Y60",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_6_A5LUT_O_UNCONNECTED
    );
  counter_inst_Mcount_countBuf_cy_11_counter_inst_Mcount_countBuf_cy_11_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Result(11),
      O => Result_11_0
    );
  counter_inst_Mcount_countBuf_cy_11_counter_inst_Mcount_countBuf_cy_11_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Result(10),
      O => Result_10_0
    );
  counter_inst_Mcount_countBuf_cy_11_counter_inst_Mcount_countBuf_cy_11_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Result(9),
      O => Result_9_0
    );
  counter_inst_Mcount_countBuf_cy_11_counter_inst_Mcount_countBuf_cy_11_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Result(8),
      O => Result_8_0
    );
  counter_inst_countBuf_11_rt : X_LUT6
    generic map(
      LOC => "SLICE_X86Y61",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => counter_inst_countBuf(11),
      ADR5 => '1',
      O => counter_inst_countBuf_11_rt_76
    );
  N0_13_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X86Y61",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_13_D5LUT_O_UNCONNECTED
    );
  counter_inst_Mcount_countBuf_cy_11_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X86Y61"
    )
    port map (
      CI => counter_inst_Mcount_countBuf_cy_7_Q_735,
      CYINIT => '0',
      CO(3) => counter_inst_Mcount_countBuf_cy_11_Q_744,
      CO(2) => NLW_counter_inst_Mcount_countBuf_cy_11_CO_2_UNCONNECTED,
      CO(1) => NLW_counter_inst_Mcount_countBuf_cy_11_CO_1_UNCONNECTED,
      CO(0) => NLW_counter_inst_Mcount_countBuf_cy_11_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => Result(11),
      O(2) => Result(10),
      O(1) => Result(9),
      O(0) => Result(8),
      S(3) => counter_inst_countBuf_11_rt_76,
      S(2) => counter_inst_countBuf_10_rt_85,
      S(1) => counter_inst_countBuf_9_rt_88,
      S(0) => counter_inst_countBuf_8_rt_91
    );
  counter_inst_countBuf_10_rt : X_LUT6
    generic map(
      LOC => "SLICE_X86Y61",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => counter_inst_countBuf(10),
      ADR5 => '1',
      O => counter_inst_countBuf_10_rt_85
    );
  N0_12_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X86Y61",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_12_C5LUT_O_UNCONNECTED
    );
  counter_inst_countBuf_9_rt : X_LUT6
    generic map(
      LOC => "SLICE_X86Y61",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => counter_inst_countBuf(9),
      ADR5 => '1',
      O => counter_inst_countBuf_9_rt_88
    );
  N0_11_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X86Y61",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_11_B5LUT_O_UNCONNECTED
    );
  counter_inst_countBuf_8_rt : X_LUT6
    generic map(
      LOC => "SLICE_X86Y61",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => counter_inst_countBuf(8),
      ADR5 => '1',
      O => counter_inst_countBuf_8_rt_91
    );
  N0_10_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X86Y61",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_10_A5LUT_O_UNCONNECTED
    );
  counter_inst_Mcount_countBuf_cy_15_counter_inst_Mcount_countBuf_cy_15_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Result(15),
      O => Result_15_0
    );
  counter_inst_Mcount_countBuf_cy_15_counter_inst_Mcount_countBuf_cy_15_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Result(14),
      O => Result_14_0
    );
  counter_inst_Mcount_countBuf_cy_15_counter_inst_Mcount_countBuf_cy_15_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Result(13),
      O => Result_13_0
    );
  counter_inst_Mcount_countBuf_cy_15_counter_inst_Mcount_countBuf_cy_15_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Result(12),
      O => Result_12_0
    );
  counter_inst_countBuf_15_rt : X_LUT6
    generic map(
      LOC => "SLICE_X86Y62",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => counter_inst_countBuf(15),
      ADR5 => '1',
      O => counter_inst_countBuf_15_rt_98
    );
  N0_17_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X86Y62",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_17_D5LUT_O_UNCONNECTED
    );
  counter_inst_Mcount_countBuf_cy_15_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X86Y62"
    )
    port map (
      CI => counter_inst_Mcount_countBuf_cy_11_Q_744,
      CYINIT => '0',
      CO(3) => counter_inst_Mcount_countBuf_cy_15_Q_753,
      CO(2) => NLW_counter_inst_Mcount_countBuf_cy_15_CO_2_UNCONNECTED,
      CO(1) => NLW_counter_inst_Mcount_countBuf_cy_15_CO_1_UNCONNECTED,
      CO(0) => NLW_counter_inst_Mcount_countBuf_cy_15_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => Result(15),
      O(2) => Result(14),
      O(1) => Result(13),
      O(0) => Result(12),
      S(3) => counter_inst_countBuf_15_rt_98,
      S(2) => counter_inst_countBuf_14_rt_107,
      S(1) => counter_inst_countBuf_13_rt_110,
      S(0) => counter_inst_countBuf_12_rt_113
    );
  counter_inst_countBuf_14_rt : X_LUT6
    generic map(
      LOC => "SLICE_X86Y62",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => counter_inst_countBuf(14),
      ADR5 => '1',
      O => counter_inst_countBuf_14_rt_107
    );
  N0_16_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X86Y62",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_16_C5LUT_O_UNCONNECTED
    );
  counter_inst_countBuf_13_rt : X_LUT6
    generic map(
      LOC => "SLICE_X86Y62",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => counter_inst_countBuf(13),
      ADR5 => '1',
      O => counter_inst_countBuf_13_rt_110
    );
  N0_15_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X86Y62",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_15_B5LUT_O_UNCONNECTED
    );
  counter_inst_countBuf_12_rt : X_LUT6
    generic map(
      LOC => "SLICE_X86Y62",
      INIT => X"FF00FF00FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => counter_inst_countBuf(12),
      ADR5 => '1',
      O => counter_inst_countBuf_12_rt_113
    );
  N0_14_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X86Y62",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_14_A5LUT_O_UNCONNECTED
    );
  counter_inst_Mcount_countBuf_cy_19_counter_inst_Mcount_countBuf_cy_19_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Result(19),
      O => Result_19_0
    );
  counter_inst_Mcount_countBuf_cy_19_counter_inst_Mcount_countBuf_cy_19_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Result(18),
      O => Result_18_0
    );
  counter_inst_Mcount_countBuf_cy_19_counter_inst_Mcount_countBuf_cy_19_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Result(17),
      O => Result_17_0
    );
  counter_inst_Mcount_countBuf_cy_19_counter_inst_Mcount_countBuf_cy_19_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Result(16),
      O => Result_16_0
    );
  counter_inst_countBuf_19_rt : X_LUT6
    generic map(
      LOC => "SLICE_X86Y63",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => counter_inst_countBuf(19),
      ADR5 => '1',
      O => counter_inst_countBuf_19_rt_120
    );
  N0_21_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X86Y63",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_21_D5LUT_O_UNCONNECTED
    );
  counter_inst_Mcount_countBuf_cy_19_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X86Y63"
    )
    port map (
      CI => counter_inst_Mcount_countBuf_cy_15_Q_753,
      CYINIT => '0',
      CO(3) => counter_inst_Mcount_countBuf_cy_19_Q_762,
      CO(2) => NLW_counter_inst_Mcount_countBuf_cy_19_CO_2_UNCONNECTED,
      CO(1) => NLW_counter_inst_Mcount_countBuf_cy_19_CO_1_UNCONNECTED,
      CO(0) => NLW_counter_inst_Mcount_countBuf_cy_19_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => Result(19),
      O(2) => Result(18),
      O(1) => Result(17),
      O(0) => Result(16),
      S(3) => counter_inst_countBuf_19_rt_120,
      S(2) => counter_inst_countBuf_18_rt_129,
      S(1) => counter_inst_countBuf_17_rt_132,
      S(0) => counter_inst_countBuf_16_rt_135
    );
  counter_inst_countBuf_18_rt : X_LUT6
    generic map(
      LOC => "SLICE_X86Y63",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => counter_inst_countBuf(18),
      ADR5 => '1',
      O => counter_inst_countBuf_18_rt_129
    );
  N0_20_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X86Y63",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_20_C5LUT_O_UNCONNECTED
    );
  counter_inst_countBuf_17_rt : X_LUT6
    generic map(
      LOC => "SLICE_X86Y63",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => counter_inst_countBuf(17),
      ADR5 => '1',
      O => counter_inst_countBuf_17_rt_132
    );
  N0_19_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X86Y63",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_19_B5LUT_O_UNCONNECTED
    );
  counter_inst_countBuf_16_rt : X_LUT6
    generic map(
      LOC => "SLICE_X86Y63",
      INIT => X"FF00FF00FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => counter_inst_countBuf(16),
      ADR5 => '1',
      O => counter_inst_countBuf_16_rt_135
    );
  N0_18_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X86Y63",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_18_A5LUT_O_UNCONNECTED
    );
  counter_inst_Mcount_countBuf_cy_23_counter_inst_Mcount_countBuf_cy_23_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Result(23),
      O => Result_23_0
    );
  counter_inst_Mcount_countBuf_cy_23_counter_inst_Mcount_countBuf_cy_23_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Result(22),
      O => Result_22_0
    );
  counter_inst_Mcount_countBuf_cy_23_counter_inst_Mcount_countBuf_cy_23_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Result(21),
      O => Result_21_0
    );
  counter_inst_Mcount_countBuf_cy_23_counter_inst_Mcount_countBuf_cy_23_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Result(20),
      O => Result_20_0
    );
  counter_inst_countBuf_23_rt : X_LUT6
    generic map(
      LOC => "SLICE_X86Y64",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => counter_inst_countBuf(23),
      ADR5 => '1',
      O => counter_inst_countBuf_23_rt_142
    );
  N0_25_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X86Y64",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_25_D5LUT_O_UNCONNECTED
    );
  counter_inst_Mcount_countBuf_cy_23_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X86Y64"
    )
    port map (
      CI => counter_inst_Mcount_countBuf_cy_19_Q_762,
      CYINIT => '0',
      CO(3) => counter_inst_Mcount_countBuf_cy_23_Q_771,
      CO(2) => NLW_counter_inst_Mcount_countBuf_cy_23_CO_2_UNCONNECTED,
      CO(1) => NLW_counter_inst_Mcount_countBuf_cy_23_CO_1_UNCONNECTED,
      CO(0) => NLW_counter_inst_Mcount_countBuf_cy_23_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => Result(23),
      O(2) => Result(22),
      O(1) => Result(21),
      O(0) => Result(20),
      S(3) => counter_inst_countBuf_23_rt_142,
      S(2) => counter_inst_countBuf_22_rt_151,
      S(1) => counter_inst_countBuf_21_rt_154,
      S(0) => counter_inst_countBuf_20_rt_157
    );
  counter_inst_countBuf_22_rt : X_LUT6
    generic map(
      LOC => "SLICE_X86Y64",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => counter_inst_countBuf(22),
      ADR5 => '1',
      O => counter_inst_countBuf_22_rt_151
    );
  N0_24_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X86Y64",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_24_C5LUT_O_UNCONNECTED
    );
  counter_inst_countBuf_21_rt : X_LUT6
    generic map(
      LOC => "SLICE_X86Y64",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => counter_inst_countBuf(21),
      ADR5 => '1',
      O => counter_inst_countBuf_21_rt_154
    );
  N0_23_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X86Y64",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_23_B5LUT_O_UNCONNECTED
    );
  counter_inst_countBuf_20_rt : X_LUT6
    generic map(
      LOC => "SLICE_X86Y64",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => counter_inst_countBuf(20),
      ADR5 => '1',
      O => counter_inst_countBuf_20_rt_157
    );
  N0_22_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X86Y64",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_22_A5LUT_O_UNCONNECTED
    );
  counter_inst_Mcount_countBuf_cy_27_counter_inst_Mcount_countBuf_cy_27_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Result(27),
      O => Result_27_0
    );
  counter_inst_Mcount_countBuf_cy_27_counter_inst_Mcount_countBuf_cy_27_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Result(26),
      O => Result_26_0
    );
  counter_inst_Mcount_countBuf_cy_27_counter_inst_Mcount_countBuf_cy_27_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Result(25),
      O => Result_25_0
    );
  counter_inst_Mcount_countBuf_cy_27_counter_inst_Mcount_countBuf_cy_27_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Result(24),
      O => Result_24_0
    );
  counter_inst_countBuf_27_rt : X_LUT6
    generic map(
      LOC => "SLICE_X86Y65",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => counter_inst_countBuf(27),
      ADR5 => '1',
      O => counter_inst_countBuf_27_rt_164
    );
  N0_29_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X86Y65",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_29_D5LUT_O_UNCONNECTED
    );
  counter_inst_Mcount_countBuf_cy_27_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X86Y65"
    )
    port map (
      CI => counter_inst_Mcount_countBuf_cy_23_Q_771,
      CYINIT => '0',
      CO(3) => counter_inst_Mcount_countBuf_cy_27_Q_780,
      CO(2) => NLW_counter_inst_Mcount_countBuf_cy_27_CO_2_UNCONNECTED,
      CO(1) => NLW_counter_inst_Mcount_countBuf_cy_27_CO_1_UNCONNECTED,
      CO(0) => NLW_counter_inst_Mcount_countBuf_cy_27_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => Result(27),
      O(2) => Result(26),
      O(1) => Result(25),
      O(0) => Result(24),
      S(3) => counter_inst_countBuf_27_rt_164,
      S(2) => counter_inst_countBuf_26_rt_173,
      S(1) => counter_inst_countBuf_25_rt_176,
      S(0) => counter_inst_countBuf_24_rt_179
    );
  counter_inst_countBuf_26_rt : X_LUT6
    generic map(
      LOC => "SLICE_X86Y65",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => counter_inst_countBuf(26),
      ADR5 => '1',
      O => counter_inst_countBuf_26_rt_173
    );
  N0_28_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X86Y65",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_28_C5LUT_O_UNCONNECTED
    );
  counter_inst_countBuf_25_rt : X_LUT6
    generic map(
      LOC => "SLICE_X86Y65",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => counter_inst_countBuf(25),
      ADR5 => '1',
      O => counter_inst_countBuf_25_rt_176
    );
  N0_27_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X86Y65",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_27_B5LUT_O_UNCONNECTED
    );
  counter_inst_countBuf_24_rt : X_LUT6
    generic map(
      LOC => "SLICE_X86Y65",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => counter_inst_countBuf(24),
      ADR5 => '1',
      O => counter_inst_countBuf_24_rt_179
    );
  N0_26_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X86Y65",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_26_A5LUT_O_UNCONNECTED
    );
  Result_31_Result_31_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Result(31),
      O => Result_31_0
    );
  Result_31_Result_31_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Result(30),
      O => Result_30_0
    );
  Result_31_Result_31_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Result(29),
      O => Result_29_0
    );
  Result_31_Result_31_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Result(28),
      O => Result_28_0
    );
  counter_inst_countBuf_31_rt : X_LUT6
    generic map(
      LOC => "SLICE_X86Y66",
      INIT => X"AAAAAAAAAAAAAAAA"
    )
    port map (
      ADR5 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      ADR0 => counter_inst_countBuf(31),
      O => counter_inst_countBuf_31_rt_186
    );
  counter_inst_Mcount_countBuf_xor_31_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X86Y66"
    )
    port map (
      CI => counter_inst_Mcount_countBuf_cy_27_Q_780,
      CYINIT => '0',
      CO(3) => NLW_counter_inst_Mcount_countBuf_xor_31_CO_3_UNCONNECTED,
      CO(2) => NLW_counter_inst_Mcount_countBuf_xor_31_CO_2_UNCONNECTED,
      CO(1) => NLW_counter_inst_Mcount_countBuf_xor_31_CO_1_UNCONNECTED,
      CO(0) => NLW_counter_inst_Mcount_countBuf_xor_31_CO_0_UNCONNECTED,
      DI(3) => NLW_counter_inst_Mcount_countBuf_xor_31_DI_3_UNCONNECTED,
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => Result(31),
      O(2) => Result(30),
      O(1) => Result(29),
      O(0) => Result(28),
      S(3) => counter_inst_countBuf_31_rt_186,
      S(2) => counter_inst_countBuf_30_rt_193,
      S(1) => counter_inst_countBuf_29_rt_196,
      S(0) => counter_inst_countBuf_28_rt_199
    );
  counter_inst_countBuf_30_rt : X_LUT6
    generic map(
      LOC => "SLICE_X86Y66",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => counter_inst_countBuf(30),
      ADR5 => '1',
      O => counter_inst_countBuf_30_rt_193
    );
  N0_32_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X86Y66",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_32_C5LUT_O_UNCONNECTED
    );
  counter_inst_countBuf_29_rt : X_LUT6
    generic map(
      LOC => "SLICE_X86Y66",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => counter_inst_countBuf(29),
      ADR5 => '1',
      O => counter_inst_countBuf_29_rt_196
    );
  N0_31_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X86Y66",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_31_B5LUT_O_UNCONNECTED
    );
  counter_inst_countBuf_28_rt : X_LUT6
    generic map(
      LOC => "SLICE_X86Y66",
      INIT => X"CCCCCCCCCCCCCCCC"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR1 => counter_inst_countBuf(28),
      ADR5 => '1',
      O => counter_inst_countBuf_28_rt_199
    );
  N0_30_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X86Y66",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_30_A5LUT_O_UNCONNECTED
    );
  roDriver_inst_timeInv_3 : X_FF
    generic map(
      LOC => "SLICE_X55Y48",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_roDriver_inst_timeInv_3_CLK,
      I => roDriver_inst_Mcount_timeInv3,
      O => roDriver_inst_timeInv(3),
      RST => sysRst_IBUF_794,
      SET => GND
    );
  roDriver_inst_timeInv_3_rt : X_LUT6
    generic map(
      LOC => "SLICE_X55Y48",
      INIT => X"F0F0F0F0F0F0F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => '1',
      ADR2 => roDriver_inst_timeInv(3),
      ADR4 => '1',
      ADR5 => '1',
      O => roDriver_inst_timeInv_3_rt_207
    );
  N0_70_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X55Y48",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_70_D5LUT_O_UNCONNECTED
    );
  roDriver_inst_timeInv_2 : X_FF
    generic map(
      LOC => "SLICE_X55Y48",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_roDriver_inst_timeInv_2_CLK,
      I => roDriver_inst_Mcount_timeInv2,
      O => roDriver_inst_timeInv(2),
      RST => sysRst_IBUF_794,
      SET => GND
    );
  roDriver_inst_Mcount_timeInv_cy_3_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X55Y48"
    )
    port map (
      CI => '0',
      CYINIT => roDriver_inst_PWR_10_o_timeInv_9_equal_1_o_inv,
      CO(3) => roDriver_inst_Mcount_timeInv_cy_3_Q_793,
      CO(2) => NLW_roDriver_inst_Mcount_timeInv_cy_3_CO_2_UNCONNECTED,
      CO(1) => NLW_roDriver_inst_Mcount_timeInv_cy_3_CO_1_UNCONNECTED,
      CO(0) => NLW_roDriver_inst_Mcount_timeInv_cy_3_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => roDriver_inst_Mcount_timeInv3,
      O(2) => roDriver_inst_Mcount_timeInv2,
      O(1) => roDriver_inst_Mcount_timeInv1,
      O(0) => roDriver_inst_Mcount_timeInv,
      S(3) => roDriver_inst_timeInv_3_rt_207,
      S(2) => roDriver_inst_timeInv_2_rt_217,
      S(1) => roDriver_inst_timeInv_1_rt_221,
      S(0) => roDriver_inst_timeInv_0_rt_226
    );
  roDriver_inst_timeInv_2_rt : X_LUT6
    generic map(
      LOC => "SLICE_X55Y48",
      INIT => X"CCCCCCCCCCCCCCCC"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR2 => '1',
      ADR1 => roDriver_inst_timeInv(2),
      ADR4 => '1',
      ADR5 => '1',
      O => roDriver_inst_timeInv_2_rt_217
    );
  N0_71_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X55Y48",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_71_C5LUT_O_UNCONNECTED
    );
  roDriver_inst_timeInv_1 : X_FF
    generic map(
      LOC => "SLICE_X55Y48",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_roDriver_inst_timeInv_1_CLK,
      I => roDriver_inst_Mcount_timeInv1,
      O => roDriver_inst_timeInv(1),
      RST => sysRst_IBUF_794,
      SET => GND
    );
  roDriver_inst_timeInv_1_rt : X_LUT6
    generic map(
      LOC => "SLICE_X55Y48",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => roDriver_inst_timeInv(1),
      ADR3 => '1',
      ADR5 => '1',
      O => roDriver_inst_timeInv_1_rt_221
    );
  N0_72_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X55Y48",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_72_B5LUT_O_UNCONNECTED
    );
  roDriver_inst_timeInv_0 : X_FF
    generic map(
      LOC => "SLICE_X55Y48",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_roDriver_inst_timeInv_0_CLK,
      I => roDriver_inst_Mcount_timeInv,
      O => roDriver_inst_timeInv(0),
      RST => sysRst_IBUF_794,
      SET => GND
    );
  roDriver_inst_timeInv_0_rt : X_LUT6
    generic map(
      LOC => "SLICE_X55Y48",
      INIT => X"F0F0F0F0F0F0F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => '1',
      ADR2 => roDriver_inst_timeInv(0),
      ADR4 => '1',
      ADR5 => '1',
      O => roDriver_inst_timeInv_0_rt_226
    );
  N0_73_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X55Y48",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_73_A5LUT_O_UNCONNECTED
    );
  roDriver_inst_timeInv_7 : X_FF
    generic map(
      LOC => "SLICE_X55Y49",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_roDriver_inst_timeInv_7_CLK,
      I => roDriver_inst_Mcount_timeInv7,
      O => roDriver_inst_timeInv(7),
      RST => sysRst_IBUF_794,
      SET => GND
    );
  roDriver_inst_timeInv_7_rt : X_LUT6
    generic map(
      LOC => "SLICE_X55Y49",
      INIT => X"F0F0F0F0F0F0F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => '1',
      ADR2 => roDriver_inst_timeInv(7),
      ADR4 => '1',
      ADR5 => '1',
      O => roDriver_inst_timeInv_7_rt_235
    );
  N0_66_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X55Y49",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_66_D5LUT_O_UNCONNECTED
    );
  roDriver_inst_timeInv_6 : X_FF
    generic map(
      LOC => "SLICE_X55Y49",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_roDriver_inst_timeInv_6_CLK,
      I => roDriver_inst_Mcount_timeInv6,
      O => roDriver_inst_timeInv(6),
      RST => sysRst_IBUF_794,
      SET => GND
    );
  roDriver_inst_Mcount_timeInv_cy_7_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X55Y49"
    )
    port map (
      CI => roDriver_inst_Mcount_timeInv_cy_3_Q_793,
      CYINIT => '0',
      CO(3) => roDriver_inst_Mcount_timeInv_cy_7_Q_798,
      CO(2) => NLW_roDriver_inst_Mcount_timeInv_cy_7_CO_2_UNCONNECTED,
      CO(1) => NLW_roDriver_inst_Mcount_timeInv_cy_7_CO_1_UNCONNECTED,
      CO(0) => NLW_roDriver_inst_Mcount_timeInv_cy_7_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => roDriver_inst_Mcount_timeInv7,
      O(2) => roDriver_inst_Mcount_timeInv6,
      O(1) => roDriver_inst_Mcount_timeInv5,
      O(0) => roDriver_inst_Mcount_timeInv4,
      S(3) => roDriver_inst_timeInv_7_rt_235,
      S(2) => roDriver_inst_timeInv_6_rt_246,
      S(1) => roDriver_inst_timeInv_5_rt_250,
      S(0) => roDriver_inst_timeInv_4_rt_254
    );
  roDriver_inst_timeInv_6_rt : X_LUT6
    generic map(
      LOC => "SLICE_X55Y49",
      INIT => X"CCCCCCCCCCCCCCCC"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR2 => '1',
      ADR1 => roDriver_inst_timeInv(6),
      ADR4 => '1',
      ADR5 => '1',
      O => roDriver_inst_timeInv_6_rt_246
    );
  N0_67_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X55Y49",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_67_C5LUT_O_UNCONNECTED
    );
  roDriver_inst_timeInv_5 : X_FF
    generic map(
      LOC => "SLICE_X55Y49",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_roDriver_inst_timeInv_5_CLK,
      I => roDriver_inst_Mcount_timeInv5,
      O => roDriver_inst_timeInv(5),
      RST => sysRst_IBUF_794,
      SET => GND
    );
  roDriver_inst_timeInv_5_rt : X_LUT6
    generic map(
      LOC => "SLICE_X55Y49",
      INIT => X"CCCCCCCCCCCCCCCC"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR2 => '1',
      ADR1 => roDriver_inst_timeInv(5),
      ADR4 => '1',
      ADR5 => '1',
      O => roDriver_inst_timeInv_5_rt_250
    );
  N0_68_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X55Y49",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_68_B5LUT_O_UNCONNECTED
    );
  roDriver_inst_timeInv_4 : X_FF
    generic map(
      LOC => "SLICE_X55Y49",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_roDriver_inst_timeInv_4_CLK,
      I => roDriver_inst_Mcount_timeInv4,
      O => roDriver_inst_timeInv(4),
      RST => sysRst_IBUF_794,
      SET => GND
    );
  roDriver_inst_timeInv_4_rt : X_LUT6
    generic map(
      LOC => "SLICE_X55Y49",
      INIT => X"F0F0F0F0F0F0F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => '1',
      ADR2 => roDriver_inst_timeInv(4),
      ADR4 => '1',
      ADR5 => '1',
      O => roDriver_inst_timeInv_4_rt_254
    );
  N0_69_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X55Y49",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_69_A5LUT_O_UNCONNECTED
    );
  roDriver_inst_Mcount_timeInv_xor_9_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X55Y50"
    )
    port map (
      CI => roDriver_inst_Mcount_timeInv_cy_7_Q_798,
      CYINIT => '0',
      CO(3) => NLW_roDriver_inst_Mcount_timeInv_xor_9_CO_3_UNCONNECTED,
      CO(2) => NLW_roDriver_inst_Mcount_timeInv_xor_9_CO_2_UNCONNECTED,
      CO(1) => NLW_roDriver_inst_Mcount_timeInv_xor_9_CO_1_UNCONNECTED,
      CO(0) => NLW_roDriver_inst_Mcount_timeInv_xor_9_CO_0_UNCONNECTED,
      DI(3) => NLW_roDriver_inst_Mcount_timeInv_xor_9_DI_3_UNCONNECTED,
      DI(2) => NLW_roDriver_inst_Mcount_timeInv_xor_9_DI_2_UNCONNECTED,
      DI(1) => NLW_roDriver_inst_Mcount_timeInv_xor_9_DI_1_UNCONNECTED,
      DI(0) => '0',
      O(3) => NLW_roDriver_inst_Mcount_timeInv_xor_9_O_3_UNCONNECTED,
      O(2) => NLW_roDriver_inst_Mcount_timeInv_xor_9_O_2_UNCONNECTED,
      O(1) => roDriver_inst_Mcount_timeInv9,
      O(0) => roDriver_inst_Mcount_timeInv8,
      S(3) => NLW_roDriver_inst_Mcount_timeInv_xor_9_S_3_UNCONNECTED,
      S(2) => NLW_roDriver_inst_Mcount_timeInv_xor_9_S_2_UNCONNECTED,
      S(1) => roDriver_inst_Mcount_timeInv_lut(9),
      S(0) => roDriver_inst_timeInv_8_rt_271
    );
  roDriver_inst_timeInv_9 : X_FF
    generic map(
      LOC => "SLICE_X55Y50",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_roDriver_inst_timeInv_9_CLK,
      I => roDriver_inst_Mcount_timeInv9,
      O => roDriver_inst_timeInv(9),
      RST => sysRst_IBUF_794,
      SET => GND
    );
  roDriver_inst_Mcount_timeInv_lut_9_Q : X_LUT6
    generic map(
      LOC => "SLICE_X55Y50",
      INIT => X"FFFFFFFFFFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => roDriver_inst_timeInv(9),
      ADR3 => '1',
      ADR5 => roDriver_inst_PWR_10_o_timeInv_9_equal_1_o,
      O => roDriver_inst_Mcount_timeInv_lut(9)
    );
  roDriver_inst_timeInv_8 : X_FF
    generic map(
      LOC => "SLICE_X55Y50",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_roDriver_inst_timeInv_8_CLK,
      I => roDriver_inst_Mcount_timeInv8,
      O => roDriver_inst_timeInv(8),
      RST => sysRst_IBUF_794,
      SET => GND
    );
  roDriver_inst_timeInv_8_rt : X_LUT6
    generic map(
      LOC => "SLICE_X55Y50",
      INIT => X"F0F0F0F0F0F0F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => '1',
      ADR2 => roDriver_inst_timeInv(8),
      ADR4 => '1',
      ADR5 => '1',
      O => roDriver_inst_timeInv_8_rt_271
    );
  N0_65_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X55Y50",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_65_A5LUT_O_UNCONNECTED
    );
  sysConf0_IBUF : X_BUF
    generic map(
      LOC => "IOB_X1Y88",
      PATHPULSE => 50 ps
    )
    port map (
      O => sysConf0_IBUF_710,
      I => sysConf0
    );
  sysConf1_IBUF : X_BUF
    generic map(
      LOC => "IOB_X1Y149",
      PATHPULSE => 50 ps
    )
    port map (
      O => sysConf1_IBUF_711,
      I => sysConf1
    );
  sysRst_IBUF : X_BUF
    generic map(
      LOC => "IOB_X1Y103",
      PATHPULSE => 50 ps
    )
    port map (
      O => sysRst_IBUF_794,
      I => sysRst
    );
  clock_inst_clkin1_buf : X_BUF
    generic map(
      LOC => "IOB_X0Y26",
      PATHPULSE => 50 ps
    )
    port map (
      O => clock_inst_clkin1,
      I => sysClock
    );
  sysSel_0_IBUF : X_BUF
    generic map(
      LOC => "IOB_X1Y112",
      PATHPULSE => 50 ps
    )
    port map (
      O => sysSel_0_IBUF_804,
      I => sysSel(0)
    );
  sysSel_1_IBUF : X_BUF
    generic map(
      LOC => "IOB_X1Y104",
      PATHPULSE => 50 ps
    )
    port map (
      O => sysSel_1_IBUF_805,
      I => sysSel(1)
    );
  sysout_0_OBUF : X_OBUF
    generic map(
      LOC => "IOB_X1Y46"
    )
    port map (
      I => NlwBufferSignal_sysout_0_OBUF_I,
      O => sysout(0)
    );
  sysSel_2_IBUF : X_BUF
    generic map(
      LOC => "IOB_X1Y102",
      PATHPULSE => 50 ps
    )
    port map (
      O => sysSel_2_IBUF_807,
      I => sysSel(2)
    );
  sysout_1_OBUF : X_OBUF
    generic map(
      LOC => "IOB_X1Y48"
    )
    port map (
      I => NlwBufferSignal_sysout_1_OBUF_I,
      O => sysout(1)
    );
  sysSel_3_IBUF : X_BUF
    generic map(
      LOC => "IOB_X1Y101",
      PATHPULSE => 50 ps
    )
    port map (
      O => sysSel_3_IBUF_809,
      I => sysSel(3)
    );
  sysout_2_OBUF : X_OBUF
    generic map(
      LOC => "IOB_X1Y45"
    )
    port map (
      I => NlwBufferSignal_sysout_2_OBUF_I,
      O => sysout(2)
    );
  sysout_3_OBUF : X_OBUF
    generic map(
      LOC => "IOB_X1Y47"
    )
    port map (
      I => NlwBufferSignal_sysout_3_OBUF_I,
      O => sysout(3)
    );
  sysout_4_OBUF : X_OBUF
    generic map(
      LOC => "IOB_X1Y44"
    )
    port map (
      I => NlwBufferSignal_sysout_4_OBUF_I,
      O => sysout(4)
    );
  sysout_5_OBUF : X_OBUF
    generic map(
      LOC => "IOB_X1Y43"
    )
    port map (
      I => NlwBufferSignal_sysout_5_OBUF_I,
      O => sysout(5)
    );
  sysout_6_OBUF : X_OBUF
    generic map(
      LOC => "IOB_X1Y49"
    )
    port map (
      I => NlwBufferSignal_sysout_6_OBUF_I,
      O => sysout(6)
    );
  sysout_7_OBUF : X_OBUF
    generic map(
      LOC => "IOB_X1Y0"
    )
    port map (
      I => NlwBufferSignal_sysout_7_OBUF_I,
      O => sysout(7)
    );
  clock_inst_clkf_buf : X_CKBUF
    generic map(
      LOC => "BUFGCTRL_X0Y0",
      PATHPULSE => 50 ps
    )
    port map (
      I => NlwBufferSignal_clock_inst_clkf_buf_IN,
      O => clock_inst_clkfbout_buf
    );
  clock_inst_clkout1_buf : X_CKBUF
    generic map(
      LOC => "BUFGCTRL_X0Y1",
      PATHPULSE => 50 ps
    )
    port map (
      I => NlwBufferSignal_clock_inst_clkout1_buf_IN,
      O => clk_to_driver
    );
  clock_inst_mmcm_adv_inst_CLKIN1 : X_BUF
    generic map(
      LOC => "MMCME2_ADV_X0Y0",
      PATHPULSE => 50 ps
    )
    port map (
      I => clock_inst_clkin1,
      O => clock_inst_mmcm_adv_inst_CLKIN1_INT
    );
  clock_inst_mmcm_adv_inst_PSENINV : X_BUF
    generic map(
      LOC => "MMCME2_ADV_X0Y0",
      PATHPULSE => 50 ps
    )
    port map (
      I => GND,
      O => clock_inst_mmcm_adv_inst_PSEN_INT
    );
  clock_inst_mmcm_adv_inst_PSINCDECINV : X_BUF
    generic map(
      LOC => "MMCME2_ADV_X0Y0",
      PATHPULSE => 50 ps
    )
    port map (
      I => GND,
      O => clock_inst_mmcm_adv_inst_PSINCDEC_INT
    );
  clock_inst_mmcm_adv_inst_RSTINV : X_BUF
    generic map(
      LOC => "MMCME2_ADV_X0Y0",
      PATHPULSE => 50 ps
    )
    port map (
      I => GND,
      O => clock_inst_mmcm_adv_inst_RST_INT
    );
  clock_inst_mmcm_adv_inst_CLKIN2 : X_BUF
    generic map(
      LOC => "MMCME2_ADV_X0Y0",
      PATHPULSE => 50 ps
    )
    port map (
      I => '0',
      O => clock_inst_mmcm_adv_inst_CLKIN2_INT
    );
  clock_inst_mmcm_adv_inst_CLKINSELINV : X_BUF
    generic map(
      LOC => "MMCME2_ADV_X0Y0",
      PATHPULSE => 50 ps
    )
    port map (
      I => VCC,
      O => clock_inst_mmcm_adv_inst_CLKINSEL_INT
    );
  clock_inst_mmcm_adv_inst_PWRDWNINV : X_BUF
    generic map(
      LOC => "MMCME2_ADV_X0Y0",
      PATHPULSE => 50 ps
    )
    port map (
      I => GND,
      O => clock_inst_mmcm_adv_inst_PWRDWN_INT
    );
  clock_inst_mmcm_adv_inst_CLKFBIN : X_BUF
    generic map(
      LOC => "MMCME2_ADV_X0Y0",
      PATHPULSE => 50 ps
    )
    port map (
      I => clock_inst_clkfbout_buf,
      O => clock_inst_mmcm_adv_inst_CLKFBIN_INT
    );
  clock_inst_mmcm_adv_inst : X_MMCME2_ADV
    generic map(
      COMPENSATION => "ZHOLD",
      SS_MODE => "CENTER_HIGH",
      CLKFBOUT_USE_FINE_PS => FALSE,
      CLKOUT4_USE_FINE_PS => FALSE,
      CLKOUT3_USE_FINE_PS => FALSE,
      SS_EN => "FALSE",
      CLKOUT0_USE_FINE_PS => FALSE,
      CLKOUT6_USE_FINE_PS => FALSE,
      CLKOUT4_CASCADE => FALSE,
      BANDWIDTH => "OPTIMIZED",
      CLKOUT5_USE_FINE_PS => FALSE,
      CLKOUT2_USE_FINE_PS => FALSE,
      STARTUP_WAIT => FALSE,
      CLKOUT1_USE_FINE_PS => FALSE,
      CLKOUT2_DUTY_CYCLE => 0.500000,
      CLKOUT5_DUTY_CYCLE => 0.500000,
      CLKOUT6_PHASE => 0.000000,
      CLKOUT3_DUTY_CYCLE => 0.500000,
      REF_JITTER1 => 0.010000,
      CLKFBOUT_PHASE => 0.000000,
      CLKOUT4_DUTY_CYCLE => 0.500000,
      CLKOUT1_DUTY_CYCLE => 0.500000,
      CLKOUT1_PHASE => 0.000000,
      CLKOUT2_PHASE => 0.000000,
      CLKOUT3_PHASE => 0.000000,
      CLKOUT4_PHASE => 0.000000,
      CLKOUT0_DIVIDE_F => 78.000000,
      REF_JITTER2 => 0.000000,
      CLKOUT0_PHASE => 0.000000,
      CLKOUT5_PHASE => 0.000000,
      CLKOUT6_DUTY_CYCLE => 0.500000,
      CLKFBOUT_MULT_F => 39.000000,
      CLKOUT0_DUTY_CYCLE => 0.500000,
      CLKOUT4_DIVIDE => 1,
      SS_MOD_PERIOD => 10000,
      CLKOUT1_DIVIDE => 1,
      CLKOUT3_DIVIDE => 1,
      DIVCLK_DIVIDE => 5,
      CLKOUT5_DIVIDE => 1,
      CLKOUT2_DIVIDE => 1,
      CLKOUT6_DIVIDE => 1,
      CLKIN2_PERIOD => 0.000000,
      CLKIN1_PERIOD => 10.000000,
      LOC => "MMCME2_ADV_X0Y0",
      VCOCLK_FREQ_MAX => 1200.000000,
      VCOCLK_FREQ_MIN => 600.000000,
      CLKIN_FREQ_MAX => 800.000000,
      CLKIN_FREQ_MIN => 10.000000,
      CLKPFD_FREQ_MAX => 450.000000,
      CLKPFD_FREQ_MIN => 10.000000
    )
    port map (
      CLKFBIN => clock_inst_mmcm_adv_inst_CLKFBIN_INT,
      PSCLK => GND,
      PWRDWN => clock_inst_mmcm_adv_inst_PWRDWN_INT,
      DCLK => GND,
      DEN => GND,
      CLKINSEL => clock_inst_mmcm_adv_inst_CLKINSEL_INT,
      CLKIN2 => clock_inst_mmcm_adv_inst_CLKIN2_INT,
      RST => clock_inst_mmcm_adv_inst_RST_INT,
      PSINCDEC => clock_inst_mmcm_adv_inst_PSINCDEC_INT,
      DWE => GND,
      PSEN => clock_inst_mmcm_adv_inst_PSEN_INT,
      CLKIN1 => clock_inst_mmcm_adv_inst_CLKIN1_INT,
      CLKOUT3 => clock_inst_mmcm_adv_inst_CLKOUT3,
      CLKOUT3B => clock_inst_mmcm_adv_inst_CLKOUT3B,
      CLKFBOUT => clock_inst_clkfbout,
      CLKFBSTOPPED => clock_inst_mmcm_adv_inst_CLKFBSTOPPED,
      CLKFBOUTB => clock_inst_mmcm_adv_inst_CLKFBOUTB,
      CLKOUT1 => clock_inst_mmcm_adv_inst_CLKOUT1,
      CLKOUT5 => clock_inst_mmcm_adv_inst_CLKOUT5,
      DRDY => clock_inst_mmcm_adv_inst_DRDY,
      CLKOUT0 => clock_inst_clkout0,
      CLKOUT4 => clock_inst_mmcm_adv_inst_CLKOUT4,
      CLKOUT1B => clock_inst_mmcm_adv_inst_CLKOUT1B,
      CLKINSTOPPED => clock_inst_mmcm_adv_inst_CLKINSTOPPED,
      CLKOUT0B => clock_inst_mmcm_adv_inst_CLKOUT0B,
      CLKOUT2 => clock_inst_mmcm_adv_inst_CLKOUT2,
      CLKOUT2B => clock_inst_mmcm_adv_inst_CLKOUT2B,
      PSDONE => clock_inst_mmcm_adv_inst_PSDONE,
      CLKOUT6 => clock_inst_mmcm_adv_inst_CLKOUT6,
      LOCKED => clock_inst_mmcm_adv_inst_LOCKED,
      DI(15) => GND,
      DI(14) => GND,
      DI(13) => GND,
      DI(12) => GND,
      DI(11) => GND,
      DI(10) => GND,
      DI(9) => GND,
      DI(8) => GND,
      DI(7) => GND,
      DI(6) => GND,
      DI(5) => GND,
      DI(4) => GND,
      DI(3) => GND,
      DI(2) => GND,
      DI(1) => GND,
      DI(0) => GND,
      DADDR(6) => GND,
      DADDR(5) => GND,
      DADDR(4) => GND,
      DADDR(3) => GND,
      DADDR(2) => GND,
      DADDR(1) => GND,
      DADDR(0) => GND,
      DO(15) => clock_inst_mmcm_adv_inst_DO15,
      DO(14) => clock_inst_mmcm_adv_inst_DO14,
      DO(13) => clock_inst_mmcm_adv_inst_DO13,
      DO(12) => clock_inst_mmcm_adv_inst_DO12,
      DO(11) => clock_inst_mmcm_adv_inst_DO11,
      DO(10) => clock_inst_mmcm_adv_inst_DO10,
      DO(9) => clock_inst_mmcm_adv_inst_DO9,
      DO(8) => clock_inst_mmcm_adv_inst_DO8,
      DO(7) => clock_inst_mmcm_adv_inst_DO7,
      DO(6) => clock_inst_mmcm_adv_inst_DO6,
      DO(5) => clock_inst_mmcm_adv_inst_DO5,
      DO(4) => clock_inst_mmcm_adv_inst_DO4,
      DO(3) => clock_inst_mmcm_adv_inst_DO3,
      DO(2) => clock_inst_mmcm_adv_inst_DO2,
      DO(1) => clock_inst_mmcm_adv_inst_DO1,
      DO(0) => clock_inst_mmcm_adv_inst_DO0
    );
  roDriver_inst_diverOutBuf_roDriver_inst_diverOutBuf_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => N21,
      O => N21_0
    );
  roDriver_inst_diverOutBuf : X_FF
    generic map(
      LOC => "SLICE_X54Y49",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_roDriver_inst_diverOutBuf_CLK,
      I => roDriver_inst_GND_41_o_GND_41_o_MUX_22_o,
      O => roDriver_inst_diverOutBuf_712,
      RST => sysRst_IBUF_794,
      SET => GND
    );
  roDriver_inst_Mmux_GND_41_o_GND_41_o_MUX_22_o1 : X_LUT6
    generic map(
      LOC => "SLICE_X54Y49",
      INIT => X"00000000ECCCCCCC"
    )
    port map (
      ADR1 => roDriver_inst_timeInv(9),
      ADR3 => roDriver_inst_timeInv(4),
      ADR4 => roDriver_inst_timeInv(8),
      ADR2 => roDriver_inst_PWR_10_o_timeInv_9_equal_1_o_9_1,
      ADR0 => N19,
      ADR5 => roDriver_inst_PWR_10_o_timeInv_9_equal_1_o,
      O => roDriver_inst_GND_41_o_GND_41_o_MUX_22_o
    );
  roDriver_inst_PWR_10_o_timeInv_9_equal_1_o_9_Q : X_LUT6
    generic map(
      LOC => "SLICE_X54Y49",
      INIT => X"0000000004000000"
    )
    port map (
      ADR0 => roDriver_inst_timeInv(2),
      ADR2 => roDriver_inst_timeInv(4),
      ADR3 => roDriver_inst_timeInv(8),
      ADR1 => roDriver_inst_timeInv(9),
      ADR4 => roDriver_inst_PWR_10_o_timeInv_9_equal_1_o_9_1,
      ADR5 => N23,
      O => roDriver_inst_PWR_10_o_timeInv_9_equal_1_o
    );
  roDriver_inst_Mmux_GND_41_o_GND_41_o_MUX_22_o1_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X54Y49",
      INIT => X"FAFAEAEAFAFAEAEA"
    )
    port map (
      ADR3 => '1',
      ADR2 => roDriver_inst_timeInv(2),
      ADR1 => roDriver_inst_timeInv(1),
      ADR4 => roDriver_inst_timeInv(0),
      ADR0 => roDriver_inst_timeInv(3),
      ADR5 => '1',
      O => N19
    );
  roDriver_inst_Mmux_PWR_10_o_GND_41_o_MUX_23_o1_SW0 : X_LUT5
    generic map(
      LOC => "SLICE_X54Y49",
      INIT => X"80800000"
    )
    port map (
      ADR3 => '1',
      ADR2 => roDriver_inst_timeInv(2),
      ADR1 => roDriver_inst_timeInv(1),
      ADR4 => roDriver_inst_timeInv(0),
      ADR0 => roDriver_inst_timeInv(3),
      O => N21
    );
  roDriver_inst_dCounterBuf : X_FF
    generic map(
      LOC => "SLICE_X57Y49",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_roDriver_inst_dCounterBuf_CLK,
      I => roDriver_inst_PWR_10_o_GND_41_o_MUX_23_o,
      O => roDriver_inst_dCounterBuf_821,
      RST => sysRst_IBUF_794,
      SET => GND
    );
  roDriver_inst_Mmux_PWR_10_o_GND_41_o_MUX_23_o1 : X_LUT6
    generic map(
      LOC => "SLICE_X57Y49",
      INIT => X"5050404050504000"
    )
    port map (
      ADR4 => roDriver_inst_timeInv(8),
      ADR5 => roDriver_inst_timeInv(4),
      ADR2 => roDriver_inst_timeInv(9),
      ADR1 => roDriver_inst_PWR_10_o_timeInv_9_equal_1_o_9_1,
      ADR3 => N21_0,
      ADR0 => roDriver_inst_PWR_10_o_timeInv_9_equal_1_o,
      O => roDriver_inst_PWR_10_o_GND_41_o_MUX_23_o
    );
  roDriver_inst_PWR_10_o_timeInv_9_equal_1_o_9_11 : X_LUT6
    generic map(
      LOC => "SLICE_X56Y49",
      INIT => X"FF00000000000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => roDriver_inst_timeInv(7),
      ADR4 => roDriver_inst_timeInv(6),
      ADR5 => roDriver_inst_timeInv(5),
      O => roDriver_inst_PWR_10_o_timeInv_9_equal_1_o_9_1
    );
  roDriver_inst_PWR_10_o_timeInv_9_equal_1_o_9_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X56Y49",
      INIT => X"FFFFFFFFFFFF0F0F"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => '1',
      ADR2 => roDriver_inst_timeInv(3),
      ADR5 => roDriver_inst_timeInv(1),
      ADR4 => roDriver_inst_timeInv(0),
      O => N23
    );
  roDriver_inst_PWR_10_o_timeInv_9_equal_1_o_inv1 : X_LUT6
    generic map(
      LOC => "SLICE_X56Y49",
      INIT => X"FFFDFFFFFFFFFFFF"
    )
    port map (
      ADR4 => roDriver_inst_timeInv(8),
      ADR2 => roDriver_inst_timeInv(2),
      ADR1 => roDriver_inst_timeInv(4),
      ADR0 => roDriver_inst_timeInv(9),
      ADR5 => roDriver_inst_PWR_10_o_timeInv_9_equal_1_o_9_1,
      ADR3 => N23,
      O => roDriver_inst_PWR_10_o_timeInv_9_equal_1_o_inv
    );
  counter_inst_countBuf_22 : X_FF
    generic map(
      LOC => "SLICE_X84Y64",
      INIT => '0'
    )
    port map (
      CE => roDriver_inst_dCounterBuf_821,
      CLK => NlwBufferSignal_counter_inst_countBuf_22_CLK,
      I => counter_inst_Mcount_countBuf_eqn_22,
      O => counter_inst_countBuf(22),
      RST => sysRst_IBUF_794,
      SET => GND
    );
  counter_inst_Mcount_countBuf_eqn_221 : X_LUT6
    generic map(
      LOC => "SLICE_X84Y64",
      INIT => X"FFFFFFFFFFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR5 => Result_22_0,
      ADR4 => counter_inst_countBuf_31_PWR_12_o_equal_1_o,
      O => counter_inst_Mcount_countBuf_eqn_22
    );
  counter_inst_countBuf_21 : X_FF
    generic map(
      LOC => "SLICE_X84Y64",
      INIT => '0'
    )
    port map (
      CE => roDriver_inst_dCounterBuf_821,
      CLK => NlwBufferSignal_counter_inst_countBuf_21_CLK,
      I => counter_inst_Mcount_countBuf_eqn_21,
      O => counter_inst_countBuf(21),
      RST => sysRst_IBUF_794,
      SET => GND
    );
  counter_inst_Mcount_countBuf_eqn_211 : X_LUT6
    generic map(
      LOC => "SLICE_X84Y64",
      INIT => X"FFFFFFFFFFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => Result_21_0,
      ADR5 => counter_inst_countBuf_31_PWR_12_o_equal_1_o,
      O => counter_inst_Mcount_countBuf_eqn_21
    );
  counter_inst_countBuf_20 : X_FF
    generic map(
      LOC => "SLICE_X84Y64",
      INIT => '0'
    )
    port map (
      CE => roDriver_inst_dCounterBuf_821,
      CLK => NlwBufferSignal_counter_inst_countBuf_20_CLK,
      I => counter_inst_Mcount_countBuf_eqn_20,
      O => counter_inst_countBuf(20),
      RST => sysRst_IBUF_794,
      SET => GND
    );
  counter_inst_Mcount_countBuf_eqn_201 : X_LUT6
    generic map(
      LOC => "SLICE_X84Y64",
      INIT => X"FFFFFFFFFFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR5 => Result_20_0,
      ADR4 => counter_inst_countBuf_31_PWR_12_o_equal_1_o,
      O => counter_inst_Mcount_countBuf_eqn_20
    );
  counter_inst_countBuf_0 : X_FF
    generic map(
      LOC => "SLICE_X85Y62",
      INIT => '0'
    )
    port map (
      CE => roDriver_inst_dCounterBuf_821,
      CLK => NlwBufferSignal_counter_inst_countBuf_0_CLK,
      I => counter_inst_Mcount_countBuf_eqn_0,
      O => counter_inst_countBuf(0),
      RST => sysRst_IBUF_794,
      SET => GND
    );
  counter_inst_Mcount_countBuf_eqn_01 : X_LUT6
    generic map(
      LOC => "SLICE_X85Y62",
      INIT => X"FFFFFFFFFFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => Result_0_0,
      ADR5 => counter_inst_countBuf_31_PWR_12_o_equal_1_o,
      O => counter_inst_Mcount_countBuf_eqn_0
    );
  counter_inst_countBuf_31_PWR_12_o_equal_1_o_31_7 : X_LUT6
    generic map(
      LOC => "SLICE_X85Y62",
      INIT => X"8000000000000000"
    )
    port map (
      ADR1 => counter_inst_countBuf_31_PWR_12_o_equal_1_o_31_4_828,
      ADR0 => counter_inst_countBuf_31_PWR_12_o_equal_1_o_31_5_829,
      ADR3 => counter_inst_countBuf_31_PWR_12_o_equal_1_o_31_Q,
      ADR2 => counter_inst_countBuf_31_PWR_12_o_equal_1_o_31_1_825,
      ADR5 => counter_inst_countBuf_31_PWR_12_o_equal_1_o_31_2_826,
      ADR4 => counter_inst_countBuf_31_PWR_12_o_equal_1_o_31_3_827,
      O => counter_inst_countBuf_31_PWR_12_o_equal_1_o
    );
  counter_inst_countBuf_26 : X_FF
    generic map(
      LOC => "SLICE_X85Y64",
      INIT => '0'
    )
    port map (
      CE => roDriver_inst_dCounterBuf_821,
      CLK => NlwBufferSignal_counter_inst_countBuf_26_CLK,
      I => counter_inst_Mcount_countBuf_eqn_26,
      O => counter_inst_countBuf(26),
      RST => sysRst_IBUF_794,
      SET => GND
    );
  counter_inst_Mcount_countBuf_eqn_261 : X_LUT6
    generic map(
      LOC => "SLICE_X85Y64",
      INIT => X"FFFFFFFFFFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR5 => Result_26_0,
      ADR4 => counter_inst_countBuf_31_PWR_12_o_equal_1_o,
      O => counter_inst_Mcount_countBuf_eqn_26
    );
  counter_inst_countBuf_24 : X_FF
    generic map(
      LOC => "SLICE_X85Y64",
      INIT => '0'
    )
    port map (
      CE => roDriver_inst_dCounterBuf_821,
      CLK => NlwBufferSignal_counter_inst_countBuf_24_CLK,
      I => counter_inst_Mcount_countBuf_eqn_24,
      O => counter_inst_countBuf(24),
      RST => sysRst_IBUF_794,
      SET => GND
    );
  counter_inst_Mcount_countBuf_eqn_241 : X_LUT6
    generic map(
      LOC => "SLICE_X85Y64",
      INIT => X"FFFFFFFFFFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR5 => Result_24_0,
      ADR4 => counter_inst_countBuf_31_PWR_12_o_equal_1_o,
      O => counter_inst_Mcount_countBuf_eqn_24
    );
  counter_inst_countBuf_23 : X_FF
    generic map(
      LOC => "SLICE_X85Y64",
      INIT => '0'
    )
    port map (
      CE => roDriver_inst_dCounterBuf_821,
      CLK => NlwBufferSignal_counter_inst_countBuf_23_CLK,
      I => counter_inst_Mcount_countBuf_eqn_23,
      O => counter_inst_countBuf(23),
      RST => sysRst_IBUF_794,
      SET => GND
    );
  counter_inst_Mcount_countBuf_eqn_231 : X_LUT6
    generic map(
      LOC => "SLICE_X85Y64",
      INIT => X"FFFFFFFFFFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR5 => Result_23_0,
      ADR4 => counter_inst_countBuf_31_PWR_12_o_equal_1_o,
      O => counter_inst_Mcount_countBuf_eqn_23
    );
  counter_inst_countBuf_10 : X_FF
    generic map(
      LOC => "SLICE_X87Y59",
      INIT => '0'
    )
    port map (
      CE => roDriver_inst_dCounterBuf_821,
      CLK => NlwBufferSignal_counter_inst_countBuf_10_CLK,
      I => counter_inst_Mcount_countBuf_eqn_10,
      O => counter_inst_countBuf(10),
      RST => sysRst_IBUF_794,
      SET => GND
    );
  counter_inst_Mcount_countBuf_eqn_101 : X_LUT6
    generic map(
      LOC => "SLICE_X87Y59",
      INIT => X"FFFFFFFFFFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => Result_10_0,
      ADR5 => counter_inst_countBuf_31_PWR_12_o_equal_1_o,
      O => counter_inst_Mcount_countBuf_eqn_10
    );
  counter_inst_countBuf_1 : X_FF
    generic map(
      LOC => "SLICE_X87Y59",
      INIT => '0'
    )
    port map (
      CE => roDriver_inst_dCounterBuf_821,
      CLK => NlwBufferSignal_counter_inst_countBuf_1_CLK,
      I => counter_inst_Mcount_countBuf_eqn_1,
      O => counter_inst_countBuf(1),
      RST => sysRst_IBUF_794,
      SET => GND
    );
  counter_inst_Mcount_countBuf_eqn_110 : X_LUT6
    generic map(
      LOC => "SLICE_X87Y59",
      INIT => X"FFFFFFFFF0F0F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR3 => '1',
      ADR2 => Result_1_0,
      ADR5 => counter_inst_countBuf_31_PWR_12_o_equal_1_o,
      O => counter_inst_Mcount_countBuf_eqn_1
    );
  counter_inst_countBuf_2 : X_FF
    generic map(
      LOC => "SLICE_X87Y60",
      INIT => '0'
    )
    port map (
      CE => roDriver_inst_dCounterBuf_821,
      CLK => NlwBufferSignal_counter_inst_countBuf_2_CLK,
      I => counter_inst_Mcount_countBuf_eqn_2,
      O => counter_inst_countBuf(2),
      RST => sysRst_IBUF_794,
      SET => GND
    );
  counter_inst_Mcount_countBuf_eqn_210 : X_LUT6
    generic map(
      LOC => "SLICE_X87Y60",
      INIT => X"FFFFFFFFFFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => Result_2_0,
      ADR5 => counter_inst_countBuf_31_PWR_12_o_equal_1_o,
      O => counter_inst_Mcount_countBuf_eqn_2
    );
  counter_inst_countBuf_8 : X_FF
    generic map(
      LOC => "SLICE_X87Y60",
      INIT => '0'
    )
    port map (
      CE => roDriver_inst_dCounterBuf_821,
      CLK => NlwBufferSignal_counter_inst_countBuf_8_CLK,
      I => counter_inst_Mcount_countBuf_eqn_8,
      O => counter_inst_countBuf(8),
      RST => sysRst_IBUF_794,
      SET => GND
    );
  counter_inst_Mcount_countBuf_eqn_81 : X_LUT6
    generic map(
      LOC => "SLICE_X87Y60",
      INIT => X"FFFFFFFFFFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => Result_8_0,
      ADR5 => counter_inst_countBuf_31_PWR_12_o_equal_1_o,
      O => counter_inst_Mcount_countBuf_eqn_8
    );
  counter_inst_countBuf_7 : X_FF
    generic map(
      LOC => "SLICE_X87Y60",
      INIT => '0'
    )
    port map (
      CE => roDriver_inst_dCounterBuf_821,
      CLK => NlwBufferSignal_counter_inst_countBuf_7_CLK,
      I => counter_inst_Mcount_countBuf_eqn_7,
      O => counter_inst_countBuf(7),
      RST => sysRst_IBUF_794,
      SET => GND
    );
  counter_inst_Mcount_countBuf_eqn_71 : X_LUT6
    generic map(
      LOC => "SLICE_X87Y60",
      INIT => X"FFFFFFFFFFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => Result_7_0,
      ADR5 => counter_inst_countBuf_31_PWR_12_o_equal_1_o,
      O => counter_inst_Mcount_countBuf_eqn_7
    );
  counter_inst_countBuf_31_PWR_12_o_equal_1_o_31_1 : X_LUT6
    generic map(
      LOC => "SLICE_X87Y61",
      INIT => X"8000000000000000"
    )
    port map (
      ADR3 => counter_inst_countBuf(15),
      ADR2 => counter_inst_countBuf(14),
      ADR1 => counter_inst_countBuf(17),
      ADR5 => counter_inst_countBuf(16),
      ADR0 => counter_inst_countBuf(19),
      ADR4 => counter_inst_countBuf(18),
      O => counter_inst_countBuf_31_PWR_12_o_equal_1_o_31_Q
    );
  counter_inst_countBuf_9 : X_FF
    generic map(
      LOC => "SLICE_X87Y61",
      INIT => '0'
    )
    port map (
      CE => roDriver_inst_dCounterBuf_821,
      CLK => NlwBufferSignal_counter_inst_countBuf_9_CLK,
      I => counter_inst_Mcount_countBuf_eqn_9,
      O => counter_inst_countBuf(9),
      RST => sysRst_IBUF_794,
      SET => GND
    );
  counter_inst_Mcount_countBuf_eqn_91 : X_LUT6
    generic map(
      LOC => "SLICE_X87Y61",
      INIT => X"FFFFFFFFFFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR5 => Result_9_0,
      ADR4 => counter_inst_countBuf_31_PWR_12_o_equal_1_o,
      O => counter_inst_Mcount_countBuf_eqn_9
    );
  counter_inst_countBuf_11 : X_FF
    generic map(
      LOC => "SLICE_X87Y61",
      INIT => '0'
    )
    port map (
      CE => roDriver_inst_dCounterBuf_821,
      CLK => NlwBufferSignal_counter_inst_countBuf_11_CLK,
      I => counter_inst_Mcount_countBuf_eqn_11,
      O => counter_inst_countBuf(11),
      RST => sysRst_IBUF_794,
      SET => GND
    );
  counter_inst_Mcount_countBuf_eqn_111 : X_LUT6
    generic map(
      LOC => "SLICE_X87Y61",
      INIT => X"FFFFFFFFFFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR5 => Result_11_0,
      ADR4 => counter_inst_countBuf_31_PWR_12_o_equal_1_o,
      O => counter_inst_Mcount_countBuf_eqn_11
    );
  counter_inst_countBuf_14 : X_FF
    generic map(
      LOC => "SLICE_X87Y62",
      INIT => '0'
    )
    port map (
      CE => roDriver_inst_dCounterBuf_821,
      CLK => NlwBufferSignal_counter_inst_countBuf_14_CLK,
      I => counter_inst_Mcount_countBuf_eqn_14,
      O => counter_inst_countBuf(14),
      RST => sysRst_IBUF_794,
      SET => GND
    );
  counter_inst_Mcount_countBuf_eqn_141 : X_LUT6
    generic map(
      LOC => "SLICE_X87Y62",
      INIT => X"FFFFFFFFFFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => Result_14_0,
      ADR5 => counter_inst_countBuf_31_PWR_12_o_equal_1_o,
      O => counter_inst_Mcount_countBuf_eqn_14
    );
  counter_inst_countBuf_13 : X_FF
    generic map(
      LOC => "SLICE_X87Y62",
      INIT => '0'
    )
    port map (
      CE => roDriver_inst_dCounterBuf_821,
      CLK => NlwBufferSignal_counter_inst_countBuf_13_CLK,
      I => counter_inst_Mcount_countBuf_eqn_13,
      O => counter_inst_countBuf(13),
      RST => sysRst_IBUF_794,
      SET => GND
    );
  counter_inst_Mcount_countBuf_eqn_131 : X_LUT6
    generic map(
      LOC => "SLICE_X87Y62",
      INIT => X"FFFFFFFFFFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR5 => Result_13_0,
      ADR4 => counter_inst_countBuf_31_PWR_12_o_equal_1_o,
      O => counter_inst_Mcount_countBuf_eqn_13
    );
  counter_inst_countBuf_12 : X_FF
    generic map(
      LOC => "SLICE_X87Y62",
      INIT => '0'
    )
    port map (
      CE => roDriver_inst_dCounterBuf_821,
      CLK => NlwBufferSignal_counter_inst_countBuf_12_CLK,
      I => counter_inst_Mcount_countBuf_eqn_12,
      O => counter_inst_countBuf(12),
      RST => sysRst_IBUF_794,
      SET => GND
    );
  counter_inst_Mcount_countBuf_eqn_121 : X_LUT6
    generic map(
      LOC => "SLICE_X87Y62",
      INIT => X"FFFFFFFFFFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR5 => Result_12_0,
      ADR4 => counter_inst_countBuf_31_PWR_12_o_equal_1_o,
      O => counter_inst_Mcount_countBuf_eqn_12
    );
  counter_inst_countBuf_15 : X_FF
    generic map(
      LOC => "SLICE_X87Y62",
      INIT => '0'
    )
    port map (
      CE => roDriver_inst_dCounterBuf_821,
      CLK => NlwBufferSignal_counter_inst_countBuf_15_CLK,
      I => counter_inst_Mcount_countBuf_eqn_15,
      O => counter_inst_countBuf(15),
      RST => sysRst_IBUF_794,
      SET => GND
    );
  counter_inst_Mcount_countBuf_eqn_151 : X_LUT6
    generic map(
      LOC => "SLICE_X87Y62",
      INIT => X"FFFFFFFFFFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR5 => Result_15_0,
      ADR4 => counter_inst_countBuf_31_PWR_12_o_equal_1_o,
      O => counter_inst_Mcount_countBuf_eqn_15
    );
  counter_inst_countBuf_18 : X_FF
    generic map(
      LOC => "SLICE_X87Y63",
      INIT => '0'
    )
    port map (
      CE => roDriver_inst_dCounterBuf_821,
      CLK => NlwBufferSignal_counter_inst_countBuf_18_CLK,
      I => counter_inst_Mcount_countBuf_eqn_18,
      O => counter_inst_countBuf(18),
      RST => sysRst_IBUF_794,
      SET => GND
    );
  counter_inst_Mcount_countBuf_eqn_181 : X_LUT6
    generic map(
      LOC => "SLICE_X87Y63",
      INIT => X"FFFFFFFFFFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR5 => Result_18_0,
      ADR4 => counter_inst_countBuf_31_PWR_12_o_equal_1_o,
      O => counter_inst_Mcount_countBuf_eqn_18
    );
  counter_inst_countBuf_17 : X_FF
    generic map(
      LOC => "SLICE_X87Y63",
      INIT => '0'
    )
    port map (
      CE => roDriver_inst_dCounterBuf_821,
      CLK => NlwBufferSignal_counter_inst_countBuf_17_CLK,
      I => counter_inst_Mcount_countBuf_eqn_17,
      O => counter_inst_countBuf(17),
      RST => sysRst_IBUF_794,
      SET => GND
    );
  counter_inst_Mcount_countBuf_eqn_171 : X_LUT6
    generic map(
      LOC => "SLICE_X87Y63",
      INIT => X"FFFFFFFFFFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR5 => Result_17_0,
      ADR4 => counter_inst_countBuf_31_PWR_12_o_equal_1_o,
      O => counter_inst_Mcount_countBuf_eqn_17
    );
  counter_inst_countBuf_16 : X_FF
    generic map(
      LOC => "SLICE_X87Y63",
      INIT => '0'
    )
    port map (
      CE => roDriver_inst_dCounterBuf_821,
      CLK => NlwBufferSignal_counter_inst_countBuf_16_CLK,
      I => counter_inst_Mcount_countBuf_eqn_16,
      O => counter_inst_countBuf(16),
      RST => sysRst_IBUF_794,
      SET => GND
    );
  counter_inst_Mcount_countBuf_eqn_161 : X_LUT6
    generic map(
      LOC => "SLICE_X87Y63",
      INIT => X"FFFFFFFFFFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR5 => Result_16_0,
      ADR4 => counter_inst_countBuf_31_PWR_12_o_equal_1_o,
      O => counter_inst_Mcount_countBuf_eqn_16
    );
  counter_inst_countBuf_19 : X_FF
    generic map(
      LOC => "SLICE_X87Y63",
      INIT => '0'
    )
    port map (
      CE => roDriver_inst_dCounterBuf_821,
      CLK => NlwBufferSignal_counter_inst_countBuf_19_CLK,
      I => counter_inst_Mcount_countBuf_eqn_19,
      O => counter_inst_countBuf(19),
      RST => sysRst_IBUF_794,
      SET => GND
    );
  counter_inst_Mcount_countBuf_eqn_191 : X_LUT6
    generic map(
      LOC => "SLICE_X87Y63",
      INIT => X"FFFFFFFFFFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR5 => Result_19_0,
      ADR4 => counter_inst_countBuf_31_PWR_12_o_equal_1_o,
      O => counter_inst_Mcount_countBuf_eqn_19
    );
  counter_inst_countBuf_25 : X_FF
    generic map(
      LOC => "SLICE_X87Y64",
      INIT => '0'
    )
    port map (
      CE => roDriver_inst_dCounterBuf_821,
      CLK => NlwBufferSignal_counter_inst_countBuf_25_CLK,
      I => counter_inst_Mcount_countBuf_eqn_25,
      O => counter_inst_countBuf(25),
      RST => sysRst_IBUF_794,
      SET => GND
    );
  counter_inst_Mcount_countBuf_eqn_251 : X_LUT6
    generic map(
      LOC => "SLICE_X87Y64",
      INIT => X"FFFFFFFFFFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR5 => Result_25_0,
      ADR4 => counter_inst_countBuf_31_PWR_12_o_equal_1_o,
      O => counter_inst_Mcount_countBuf_eqn_25
    );
  counter_inst_countBuf_30 : X_FF
    generic map(
      LOC => "SLICE_X87Y65",
      INIT => '0'
    )
    port map (
      CE => roDriver_inst_dCounterBuf_821,
      CLK => NlwBufferSignal_counter_inst_countBuf_30_CLK,
      I => counter_inst_Mcount_countBuf_eqn_30,
      O => counter_inst_countBuf(30),
      RST => sysRst_IBUF_794,
      SET => GND
    );
  counter_inst_Mcount_countBuf_eqn_301 : X_LUT6
    generic map(
      LOC => "SLICE_X87Y65",
      INIT => X"FFFFFFFFFFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR5 => Result_30_0,
      ADR4 => counter_inst_countBuf_31_PWR_12_o_equal_1_o,
      O => counter_inst_Mcount_countBuf_eqn_30
    );
  counter_inst_countBuf_29 : X_FF
    generic map(
      LOC => "SLICE_X87Y65",
      INIT => '0'
    )
    port map (
      CE => roDriver_inst_dCounterBuf_821,
      CLK => NlwBufferSignal_counter_inst_countBuf_29_CLK,
      I => counter_inst_Mcount_countBuf_eqn_29,
      O => counter_inst_countBuf(29),
      RST => sysRst_IBUF_794,
      SET => GND
    );
  counter_inst_Mcount_countBuf_eqn_291 : X_LUT6
    generic map(
      LOC => "SLICE_X87Y65",
      INIT => X"FFFFFFFFFFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR5 => Result_29_0,
      ADR4 => counter_inst_countBuf_31_PWR_12_o_equal_1_o,
      O => counter_inst_Mcount_countBuf_eqn_29
    );
  counter_inst_countBuf_28 : X_FF
    generic map(
      LOC => "SLICE_X87Y65",
      INIT => '0'
    )
    port map (
      CE => roDriver_inst_dCounterBuf_821,
      CLK => NlwBufferSignal_counter_inst_countBuf_28_CLK,
      I => counter_inst_Mcount_countBuf_eqn_28,
      O => counter_inst_countBuf(28),
      RST => sysRst_IBUF_794,
      SET => GND
    );
  counter_inst_Mcount_countBuf_eqn_281 : X_LUT6
    generic map(
      LOC => "SLICE_X87Y65",
      INIT => X"FFFFFFFFFFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR5 => Result_28_0,
      ADR4 => counter_inst_countBuf_31_PWR_12_o_equal_1_o,
      O => counter_inst_Mcount_countBuf_eqn_28
    );
  counter_inst_countBuf_27 : X_FF
    generic map(
      LOC => "SLICE_X87Y65",
      INIT => '0'
    )
    port map (
      CE => roDriver_inst_dCounterBuf_821,
      CLK => NlwBufferSignal_counter_inst_countBuf_27_CLK,
      I => counter_inst_Mcount_countBuf_eqn_27,
      O => counter_inst_countBuf(27),
      RST => sysRst_IBUF_794,
      SET => GND
    );
  counter_inst_Mcount_countBuf_eqn_271 : X_LUT6
    generic map(
      LOC => "SLICE_X87Y65",
      INIT => X"FFFFFFFFFFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR5 => Result_27_0,
      ADR4 => counter_inst_countBuf_31_PWR_12_o_equal_1_o,
      O => counter_inst_Mcount_countBuf_eqn_27
    );
  counter_inst_countBuf_6 : X_FF
    generic map(
      LOC => "SLICE_X88Y60",
      INIT => '0'
    )
    port map (
      CE => roDriver_inst_dCounterBuf_821,
      CLK => NlwBufferSignal_counter_inst_countBuf_6_CLK,
      I => counter_inst_Mcount_countBuf_eqn_6,
      O => counter_inst_countBuf(6),
      RST => sysRst_IBUF_794,
      SET => GND
    );
  counter_inst_Mcount_countBuf_eqn_61 : X_LUT6
    generic map(
      LOC => "SLICE_X88Y60",
      INIT => X"FFFFFFFFFFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => Result_6_0,
      ADR5 => counter_inst_countBuf_31_PWR_12_o_equal_1_o,
      O => counter_inst_Mcount_countBuf_eqn_6
    );
  counter_inst_countBuf_5 : X_FF
    generic map(
      LOC => "SLICE_X88Y60",
      INIT => '0'
    )
    port map (
      CE => roDriver_inst_dCounterBuf_821,
      CLK => NlwBufferSignal_counter_inst_countBuf_5_CLK,
      I => counter_inst_Mcount_countBuf_eqn_5,
      O => counter_inst_countBuf(5),
      RST => sysRst_IBUF_794,
      SET => GND
    );
  counter_inst_Mcount_countBuf_eqn_51 : X_LUT6
    generic map(
      LOC => "SLICE_X88Y60",
      INIT => X"FFFFFFFFFFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => Result_5_0,
      ADR5 => counter_inst_countBuf_31_PWR_12_o_equal_1_o,
      O => counter_inst_Mcount_countBuf_eqn_5
    );
  counter_inst_countBuf_4 : X_FF
    generic map(
      LOC => "SLICE_X88Y60",
      INIT => '0'
    )
    port map (
      CE => roDriver_inst_dCounterBuf_821,
      CLK => NlwBufferSignal_counter_inst_countBuf_4_CLK,
      I => counter_inst_Mcount_countBuf_eqn_4,
      O => counter_inst_countBuf(4),
      RST => sysRst_IBUF_794,
      SET => GND
    );
  counter_inst_Mcount_countBuf_eqn_41 : X_LUT6
    generic map(
      LOC => "SLICE_X88Y60",
      INIT => X"FFFFFFFFFFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => Result_4_0,
      ADR5 => counter_inst_countBuf_31_PWR_12_o_equal_1_o,
      O => counter_inst_Mcount_countBuf_eqn_4
    );
  counter_inst_countBuf_3 : X_FF
    generic map(
      LOC => "SLICE_X88Y60",
      INIT => '0'
    )
    port map (
      CE => roDriver_inst_dCounterBuf_821,
      CLK => NlwBufferSignal_counter_inst_countBuf_3_CLK,
      I => counter_inst_Mcount_countBuf_eqn_3,
      O => counter_inst_countBuf(3),
      RST => sysRst_IBUF_794,
      SET => GND
    );
  counter_inst_Mcount_countBuf_eqn_32 : X_LUT6
    generic map(
      LOC => "SLICE_X88Y60",
      INIT => X"FFFFFFFFFFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => Result_3_0,
      ADR5 => counter_inst_countBuf_31_PWR_12_o_equal_1_o,
      O => counter_inst_Mcount_countBuf_eqn_3
    );
  counterOutPut_inst_Mmux_countPart2_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X88Y61",
      INIT => X"555555553F3F3F3F"
    )
    port map (
      ADR4 => '1',
      ADR3 => '1',
      ADR5 => sysSel_2_IBUF_807,
      ADR2 => counter_inst_countBuf(25),
      ADR1 => sysSel_3_IBUF_809,
      ADR0 => counter_inst_countBuf(17),
      O => N5
    );
  counterOutPut_inst_Mmux_countPart2 : X_LUT6
    generic map(
      LOC => "SLICE_X88Y61",
      INIT => X"F0F0F0F0CCCC00FF"
    )
    port map (
      ADR0 => '1',
      ADR5 => sysSel_0_IBUF_804,
      ADR4 => sysSel_1_IBUF_805,
      ADR3 => N5,
      ADR1 => counter_inst_countBuf(9),
      ADR2 => counter_inst_countBuf(1),
      O => sysout_1_OBUF_808
    );
  counter_inst_countBuf_31_PWR_12_o_equal_1_o_31_3 : X_LUT6
    generic map(
      LOC => "SLICE_X88Y62",
      INIT => X"8000000000000000"
    )
    port map (
      ADR2 => counter_inst_countBuf(27),
      ADR4 => counter_inst_countBuf(26),
      ADR1 => counter_inst_countBuf(29),
      ADR5 => counter_inst_countBuf(28),
      ADR0 => counter_inst_countBuf(31),
      ADR3 => counter_inst_countBuf(30),
      O => counter_inst_countBuf_31_PWR_12_o_equal_1_o_31_2_826
    );
  counterOutPut_inst_Mmux_countPart7_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X88Y62",
      INIT => X"0C0C3F3F3F3F3F3F"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR1 => sysSel_2_IBUF_807,
      ADR5 => counter_inst_countBuf(30),
      ADR4 => sysSel_3_IBUF_809,
      ADR2 => counter_inst_countBuf(22),
      O => N15
    );
  counterOutPut_inst_Mmux_countPart7 : X_LUT6
    generic map(
      LOC => "SLICE_X88Y62",
      INIT => X"B8BBB8BB888B888B"
    )
    port map (
      ADR4 => '1',
      ADR1 => sysSel_0_IBUF_804,
      ADR2 => sysSel_1_IBUF_805,
      ADR3 => N15,
      ADR5 => counter_inst_countBuf(14),
      ADR0 => counter_inst_countBuf(6),
      O => sysout_6_OBUF_814
    );
  counter_inst_countBuf_31_PWR_12_o_equal_1_o_31_6 : X_LUT6
    generic map(
      LOC => "SLICE_X89Y60",
      INIT => X"8000000000000000"
    )
    port map (
      ADR0 => counter_inst_countBuf(3),
      ADR1 => counter_inst_countBuf(2),
      ADR3 => counter_inst_countBuf(5),
      ADR5 => counter_inst_countBuf(4),
      ADR2 => counter_inst_countBuf(7),
      ADR4 => counter_inst_countBuf(6),
      O => counter_inst_countBuf_31_PWR_12_o_equal_1_o_31_5_829
    );
  counter_inst_countBuf_31_PWR_12_o_equal_1_o_31_2 : X_LUT6
    generic map(
      LOC => "SLICE_X89Y61",
      INIT => X"8000000000000000"
    )
    port map (
      ADR0 => counter_inst_countBuf(9),
      ADR1 => counter_inst_countBuf(8),
      ADR2 => counter_inst_countBuf(11),
      ADR4 => counter_inst_countBuf(10),
      ADR3 => counter_inst_countBuf(13),
      ADR5 => counter_inst_countBuf(12),
      O => counter_inst_countBuf_31_PWR_12_o_equal_1_o_31_1_825
    );
  counter_inst_countBuf_31_PWR_12_o_equal_1_o_31_5 : X_LUT6
    generic map(
      LOC => "SLICE_X89Y61",
      INIT => X"FFFF000000000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => counter_inst_countBuf(1),
      ADR5 => counter_inst_countBuf(0),
      O => counter_inst_countBuf_31_PWR_12_o_equal_1_o_31_4_828
    );
  counter_inst_countBuf_31_PWR_12_o_equal_1_o_31_4 : X_LUT6
    generic map(
      LOC => "SLICE_X89Y62",
      INIT => X"8000000000000000"
    )
    port map (
      ADR1 => counter_inst_countBuf(21),
      ADR0 => counter_inst_countBuf(20),
      ADR3 => counter_inst_countBuf(23),
      ADR4 => counter_inst_countBuf(22),
      ADR5 => counter_inst_countBuf(25),
      ADR2 => counter_inst_countBuf(24),
      O => counter_inst_countBuf_31_PWR_12_o_equal_1_o_31_3_827
    );
  counterOutPut_inst_Mmux_countPart6_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X89Y62",
      INIT => X"00FF0F0F00FFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => sysSel_2_IBUF_807,
      ADR5 => counter_inst_countBuf(29),
      ADR2 => sysSel_3_IBUF_809,
      ADR3 => counter_inst_countBuf(21),
      O => N13
    );
  counterOutPut_inst_Mmux_countPart6 : X_LUT6
    generic map(
      LOC => "SLICE_X89Y62",
      INIT => X"FFFFC0CF0000C0CF"
    )
    port map (
      ADR0 => '1',
      ADR4 => sysSel_0_IBUF_804,
      ADR2 => sysSel_1_IBUF_805,
      ADR3 => N13,
      ADR1 => counter_inst_countBuf(13),
      ADR5 => counter_inst_countBuf(5),
      O => sysout_5_OBUF_813
    );
  counter_inst_countBuf_31 : X_FF
    generic map(
      LOC => "SLICE_X89Y65",
      INIT => '0'
    )
    port map (
      CE => roDriver_inst_dCounterBuf_821,
      CLK => NlwBufferSignal_counter_inst_countBuf_31_CLK,
      I => counter_inst_Mcount_countBuf_eqn_31,
      O => counter_inst_countBuf(31),
      RST => sysRst_IBUF_794,
      SET => GND
    );
  counter_inst_Mcount_countBuf_eqn_311 : X_LUT6
    generic map(
      LOC => "SLICE_X89Y65",
      INIT => X"FFFFFFFFFFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR5 => Result_31_0,
      ADR4 => counter_inst_countBuf_31_PWR_12_o_equal_1_o,
      O => counter_inst_Mcount_countBuf_eqn_31
    );
  counterOutPut_inst_Mmux_countPart8_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X90Y61",
      INIT => X"00FF333300FFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR2 => '1',
      ADR4 => sysSel_2_IBUF_807,
      ADR5 => counter_inst_countBuf(31),
      ADR1 => sysSel_3_IBUF_809,
      ADR3 => counter_inst_countBuf(23),
      O => N17
    );
  counterOutPut_inst_Mmux_countPart8 : X_LUT6
    generic map(
      LOC => "SLICE_X90Y61",
      INIT => X"EEEE4444AAFF0055"
    )
    port map (
      ADR2 => '1',
      ADR0 => sysSel_0_IBUF_804,
      ADR5 => sysSel_1_IBUF_805,
      ADR3 => N17,
      ADR1 => counter_inst_countBuf(15),
      ADR4 => counter_inst_countBuf(7),
      O => sysout_7_OBUF_815
    );
  counterOutPut_inst_Mmux_countPart3_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X91Y61",
      INIT => X"0F0F0F0F5555FFFF"
    )
    port map (
      ADR3 => '1',
      ADR1 => '1',
      ADR5 => sysSel_2_IBUF_807,
      ADR4 => counter_inst_countBuf(26),
      ADR0 => sysSel_3_IBUF_809,
      ADR2 => counter_inst_countBuf(18),
      O => N7
    );
  counterOutPut_inst_Mmux_countPart3 : X_LUT6
    generic map(
      LOC => "SLICE_X91Y61",
      INIT => X"AAAAAAAAF000F0FF"
    )
    port map (
      ADR1 => '1',
      ADR5 => sysSel_0_IBUF_804,
      ADR3 => sysSel_1_IBUF_805,
      ADR4 => N7,
      ADR2 => counter_inst_countBuf(10),
      ADR0 => counter_inst_countBuf(2),
      O => sysout_2_OBUF_810
    );
  counterOutPut_inst_Mmux_countPart1_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X91Y61",
      INIT => X"505F5F5F505F5F5F"
    )
    port map (
      ADR5 => '1',
      ADR1 => '1',
      ADR2 => sysSel_2_IBUF_807,
      ADR3 => counter_inst_countBuf(24),
      ADR4 => sysSel_3_IBUF_809,
      ADR0 => counter_inst_countBuf(16),
      O => N3
    );
  counterOutPut_inst_Mmux_countPart1 : X_LUT6
    generic map(
      LOC => "SLICE_X91Y61",
      INIT => X"FCFFCCCF30330003"
    )
    port map (
      ADR0 => '1',
      ADR1 => sysSel_0_IBUF_804,
      ADR2 => sysSel_1_IBUF_805,
      ADR3 => N3,
      ADR4 => counter_inst_countBuf(8),
      ADR5 => counter_inst_countBuf(0),
      O => sysout_0_OBUF_806
    );
  counterOutPut_inst_Mmux_countPart5_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X93Y61",
      INIT => X"030FF3FF030FF3FF"
    )
    port map (
      ADR0 => '1',
      ADR5 => '1',
      ADR2 => sysSel_2_IBUF_807,
      ADR3 => counter_inst_countBuf(28),
      ADR1 => sysSel_3_IBUF_809,
      ADR4 => counter_inst_countBuf(20),
      O => N11
    );
  counterOutPut_inst_Mmux_countPart5 : X_LUT6
    generic map(
      LOC => "SLICE_X93Y61",
      INIT => X"FFFF000088BB88BB"
    )
    port map (
      ADR2 => '1',
      ADR5 => sysSel_0_IBUF_804,
      ADR1 => sysSel_1_IBUF_805,
      ADR3 => N11,
      ADR0 => counter_inst_countBuf(12),
      ADR4 => counter_inst_countBuf(4),
      O => sysout_4_OBUF_812
    );
  counterOutPut_inst_Mmux_countPart4_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X92Y61",
      INIT => X"050FF5FF050FF5FF"
    )
    port map (
      ADR5 => '1',
      ADR1 => '1',
      ADR2 => sysSel_2_IBUF_807,
      ADR0 => counter_inst_countBuf(27),
      ADR3 => sysSel_3_IBUF_809,
      ADR4 => counter_inst_countBuf(19),
      O => N9
    );
  counterOutPut_inst_Mmux_countPart4 : X_LUT6
    generic map(
      LOC => "SLICE_X92Y61",
      INIT => X"F0F0F0F088BB88BB"
    )
    port map (
      ADR4 => '1',
      ADR5 => sysSel_0_IBUF_804,
      ADR1 => sysSel_1_IBUF_805,
      ADR3 => N9,
      ADR0 => counter_inst_countBuf(11),
      ADR2 => counter_inst_countBuf(3),
      O => sysout_3_OBUF_811
    );
  NlwBufferBlock_roDriver_inst_timeInv_3_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => clk_to_driver,
      O => NlwBufferSignal_roDriver_inst_timeInv_3_CLK
    );
  NlwBufferBlock_roDriver_inst_timeInv_2_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => clk_to_driver,
      O => NlwBufferSignal_roDriver_inst_timeInv_2_CLK
    );
  NlwBufferBlock_roDriver_inst_timeInv_1_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => clk_to_driver,
      O => NlwBufferSignal_roDriver_inst_timeInv_1_CLK
    );
  NlwBufferBlock_roDriver_inst_timeInv_0_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => clk_to_driver,
      O => NlwBufferSignal_roDriver_inst_timeInv_0_CLK
    );
  NlwBufferBlock_roDriver_inst_timeInv_7_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => clk_to_driver,
      O => NlwBufferSignal_roDriver_inst_timeInv_7_CLK
    );
  NlwBufferBlock_roDriver_inst_timeInv_6_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => clk_to_driver,
      O => NlwBufferSignal_roDriver_inst_timeInv_6_CLK
    );
  NlwBufferBlock_roDriver_inst_timeInv_5_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => clk_to_driver,
      O => NlwBufferSignal_roDriver_inst_timeInv_5_CLK
    );
  NlwBufferBlock_roDriver_inst_timeInv_4_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => clk_to_driver,
      O => NlwBufferSignal_roDriver_inst_timeInv_4_CLK
    );
  NlwBufferBlock_roDriver_inst_timeInv_9_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => clk_to_driver,
      O => NlwBufferSignal_roDriver_inst_timeInv_9_CLK
    );
  NlwBufferBlock_roDriver_inst_timeInv_8_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => clk_to_driver,
      O => NlwBufferSignal_roDriver_inst_timeInv_8_CLK
    );
  NlwBufferBlock_sysout_0_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => sysout_0_OBUF_806,
      O => NlwBufferSignal_sysout_0_OBUF_I
    );
  NlwBufferBlock_sysout_1_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => sysout_1_OBUF_808,
      O => NlwBufferSignal_sysout_1_OBUF_I
    );
  NlwBufferBlock_sysout_2_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => sysout_2_OBUF_810,
      O => NlwBufferSignal_sysout_2_OBUF_I
    );
  NlwBufferBlock_sysout_3_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => sysout_3_OBUF_811,
      O => NlwBufferSignal_sysout_3_OBUF_I
    );
  NlwBufferBlock_sysout_4_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => sysout_4_OBUF_812,
      O => NlwBufferSignal_sysout_4_OBUF_I
    );
  NlwBufferBlock_sysout_5_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => sysout_5_OBUF_813,
      O => NlwBufferSignal_sysout_5_OBUF_I
    );
  NlwBufferBlock_sysout_6_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => sysout_6_OBUF_814,
      O => NlwBufferSignal_sysout_6_OBUF_I
    );
  NlwBufferBlock_sysout_7_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => sysout_7_OBUF_815,
      O => NlwBufferSignal_sysout_7_OBUF_I
    );
  NlwBufferBlock_clock_inst_clkf_buf_IN : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => clock_inst_clkfbout,
      O => NlwBufferSignal_clock_inst_clkf_buf_IN
    );
  NlwBufferBlock_clock_inst_clkout1_buf_IN : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => clock_inst_clkout0,
      O => NlwBufferSignal_clock_inst_clkout1_buf_IN
    );
  NlwBufferBlock_roDriver_inst_diverOutBuf_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => clk_to_driver,
      O => NlwBufferSignal_roDriver_inst_diverOutBuf_CLK
    );
  NlwBufferBlock_roDriver_inst_dCounterBuf_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => clk_to_driver,
      O => NlwBufferSignal_roDriver_inst_dCounterBuf_CLK
    );
  NlwBufferBlock_counter_inst_countBuf_22_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => ro_to_counter,
      O => NlwBufferSignal_counter_inst_countBuf_22_CLK
    );
  NlwBufferBlock_counter_inst_countBuf_21_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => ro_to_counter,
      O => NlwBufferSignal_counter_inst_countBuf_21_CLK
    );
  NlwBufferBlock_counter_inst_countBuf_20_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => ro_to_counter,
      O => NlwBufferSignal_counter_inst_countBuf_20_CLK
    );
  NlwBufferBlock_counter_inst_countBuf_0_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => ro_to_counter,
      O => NlwBufferSignal_counter_inst_countBuf_0_CLK
    );
  NlwBufferBlock_counter_inst_countBuf_26_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => ro_to_counter,
      O => NlwBufferSignal_counter_inst_countBuf_26_CLK
    );
  NlwBufferBlock_counter_inst_countBuf_24_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => ro_to_counter,
      O => NlwBufferSignal_counter_inst_countBuf_24_CLK
    );
  NlwBufferBlock_counter_inst_countBuf_23_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => ro_to_counter,
      O => NlwBufferSignal_counter_inst_countBuf_23_CLK
    );
  NlwBufferBlock_counter_inst_countBuf_10_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => ro_to_counter,
      O => NlwBufferSignal_counter_inst_countBuf_10_CLK
    );
  NlwBufferBlock_counter_inst_countBuf_1_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => ro_to_counter,
      O => NlwBufferSignal_counter_inst_countBuf_1_CLK
    );
  NlwBufferBlock_counter_inst_countBuf_2_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => ro_to_counter,
      O => NlwBufferSignal_counter_inst_countBuf_2_CLK
    );
  NlwBufferBlock_counter_inst_countBuf_8_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => ro_to_counter,
      O => NlwBufferSignal_counter_inst_countBuf_8_CLK
    );
  NlwBufferBlock_counter_inst_countBuf_7_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => ro_to_counter,
      O => NlwBufferSignal_counter_inst_countBuf_7_CLK
    );
  NlwBufferBlock_counter_inst_countBuf_9_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => ro_to_counter,
      O => NlwBufferSignal_counter_inst_countBuf_9_CLK
    );
  NlwBufferBlock_counter_inst_countBuf_11_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => ro_to_counter,
      O => NlwBufferSignal_counter_inst_countBuf_11_CLK
    );
  NlwBufferBlock_counter_inst_countBuf_14_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => ro_to_counter,
      O => NlwBufferSignal_counter_inst_countBuf_14_CLK
    );
  NlwBufferBlock_counter_inst_countBuf_13_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => ro_to_counter,
      O => NlwBufferSignal_counter_inst_countBuf_13_CLK
    );
  NlwBufferBlock_counter_inst_countBuf_12_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => ro_to_counter,
      O => NlwBufferSignal_counter_inst_countBuf_12_CLK
    );
  NlwBufferBlock_counter_inst_countBuf_15_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => ro_to_counter,
      O => NlwBufferSignal_counter_inst_countBuf_15_CLK
    );
  NlwBufferBlock_counter_inst_countBuf_18_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => ro_to_counter,
      O => NlwBufferSignal_counter_inst_countBuf_18_CLK
    );
  NlwBufferBlock_counter_inst_countBuf_17_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => ro_to_counter,
      O => NlwBufferSignal_counter_inst_countBuf_17_CLK
    );
  NlwBufferBlock_counter_inst_countBuf_16_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => ro_to_counter,
      O => NlwBufferSignal_counter_inst_countBuf_16_CLK
    );
  NlwBufferBlock_counter_inst_countBuf_19_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => ro_to_counter,
      O => NlwBufferSignal_counter_inst_countBuf_19_CLK
    );
  NlwBufferBlock_counter_inst_countBuf_25_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => ro_to_counter,
      O => NlwBufferSignal_counter_inst_countBuf_25_CLK
    );
  NlwBufferBlock_counter_inst_countBuf_30_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => ro_to_counter,
      O => NlwBufferSignal_counter_inst_countBuf_30_CLK
    );
  NlwBufferBlock_counter_inst_countBuf_29_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => ro_to_counter,
      O => NlwBufferSignal_counter_inst_countBuf_29_CLK
    );
  NlwBufferBlock_counter_inst_countBuf_28_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => ro_to_counter,
      O => NlwBufferSignal_counter_inst_countBuf_28_CLK
    );
  NlwBufferBlock_counter_inst_countBuf_27_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => ro_to_counter,
      O => NlwBufferSignal_counter_inst_countBuf_27_CLK
    );
  NlwBufferBlock_counter_inst_countBuf_6_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => ro_to_counter,
      O => NlwBufferSignal_counter_inst_countBuf_6_CLK
    );
  NlwBufferBlock_counter_inst_countBuf_5_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => ro_to_counter,
      O => NlwBufferSignal_counter_inst_countBuf_5_CLK
    );
  NlwBufferBlock_counter_inst_countBuf_4_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => ro_to_counter,
      O => NlwBufferSignal_counter_inst_countBuf_4_CLK
    );
  NlwBufferBlock_counter_inst_countBuf_3_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => ro_to_counter,
      O => NlwBufferSignal_counter_inst_countBuf_3_CLK
    );
  NlwBufferBlock_counter_inst_countBuf_31_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => ro_to_counter,
      O => NlwBufferSignal_counter_inst_countBuf_31_CLK
    );
  NlwBlock_topDesign_VCC : X_ONE
    port map (
      O => VCC
    );
  NlwBlock_topDesign_GND : X_ZERO
    port map (
      O => GND
    );
  NlwBlockROC : X_ROC
    generic map (ROC_WIDTH => 100 ns)
    port map (O => GSR);
  NlwBlockTOC : X_TOC
    port map (O => GTS);

end Structure;

