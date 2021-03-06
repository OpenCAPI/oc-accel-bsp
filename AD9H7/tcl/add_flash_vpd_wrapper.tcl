############################################################################
############################################################################
##
## Copyright 2020 International Business Machines
##
## Licensed under the Apache License, Version 2.0 (the "License");
## you may not use this file except in compliance with the License.
## You may obtain a copy of the License at
##
##     http://www.apache.org/licenses/LICENSE-2.0
##
## Unless required by applicable law or agreed to in writing, software
## distributed under the License is distributed on an "AS IS" BASIS,
## WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
## See the License for the specific language governing permissions and
## limitations under the License.
##
############################################################################
############################################################################
set fpga_card        $::env(FPGACARD)
set root_dir         $::env(OCACCEL_HARDWARE_ROOT)
set simulator      $::env(SIMULATOR)
set src_dir          $root_dir/oc-accel-bsp/$fpga_card/hdl/flash_vpd_wrapper
set tcl_dir          $root_dir/oc-accel-bsp/$fpga_card/tcl

set verilog_flash_vpd_wrapper [list \
 $src_dir/cfg_reg_to_axi4lite.v    \
 $src_dir/flash_sub_system.v    \
 $src_dir/flash_vpd_wrapper.v    \
]

# Ignore this: 
# $src_dir/vpd_stub.v 
#
source $tcl_dir/create_axi_hwicap.tcl
source $tcl_dir/create_axi_quad_spi.tcl

############################################################################
#Add source files
puts "	                Adding design sources to flash_vpd_wrapper project"
# Set 'sources_1' fileset object, create list of all nececessary verilog files
set obj [get_filesets sources_1]
set files [list {*}$verilog_flash_vpd_wrapper ]
add_files -norecurse -fileset $obj $files

if { $simulator != "nosim" } {
  puts "	        Simulation with $simulator enabled, adding $src_dir/sim_only/flash_vpd_wrapper.sv"
  add_files -norecurse -fileset sim_1 $src_dir/sim_only/flash_vpd_wrapper.sv
}

foreach f $verilog_flash_vpd_wrapper {
  set_property used_in_simulation     false [get_files $f]
}

if { $simulator != "nosim" } {
  set_property used_in_synthesis      false [get_files $src_dir/sim_only/flash_vpd_wrapper.sv]
  set_property used_in_implementation false [get_files $src_dir/sim_only/flash_vpd_wrapper.sv]
  set_property used_in_simulation     true  [get_files $src_dir/sim_only/flash_vpd_wrapper.sv]
}

set_property top flash_vpd_wrapper [get_filesets sources_1]
set_property top flash_vpd_wrapper [get_filesets sim_1]

update_compile_order -fileset sources_1
update_compile_order -fileset sim_1
