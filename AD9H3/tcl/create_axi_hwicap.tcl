
create_ip -name axi_hwicap -vendor xilinx.com -library ip -version 3.0 -module_name axi_hwicap_0
set_property -dict [list CONFIG.C_BRAM_SRL_FIFO_TYPE {0} CONFIG.C_ENABLE_ASYNC {1}] [get_ips axi_hwicap_0]
#set_property -dict [list CONFIG.C_ICAP_EXTERNAL {1}] [get_ips axi_hwicap_0]
set_property used_in_simulation false [get_files *axi_hwicap_0.xci]
#generate_target {all} [get_ips axi_hwicap_0]
