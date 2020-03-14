###############################################################
## Reset
###############################################################

set_property PACKAGE_PIN F13 [get_ports ocde]
set_property IOSTANDARD LVCMOS18 [get_ports ocde]

########################
## Bottom Left Corner ##
########################

# DLX0 Clocks
set_property PACKAGE_PIN T33 [get_ports ocaccel_oc_phy_mgtrefclk1_x0y0_n]
set_property PACKAGE_PIN T32 [get_ports ocaccel_oc_phy_mgtrefclk1_x0y0_p]
set_property PACKAGE_PIN Y33 [get_ports ocaccel_oc_phy_mgtrefclk1_x0y1_n]
set_property PACKAGE_PIN Y32 [get_ports ocaccel_oc_phy_mgtrefclk1_x0y1_p]

# Free run clock constraint
# page 13 adm-pcie-9v3 user manual.pdf
# Signal: FABRIC_CLK
#set_property PACKAGE_PIN AH9 [get_ports ocaccel_oc_phy_freerun_clk_n]
#set_property PACKAGE_PIN AH10 [get_ports ocaccel_oc_phy_freerun_clk_p]
set_property PACKAGE_PIN J18 [get_ports ocaccel_oc_phy_freerun_clk_n]
set_property PACKAGE_PIN J19 [get_ports ocaccel_oc_phy_freerun_clk_p]

set_property IOSTANDARD  LVDS [get_ports ocaccel_oc_phy_freerun_clk_p]
set_property IOSTANDARD  LVDS [get_ports ocaccel_oc_phy_freerun_clk_n]

# DLX0 TRANSMIT/RECEIVE Channels
set_property PACKAGE_PIN N39 [get_ports ocaccel_oc_phy_ch0_gtyrxp_in]
set_property PACKAGE_PIN N40 [get_ports ocaccel_oc_phy_ch0_gtyrxn_in]
set_property PACKAGE_PIN N34 [get_ports ocaccel_oc_phy_ch0_gtytxp_out]
set_property PACKAGE_PIN N35 [get_ports ocaccel_oc_phy_ch0_gtytxn_out]
set_property PACKAGE_PIN P41 [get_ports ocaccel_oc_phy_ch1_gtyrxp_in]
set_property PACKAGE_PIN P42 [get_ports ocaccel_oc_phy_ch1_gtyrxn_in]
set_property PACKAGE_PIN P36 [get_ports ocaccel_oc_phy_ch1_gtytxp_out]
set_property PACKAGE_PIN P37 [get_ports ocaccel_oc_phy_ch1_gtytxn_out]
set_property PACKAGE_PIN R39 [get_ports ocaccel_oc_phy_ch2_gtyrxp_in]
set_property PACKAGE_PIN R40 [get_ports ocaccel_oc_phy_ch2_gtyrxn_in]
set_property PACKAGE_PIN R34 [get_ports ocaccel_oc_phy_ch2_gtytxp_out]
set_property PACKAGE_PIN R35 [get_ports ocaccel_oc_phy_ch2_gtytxn_out]
set_property PACKAGE_PIN T41 [get_ports ocaccel_oc_phy_ch3_gtyrxp_in]
set_property PACKAGE_PIN T42 [get_ports ocaccel_oc_phy_ch3_gtyrxn_in]
set_property PACKAGE_PIN T36 [get_ports ocaccel_oc_phy_ch3_gtytxp_out]
set_property PACKAGE_PIN T37 [get_ports ocaccel_oc_phy_ch3_gtytxn_out]
set_property PACKAGE_PIN U39 [get_ports ocaccel_oc_phy_ch4_gtyrxp_in]
set_property PACKAGE_PIN U40 [get_ports ocaccel_oc_phy_ch4_gtyrxn_in]
set_property PACKAGE_PIN U34 [get_ports ocaccel_oc_phy_ch4_gtytxp_out]
set_property PACKAGE_PIN U35 [get_ports ocaccel_oc_phy_ch4_gtytxn_out]
set_property PACKAGE_PIN V41 [get_ports ocaccel_oc_phy_ch5_gtyrxp_in]
set_property PACKAGE_PIN V42 [get_ports ocaccel_oc_phy_ch5_gtyrxn_in]
set_property PACKAGE_PIN V36 [get_ports ocaccel_oc_phy_ch5_gtytxp_out]
set_property PACKAGE_PIN V37 [get_ports ocaccel_oc_phy_ch5_gtytxn_out]
set_property PACKAGE_PIN W39 [get_ports ocaccel_oc_phy_ch6_gtyrxp_in]
set_property PACKAGE_PIN W40 [get_ports ocaccel_oc_phy_ch6_gtyrxn_in]
set_property PACKAGE_PIN W34 [get_ports ocaccel_oc_phy_ch6_gtytxp_out]
set_property PACKAGE_PIN W35 [get_ports ocaccel_oc_phy_ch6_gtytxn_out]
set_property PACKAGE_PIN Y41 [get_ports ocaccel_oc_phy_ch7_gtyrxp_in]
set_property PACKAGE_PIN Y42 [get_ports ocaccel_oc_phy_ch7_gtyrxn_in]
set_property PACKAGE_PIN Y36 [get_ports ocaccel_oc_phy_ch7_gtytxp_out]
set_property PACKAGE_PIN Y37 [get_ports ocaccel_oc_phy_ch7_gtytxn_out]
