
# PlanAhead Launch Script for Post-Synthesis pin planning, created by Project Navigator

create_project -name period_cul -dir "F:/PUF/period_cul/planAhead_run_5" -part xc7z020clg484-1
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "F:/PUF/period_cul/topDesign.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {F:/PUF/period_cul} {ipcore_dir} }
set_param project.pinAheadLayout  yes
set_property target_constrs_file "topDesign.ucf" [current_fileset -constrset]
add_files [list {topDesign.ucf}] -fileset [get_property constrset [current_run]]
link_design
