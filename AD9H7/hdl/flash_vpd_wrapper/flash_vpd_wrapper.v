


module flash_vpd_wrapper (
    input            clock_afu
   ,input            reset_afu_n
   ,inout            FPGA_FLASH_CE2_L       // To/From FLASH of flash_sub_system.v
   ,inout            FPGA_FLASH_DQ4         // To/From FLASH of flash_sub_system.v
   ,inout            FPGA_FLASH_DQ5         // To/From FLASH of flash_sub_system.v
   ,inout            FPGA_FLASH_DQ6         // To/From FLASH of flash_sub_system.v
   ,inout            FPGA_FLASH_DQ7         // To/From FLASH of flash_sub_system.v

 //host_if <=> flash
  , input    [1:0]   cfg_flsh_devsel         // Select which AXI4-Lite slave is the target of the command
  , input   [13:0]   cfg_flsh_addr           // Read or write address to selected target (set upper unused bits to 0)
  , input            cfg_flsh_wren           // Set to 1 to write a location, held stable through operation until done=1
  , input   [31:0]   cfg_flsh_wdata          // Contains write data (valid while wren=1)
  , input            cfg_flsh_rden           // Set to 1 to read  a location, held stable through operation until done=1
  , output  [31:0]   flsh_cfg_rdata          // Contains read data (valid when rden=1 and done=1)
  , output           flsh_cfg_done           // AXI logic pulses to 1 for 1 cycle when write is complete, or when rdata contains valid results
  , output   [1:0]   flsh_cfg_bresp          // Write response from selected AXI4-Lite device
  , output   [1:0]   flsh_cfg_rresp          // Read  response from selected AXI4-Lite device
  , output   [7:0]   flsh_cfg_status         // Device Specific status information
  , input            cfg_flsh_expand_enable     // When 1, expand/collapse 4 bytes of data into four, 1 byte AXI operations
  , input            cfg_flsh_expand_dir        // When 0, expand bytes [3:0] in order 0,1,2,3 . When 1, expand in order 3,2,1,0 .


 //host_if <=> VPD
  , input  [14:0]   cfg_vpd_addr               // Address for write or read
  , input           cfg_vpd_wren               // Held at 1 to write a location until it sees vpd_done = 1 then clear to 0
  , input  [31:0]   cfg_vpd_wdata              // Contains data to write to VPD register (valid while wren=1)
  , input           cfg_vpd_rden               // Held at 1 to read  a location until it sees vpd_done = 1 then clear to 0
  , output [31:0]   vpd_cfg_rdata              // Contains data read back from VPD register (valid when rden=1 and vpd_done=1)
  , output          vpd_cfg_done               // VPD pulses to 1 for 1 cycle when write is complete, or when rdata contains valid results
  , output          vpd_err_unimplemented_addr // Connect into internal error vector if desired



  , input            icap_clk
);

//=============================================================================
//
//          Flash Subsystem
//
//=============================================================================
  wire spi_clk;  // 100Mhz
  BUFGCE_DIV #(.BUFGCE_DIVIDE(2)) spi_clk_inst (
      .O(spi_clk), .CE(1'b1), .CLR(1'b0), .I(clock_afu)
  );

  flash_sub_system FLASH
    (
      // -- Outputs
      // .spi_clk_div_2                         ( spi_clk_div_2 ),          // -- output
      .axi_cfg_rdata                         ( flsh_cfg_rdata[31:0] ),   // -- output
      .axi_cfg_done                          ( flsh_cfg_done ),          // -- output
      .axi_cfg_bresp                         ( flsh_cfg_bresp[1:0] ),    // -- output
      .axi_cfg_rresp                         ( flsh_cfg_rresp[1:0] ),    // -- output
      .axi_cfg_status                        ( flsh_cfg_status[7:0] ),   // -- output
      // -- Inouts
      .FPGA_FLASH_CE2_L                      ( FPGA_FLASH_CE2_L ),       // -- inout
      .FPGA_FLASH_DQ4                        ( FPGA_FLASH_DQ4 ),         // -- inout
      .FPGA_FLASH_DQ5                        ( FPGA_FLASH_DQ5 ),         // -- inout
      .FPGA_FLASH_DQ6                        ( FPGA_FLASH_DQ6 ),         // -- inout
      .FPGA_FLASH_DQ7                        ( FPGA_FLASH_DQ7 ),         // -- inout
      // -- Inputs
      .axi_clk                               ( clock_tlx ),              // -- input
      .spi_clk                               ( spi_clk ),                // -- input
      .icap_clk                              ( icap_clk ),               // -- input
      .reset_n                               ( reset_afu_n ),            // -- input
      .cfg_axi_devsel                        ( cfg_flsh_devsel[1:0] ),   // -- input
      .cfg_axi_addr                          ( cfg_flsh_addr[13:0] ),    // -- input
      .cfg_axi_wren                          ( cfg_flsh_wren ),          // -- input
      .cfg_axi_wdata                         ( cfg_flsh_wdata[31:0] ),   // -- input
      .cfg_axi_rden                          ( cfg_flsh_rden ),          // -- input
      .data_expand_enable                    ( cfg_flsh_expand_enable ), // -- input
      .data_expand_dir                       ( cfg_flsh_expand_dir )     // -- input
    );
   
//=============================================================================
//
//          VPD
//
//=============================================================================

// Vivado IP Packager thought it is a DCP derived file and ignored it. 
// Here ingore this module. 
assign vpd_cfg_done = 1'b0;
assign vpd_cfg_rdata = 32'b0;
assign vpd_err_unimplemented_addr = 1'b0;
//  vpd_stub  vpd
//    (
//      // -- Miscellaneous Ports
//      .clock                                       ( clock_tlx ),                              // -- input
//      .reset                                       ( ~reset_afu_n ),                            // -- input
//
//      .cfg_vpd_rden                                ( cfg_vpd_rden ),                           // -- input
//      .cfg_vpd_wren                                ( cfg_vpd_wren ),                           // -- input
//      .cfg_vpd_addr                                ( cfg_vpd_addr[14:0] ),                     // -- input
//      .cfg_vpd_wdata                               ( cfg_vpd_wdata[31:0] ),                    // -- input
//
//      .vpd_cfg_done                                ( vpd_cfg_done ),                           // -- output
//      .vpd_cfg_rdata                               ( vpd_cfg_rdata[31:0] ),                    // -- output
//
//      // -- Error indicator
//      .vpd_err_unimplemented_addr                  ( vpd_err_unimplemented_addr )              // -- output
//
//    );


endmodule
