
# PlanAhead Launch Script for Pre-Synthesis Floorplanning, created by Project Navigator

create_project -name period_cul -dir "F:/PUF/period_cul/planAhead_run_4" -part xc7z020clg484-1
set_param project.pinAheadLayout yes
set srcset [get_property srcset [current_run -impl]]
set_property target_constrs_file "topDesign.ucf" [current_fileset -constrset]
set hdlfile [add_files [list {ipcore_dir/clk_10Mc.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {ipcore_dir/clk_10Mc/example_design/clk_10Mc_exdes.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {roModule.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {roDriver.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {roCounter.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {counterOutPut.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {topDesign.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set_property top topDesign $srcset
add_files [list {topDesign.ucf}] -fileset [get_property constrset [current_run]]
open_rtl_design -part xc7z020clg484-1
