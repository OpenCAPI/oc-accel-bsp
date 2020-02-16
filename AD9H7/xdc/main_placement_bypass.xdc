#set_property EXTRACT_ENABLE NO [get_cells {top_i/oc_host_if/inst/dlx_phy/ocx_dlx_top_inst/rx/main/replay_deskew_cntr_q_reg[*] top_i/oc_host_if/inst/dlx_phy/ocx_dlx_top_inst/rx/lane?/ts1_cntr_q_reg[*] top_i/oc_host_if/inst/dlx_phy/ocx_dlx_top_inst/rx/lane?/lfsr_q_reg[*] top_i/oc_host_if/inst/dlx_phy/ocx_dlx_top_inst/rx/lane?/deskew_buffer?_q_reg[*] top_i/oc_host_if/inst/dlx_phy/ocx_dlx_top_inst/rx/main/crc_bits_q_reg[*]}]
#set_power_opt -exclude_cells [get_cells {top_i/oc_host_if/inst/dlx_phy/ocx_dlx_top_inst/tx/flt/bram/ram_sdp_reg_?}]
#
#set_property MAX_FANOUT 60 [get_nets {top_i/oc_host_if/inst/dlx_phy/ocx_dlx_top_inst/tx/ctl/ctl_x4_not_x8_tx_mode}]
## set_property MAX_FANOUT 60 [get_nets {top_i/oc_host_if/inst/dlx_phy/ocx_dlx_top_inst/rx/main/deskew_all_valid_l0}]
#set_property MAX_FANOUT 80 [get_nets {top_i/oc_host_if/inst/dlx_phy/ocx_dlx_top_inst/rx/reset}]
#set_property MAX_FANOUT 50 [get_nets {top_i/oc_host_if/inst/dlx_phy/ocx_dlx_top_inst/tx/flt/crc_zero_d1_q}]
#set_property MAX_FANOUT 50 [get_nets {top_i/oc_host_if/inst/dlx_phy/ocx_dlx_top_inst/rx/training_q}]
#set_property MAX_FANOUT 26 [get_nets {top_i/oc_host_if/inst/dlx_phy/ocx_dlx_top_inst/tx/flt/crc_zero_d2_q}]
#
## 1024: Added more constraints to disable inference of enable/reset for some regs
#set_property EXTRACT_ENABLE NO [get_cells {top_i/oc_host_if/inst/tlx/OCX_TLX_FRAMER/cmd_cntl_flit_reg_reg[*]}]
#set_property EXTRACT_ENABLE NO [get_cells {top_i/oc_host_if/inst/tlx/OCX_TLX_FRAMER/vc0_fifo/valid_entry_counter_reg[*]}]
#set_property EXTRACT_ENABLE NO [get_cells {top_i/oc_host_if/inst/tlx/OCX_TLX_PARSER/TLX_Parser/flit_parser/ctl_flit_dout_reg[*]}]
#
#set_property EXTRACT_RESET NO [get_cells {top_i/oc_host_if/inst/tlx/OCX_TLX_PARSER/TLX_RCV_FIFO/CMD_FIFO_MAC/CMD_INFO_CTL/ctl_cnt_dout_reg[*]}]
#set_property EXTRACT_RESET NO [get_cells {top_i/oc_host_if/inst/dlx_phy/ocx_dlx_top_inst/tx/flt/pre_crc_data_q_reg[*]}]
#set_property EXTRACT_RESET NO [get_cells {top_i/oc_host_if/inst/tlx/OCX_TLX_PARSER/TLX_RCV_FIFO/RESP_FIFO_MAC/RESP_INFO_CTL/data_wr_cnt_dout_reg[*]}]
#set_property EXTRACT_RESET NO [get_cells {top_i/oc_host_if/inst/tlx/OCX_TLX_PARSER/TLX_RCV_FIFO/CMD_FIFO_MAC/CMD_INFO_CTL/data_wr_cnt_dout_reg[*]}]
