set_property PACKAGE_PIN AP26 [get_ports {refclk300_p}]
set_property IOSTANDARD LVDS [get_ports {refclk300_p}]
set_property DIFF_TERM_ADV TERM_100 [get_ports {refclk300_p}]

set_property PACKAGE_PIN AP27 [get_ports {refclk300_n}]
set_property IOSTANDARD LVDS [get_ports {refclk300_n}]
set_property DIFF_TERM_ADV TERM_100 [get_ports {refclk300_n}]

create_clock -period 3.333 -name refclk [get_ports {refclk300_p}]
