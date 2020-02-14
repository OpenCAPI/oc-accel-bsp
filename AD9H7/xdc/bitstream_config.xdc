###############################################################
## FPGA: xcvu37p-fsvh2892-2-i-es1
###############################################################

## Settings to generate MSC file
# See ALPHADATA 9H7 USERGUIDE
set_property BITSTREAM.GENERAL.COMPRESS TRUE [ current_design ]
set_property BITSTREAM.CONFIG.EXTMASTERCCLK_EN {DIV-2} [current_design]
set_property BITSTREAM.CONFIG.SPI_32BIT_ADDR YES [current_design]
set_property BITSTREAM.CONFIG.SPI_BUSWIDTH 8 [current_design]
set_property BITSTREAM.CONFIG.SPI_FALL_EDGE YES [current_design]
set_property BITSTREAM.CONFIG.UNUSEDPIN {Pullnone} [current_design]
set_property CFGBVS GND [ current_design ]
set_property CONFIG_VOLTAGE 1.8 [ current_design ]
set_property BITSTREAM.CONFIG.OVERTEMPSHUTDOWN Enable [current_design]


