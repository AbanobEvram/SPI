module Maindesign(MOSI,SS_n,clk,rst_n,MISO);
 input MOSI,SS_n,clk,rst_n;
 output MISO;
 wire [9:0] rx_data;
 wire [7:0] tx_data;
 wire rx_valid, tx_valid;
 
 SPI    spi(MOSI, SS_n, clk, rst_n, tx_valid,MISO,rx_valid,rx_data,tx_data);
 
 RAM_main    RAM(rx_data,clk,rst_n,rx_valid,tx_data,tx_valid);

endmodule