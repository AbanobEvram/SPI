// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Mon Aug  5 22:46:01 2024
// Host        : Abanob running 64-bit major release  (build 9200)
// Command     : write_verilog {C:/Users/Abanob Evram/Desktop/SPI/Netlist_file.v}
// Design      : Maindesign
// Purpose     : This is a Verilog netlist of the current design or from a specific cell of the design. The output is an
//               IEEE 1364-2001 compliant Verilog HDL file that contains netlist information obtained from the input
//               design files.
// Device      : xc7a35ticpg236-1L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module dbg_hub_CV
   (clk,
    sl_iport0_o,
    sl_oport0_i);
  input clk;
  output [0:36]sl_iport0_o;
  input [0:16]sl_oport0_i;


endmodule

module u_ila_0_CV
   (clk,
    probe0,
    SL_IPORT_I,
    SL_OPORT_O,
    probe1,
    probe2,
    probe3,
    probe4);
  input clk;
  input [0:0]probe0;
  input [0:36]SL_IPORT_I;
  output [0:16]SL_OPORT_O;
  input [0:0]probe1;
  input [0:0]probe2;
  input [0:0]probe3;
  input [0:0]probe4;


endmodule

(* STRUCTURAL_NETLIST = "yes" *)
module Maindesign
   (MOSI,
    SS_n,
    clk,
    rst_n,
    MISO);
  input MOSI;
  input SS_n;
  input clk;
  input rst_n;
  output MISO;

  wire MISO;
  wire MISO_OBUF;
  wire MOSI;
  wire MOSI_IBUF;
  wire RAM_n_1;
  wire RAM_n_2;
  wire SS_n;
  wire SS_n_IBUF;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire [1:0]count_tx;
  wire rst_n;
  wire rst_n_IBUF;
  wire [7:0]rx_data;
  wire [0:36]sl_iport0_o_0;
  wire [0:16]sl_oport0_i_0;
  wire spi_n_1;
  wire spi_n_13;
  wire spi_n_14;
  wire spi_n_15;
  wire spi_n_16;
  wire spi_n_4;
  wire tx_valid;

  OBUF MISO_OBUF_inst
       (.I(MISO_OBUF),
        .O(MISO));
  IBUF MOSI_IBUF_inst
       (.I(MOSI),
        .O(MOSI_IBUF));
  RAM_main RAM
       (.CLK(clk_IBUF_BUFG),
        .DIADI(rx_data),
        .E(spi_n_16),
        .MISO_reg(RAM_n_1),
        .MISO_reg_0(RAM_n_2),
        .Q(count_tx),
        .WEA(spi_n_14),
        .rst_n(spi_n_1),
        .rst_n_IBUF(rst_n_IBUF),
        .\rx_data_reg[8] (spi_n_15),
        .\rx_data_reg[9] (spi_n_4),
        .\rx_data_reg[9]_0 (spi_n_13),
        .tx_valid(tx_valid));
  IBUF SS_n_IBUF_inst
       (.I(SS_n),
        .O(SS_n_IBUF));
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  (* CORE_GENERATION_INFO = "dbg_hub,labtools_xsdbm_v3_00_a,{C_BSCAN_MODE=false,C_BSCAN_MODE_WITH_CORE=false,C_CLK_INPUT_FREQ_HZ=300000000,C_ENABLE_CLK_DIVIDER=false,C_EN_BSCANID_VEC=false,C_NUM_BSCAN_MASTER_PORTS=0,C_TWO_PRIM_MODE=false,C_USER_SCAN_CHAIN=1,C_USE_EXT_BSCAN=false,C_XSDB_NUM_SLAVES=1,component_name=dbg_hub_CV}" *) 
  (* DEBUG_PORT_clk = "" *) 
  (* IS_DEBUG_CORE *) 
  dbg_hub_CV dbg_hub
       (.clk(clk_IBUF_BUFG),
        .sl_iport0_o(sl_iport0_o_0),
        .sl_oport0_i(sl_oport0_i_0));
  IBUF rst_n_IBUF_inst
       (.I(rst_n),
        .O(rst_n_IBUF));
  SPI spi
       (.CLK(clk_IBUF_BUFG),
        .DIADI(rx_data),
        .E(spi_n_16),
        .MISO_OBUF(MISO_OBUF),
        .MOSI_IBUF(MOSI_IBUF),
        .Q(count_tx),
        .SS_n_IBUF(SS_n_IBUF),
        .WEA(spi_n_14),
        .mem_reg(spi_n_15),
        .mem_reg_0(RAM_n_1),
        .mem_reg_1(RAM_n_2),
        .rd_add_signal_reg_0(spi_n_1),
        .\rd_addr_reg[7] (spi_n_13),
        .rst_n_IBUF(rst_n_IBUF),
        .tx_valid(tx_valid),
        .tx_valid_reg(spi_n_4));
  (* CORE_GENERATION_INFO = "u_ila_0,labtools_ila_v6_00_a,{ALL_PROBE_SAME_MU=true,ALL_PROBE_SAME_MU_CNT=1,C_ADV_TRIGGER=false,C_DATA_DEPTH=1024,C_EN_STRG_QUAL=false,C_INPUT_PIPE_STAGES=0,C_NUM_OF_PROBES=5,C_PROBE0_TYPE=0,C_PROBE0_WIDTH=1,C_PROBE1_TYPE=0,C_PROBE1_WIDTH=1,C_PROBE2_TYPE=0,C_PROBE2_WIDTH=1,C_PROBE3_TYPE=0,C_PROBE3_WIDTH=1,C_PROBE4_TYPE=0,C_PROBE4_WIDTH=1,C_TRIGIN_EN=0,C_TRIGOUT_EN=0,component_name=u_ila_0_CV}" *) 
  (* DEBUG_PORT_clk = "n:clk_IBUF_BUFG" *) 
  (* DEBUG_PORT_probe0 = "n:clk_IBUF" *) 
  (* DEBUG_PORT_probe1 = "n:MISO_OBUF" *) 
  (* DEBUG_PORT_probe2 = "n:MOSI_IBUF" *) 
  (* DEBUG_PORT_probe3 = "n:rst_n_IBUF" *) 
  (* DEBUG_PORT_probe4 = "n:SS_n_IBUF" *) 
  (* IS_DEBUG_CORE *) 
  u_ila_0_CV u_ila_0
       (.SL_IPORT_I(sl_iport0_o_0),
        .SL_OPORT_O(sl_oport0_i_0),
        .clk(clk_IBUF_BUFG),
        .probe0(clk_IBUF),
        .probe1(MISO_OBUF),
        .probe2(MOSI_IBUF),
        .probe3(rst_n_IBUF),
        .probe4(SS_n_IBUF));
endmodule

module RAM_main
   (tx_valid,
    MISO_reg,
    MISO_reg_0,
    CLK,
    rst_n_IBUF,
    \rx_data_reg[8] ,
    rst_n,
    DIADI,
    WEA,
    \rx_data_reg[9] ,
    Q,
    E,
    \rx_data_reg[9]_0 );
  output tx_valid;
  output MISO_reg;
  output MISO_reg_0;
  input CLK;
  input rst_n_IBUF;
  input \rx_data_reg[8] ;
  input rst_n;
  input [7:0]DIADI;
  input [0:0]WEA;
  input \rx_data_reg[9] ;
  input [1:0]Q;
  input [0:0]E;
  input [0:0]\rx_data_reg[9]_0 ;

  wire \<const0> ;
  wire \<const1> ;
  wire CLK;
  wire [7:0]DIADI;
  wire [0:0]E;
  wire MISO_reg;
  wire MISO_reg_0;
  wire [1:0]Q;
  wire [0:0]WEA;
  wire [7:0]rd_addr;
  wire rst_n;
  wire rst_n_IBUF;
  wire \rx_data_reg[8] ;
  wire \rx_data_reg[9] ;
  wire [0:0]\rx_data_reg[9]_0 ;
  wire [7:0]tx_data;
  wire tx_valid;
  wire [7:0]wr_addr;

  GND GND
       (.G(\<const0> ));
  LUT6 #(
    .INIT(64'hF0CCFFAAF0CC00AA)) 
    MISO_i_3
       (.I0(tx_data[3]),
        .I1(tx_data[1]),
        .I2(tx_data[2]),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(tx_data[0]),
        .O(MISO_reg));
  LUT6 #(
    .INIT(64'hF0CCFFAAF0CC00AA)) 
    MISO_i_4
       (.I0(tx_data[7]),
        .I1(tx_data[5]),
        .I2(tx_data[6]),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(tx_data[4]),
        .O(MISO_reg_0));
  VCC VCC
       (.P(\<const1> ));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "2048" *) 
  (* RTL_RAM_NAME = "mem" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "1023" *) 
  (* bram_slice_begin = "0" *) 
  (* bram_slice_end = "7" *) 
  RAMB18E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .INIT_FILE("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(18),
    .READ_WIDTH_B(18),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(18),
    .WRITE_WIDTH_B(18)) 
    mem_reg
       (.ADDRARDADDR({\<const1> ,\<const1> ,wr_addr,\<const1> ,\<const1> ,\<const1> ,\<const1> }),
        .ADDRBWRADDR({\<const1> ,\<const1> ,rd_addr,\<const1> ,\<const1> ,\<const1> ,\<const1> }),
        .CLKARDCLK(CLK),
        .CLKBWRCLK(CLK),
        .DIADI({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,DIADI}),
        .DIBDI({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> }),
        .DIPADIP({\<const0> ,\<const0> }),
        .DIPBDIP({\<const0> ,\<const0> }),
        .DOBDO(tx_data),
        .ENARDEN(rst_n_IBUF),
        .ENBWREN(\rx_data_reg[8] ),
        .REGCEAREGCE(\<const0> ),
        .REGCEB(\<const0> ),
        .RSTRAMARSTRAM(\<const0> ),
        .RSTRAMB(rst_n),
        .RSTREGARSTREG(\<const0> ),
        .RSTREGB(\<const0> ),
        .WEA({WEA,WEA}),
        .WEBWE({\<const0> ,\<const0> ,\<const0> ,\<const0> }));
  FDRE #(
    .INIT(1'b0)) 
    \rd_addr_reg[0] 
       (.C(CLK),
        .CE(\rx_data_reg[9]_0 ),
        .D(DIADI[0]),
        .Q(rd_addr[0]),
        .R(rst_n));
  FDRE #(
    .INIT(1'b0)) 
    \rd_addr_reg[1] 
       (.C(CLK),
        .CE(\rx_data_reg[9]_0 ),
        .D(DIADI[1]),
        .Q(rd_addr[1]),
        .R(rst_n));
  FDRE #(
    .INIT(1'b0)) 
    \rd_addr_reg[2] 
       (.C(CLK),
        .CE(\rx_data_reg[9]_0 ),
        .D(DIADI[2]),
        .Q(rd_addr[2]),
        .R(rst_n));
  FDRE #(
    .INIT(1'b0)) 
    \rd_addr_reg[3] 
       (.C(CLK),
        .CE(\rx_data_reg[9]_0 ),
        .D(DIADI[3]),
        .Q(rd_addr[3]),
        .R(rst_n));
  FDRE #(
    .INIT(1'b0)) 
    \rd_addr_reg[4] 
       (.C(CLK),
        .CE(\rx_data_reg[9]_0 ),
        .D(DIADI[4]),
        .Q(rd_addr[4]),
        .R(rst_n));
  FDRE #(
    .INIT(1'b0)) 
    \rd_addr_reg[5] 
       (.C(CLK),
        .CE(\rx_data_reg[9]_0 ),
        .D(DIADI[5]),
        .Q(rd_addr[5]),
        .R(rst_n));
  FDRE #(
    .INIT(1'b0)) 
    \rd_addr_reg[6] 
       (.C(CLK),
        .CE(\rx_data_reg[9]_0 ),
        .D(DIADI[6]),
        .Q(rd_addr[6]),
        .R(rst_n));
  FDRE #(
    .INIT(1'b0)) 
    \rd_addr_reg[7] 
       (.C(CLK),
        .CE(\rx_data_reg[9]_0 ),
        .D(DIADI[7]),
        .Q(rd_addr[7]),
        .R(rst_n));
  FDRE #(
    .INIT(1'b0)) 
    tx_valid_reg
       (.C(CLK),
        .CE(\<const1> ),
        .D(\rx_data_reg[9] ),
        .Q(tx_valid),
        .R(rst_n));
  FDRE #(
    .INIT(1'b0)) 
    \wr_addr_reg[0] 
       (.C(CLK),
        .CE(E),
        .D(DIADI[0]),
        .Q(wr_addr[0]),
        .R(rst_n));
  FDRE #(
    .INIT(1'b0)) 
    \wr_addr_reg[1] 
       (.C(CLK),
        .CE(E),
        .D(DIADI[1]),
        .Q(wr_addr[1]),
        .R(rst_n));
  FDRE #(
    .INIT(1'b0)) 
    \wr_addr_reg[2] 
       (.C(CLK),
        .CE(E),
        .D(DIADI[2]),
        .Q(wr_addr[2]),
        .R(rst_n));
  FDRE #(
    .INIT(1'b0)) 
    \wr_addr_reg[3] 
       (.C(CLK),
        .CE(E),
        .D(DIADI[3]),
        .Q(wr_addr[3]),
        .R(rst_n));
  FDRE #(
    .INIT(1'b0)) 
    \wr_addr_reg[4] 
       (.C(CLK),
        .CE(E),
        .D(DIADI[4]),
        .Q(wr_addr[4]),
        .R(rst_n));
  FDRE #(
    .INIT(1'b0)) 
    \wr_addr_reg[5] 
       (.C(CLK),
        .CE(E),
        .D(DIADI[5]),
        .Q(wr_addr[5]),
        .R(rst_n));
  FDRE #(
    .INIT(1'b0)) 
    \wr_addr_reg[6] 
       (.C(CLK),
        .CE(E),
        .D(DIADI[6]),
        .Q(wr_addr[6]),
        .R(rst_n));
  FDRE #(
    .INIT(1'b0)) 
    \wr_addr_reg[7] 
       (.C(CLK),
        .CE(E),
        .D(DIADI[7]),
        .Q(wr_addr[7]),
        .R(rst_n));
endmodule

module SPI
   (MISO_OBUF,
    rd_add_signal_reg_0,
    Q,
    tx_valid_reg,
    DIADI,
    \rd_addr_reg[7] ,
    WEA,
    mem_reg,
    E,
    CLK,
    mem_reg_0,
    mem_reg_1,
    MOSI_IBUF,
    SS_n_IBUF,
    tx_valid,
    rst_n_IBUF);
  output MISO_OBUF;
  output rd_add_signal_reg_0;
  output [1:0]Q;
  output tx_valid_reg;
  output [7:0]DIADI;
  output [0:0]\rd_addr_reg[7] ;
  output [0:0]WEA;
  output mem_reg;
  output [0:0]E;
  input CLK;
  input mem_reg_0;
  input mem_reg_1;
  input MOSI_IBUF;
  input SS_n_IBUF;
  input tx_valid;
  input rst_n_IBUF;

  wire \<const0> ;
  wire \<const1> ;
  wire CLK;
  wire [7:0]DIADI;
  wire [0:0]E;
  wire \FSM_onehot_cs[0]_i_1_n_0 ;
  wire \FSM_onehot_cs[1]_i_1_n_0 ;
  wire \FSM_onehot_cs[2]_i_1_n_0 ;
  wire \FSM_onehot_cs[3]_i_1_n_0 ;
  wire \FSM_onehot_cs[4]_i_2_n_0 ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_cs_reg_n_0_[0] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_cs_reg_n_0_[1] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_cs_reg_n_0_[2] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_cs_reg_n_0_[3] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_cs_reg_n_0_[4] ;
  wire MISO1;
  wire MISO12_in;
  wire MISO1_carry__0_i_1_n_0;
  wire MISO1_carry__0_i_2_n_0;
  wire MISO1_carry__0_i_3_n_0;
  wire MISO1_carry__0_i_4_n_0;
  wire MISO1_carry__0_i_5_n_0;
  wire MISO1_carry__0_i_6_n_0;
  wire MISO1_carry__0_i_7_n_0;
  wire MISO1_carry__0_i_8_n_0;
  wire MISO1_carry__0_n_0;
  wire MISO1_carry__0_n_1;
  wire MISO1_carry__0_n_2;
  wire MISO1_carry__0_n_3;
  wire MISO1_carry__1_i_1_n_0;
  wire MISO1_carry__1_i_2_n_0;
  wire MISO1_carry__1_i_3_n_0;
  wire MISO1_carry__1_i_4_n_0;
  wire MISO1_carry__1_i_5_n_0;
  wire MISO1_carry__1_i_6_n_0;
  wire MISO1_carry__1_i_7_n_0;
  wire MISO1_carry__1_i_8_n_0;
  wire MISO1_carry__1_n_0;
  wire MISO1_carry__1_n_1;
  wire MISO1_carry__1_n_2;
  wire MISO1_carry__1_n_3;
  wire MISO1_carry__2_i_1_n_0;
  wire MISO1_carry__2_i_2_n_0;
  wire MISO1_carry__2_i_3_n_0;
  wire MISO1_carry__2_i_4_n_0;
  wire MISO1_carry__2_i_5_n_0;
  wire MISO1_carry__2_i_6_n_0;
  wire MISO1_carry__2_i_7_n_0;
  wire MISO1_carry__2_i_8_n_0;
  wire MISO1_carry__2_n_1;
  wire MISO1_carry__2_n_2;
  wire MISO1_carry__2_n_3;
  wire MISO1_carry_i_1_n_0;
  wire MISO1_carry_i_2_n_0;
  wire MISO1_carry_i_3_n_0;
  wire MISO1_carry_i_4_n_0;
  wire MISO1_carry_i_5_n_0;
  wire MISO1_carry_i_6_n_0;
  wire MISO1_carry_i_7_n_0;
  wire MISO1_carry_n_0;
  wire MISO1_carry_n_1;
  wire MISO1_carry_n_2;
  wire MISO1_carry_n_3;
  wire MISO_OBUF;
  wire MISO_i_1_n_0;
  wire MISO_i_2_n_0;
  wire MOSI_IBUF;
  wire [1:0]Q;
  wire SS_n_IBUF;
  wire [0:0]WEA;
  wire [31:0]count_rx;
  wire count_rx0_carry__0_n_0;
  wire count_rx0_carry__0_n_1;
  wire count_rx0_carry__0_n_2;
  wire count_rx0_carry__0_n_3;
  wire count_rx0_carry__1_n_0;
  wire count_rx0_carry__1_n_1;
  wire count_rx0_carry__1_n_2;
  wire count_rx0_carry__1_n_3;
  wire count_rx0_carry__2_n_0;
  wire count_rx0_carry__2_n_1;
  wire count_rx0_carry__2_n_2;
  wire count_rx0_carry__2_n_3;
  wire count_rx0_carry__3_n_0;
  wire count_rx0_carry__3_n_1;
  wire count_rx0_carry__3_n_2;
  wire count_rx0_carry__3_n_3;
  wire count_rx0_carry__4_n_0;
  wire count_rx0_carry__4_n_1;
  wire count_rx0_carry__4_n_2;
  wire count_rx0_carry__4_n_3;
  wire count_rx0_carry__5_n_0;
  wire count_rx0_carry__5_n_1;
  wire count_rx0_carry__5_n_2;
  wire count_rx0_carry__5_n_3;
  wire count_rx0_carry__6_n_2;
  wire count_rx0_carry__6_n_3;
  wire count_rx0_carry_n_0;
  wire count_rx0_carry_n_1;
  wire count_rx0_carry_n_2;
  wire count_rx0_carry_n_3;
  wire \count_rx[0]_i_1_n_0 ;
  wire \count_rx[10]_i_1_n_0 ;
  wire \count_rx[11]_i_1_n_0 ;
  wire \count_rx[12]_i_1_n_0 ;
  wire \count_rx[13]_i_1_n_0 ;
  wire \count_rx[14]_i_1_n_0 ;
  wire \count_rx[15]_i_1_n_0 ;
  wire \count_rx[16]_i_1_n_0 ;
  wire \count_rx[17]_i_1_n_0 ;
  wire \count_rx[18]_i_1_n_0 ;
  wire \count_rx[19]_i_1_n_0 ;
  wire \count_rx[1]_i_1_n_0 ;
  wire \count_rx[20]_i_1_n_0 ;
  wire \count_rx[21]_i_1_n_0 ;
  wire \count_rx[22]_i_1_n_0 ;
  wire \count_rx[23]_i_1_n_0 ;
  wire \count_rx[24]_i_1_n_0 ;
  wire \count_rx[25]_i_1_n_0 ;
  wire \count_rx[26]_i_1_n_0 ;
  wire \count_rx[27]_i_1_n_0 ;
  wire \count_rx[28]_i_1_n_0 ;
  wire \count_rx[29]_i_1_n_0 ;
  wire \count_rx[2]_i_1_n_0 ;
  wire \count_rx[30]_i_1_n_0 ;
  wire \count_rx[31]_i_2_n_0 ;
  wire \count_rx[3]_i_1_n_0 ;
  wire \count_rx[4]_i_1_n_0 ;
  wire \count_rx[5]_i_1_n_0 ;
  wire \count_rx[6]_i_1_n_0 ;
  wire \count_rx[7]_i_1_n_0 ;
  wire \count_rx[8]_i_1_n_0 ;
  wire \count_rx[9]_i_1_n_0 ;
  wire count_rx_0;
  wire [31:2]count_tx;
  wire \count_tx[0]_i_1_n_0 ;
  wire \count_tx[10]_i_1_n_0 ;
  wire \count_tx[11]_i_1_n_0 ;
  wire \count_tx[12]_i_1_n_0 ;
  wire \count_tx[12]_i_3_n_0 ;
  wire \count_tx[12]_i_4_n_0 ;
  wire \count_tx[12]_i_5_n_0 ;
  wire \count_tx[12]_i_6_n_0 ;
  wire \count_tx[13]_i_1_n_0 ;
  wire \count_tx[14]_i_1_n_0 ;
  wire \count_tx[15]_i_1_n_0 ;
  wire \count_tx[16]_i_1_n_0 ;
  wire \count_tx[16]_i_3_n_0 ;
  wire \count_tx[16]_i_4_n_0 ;
  wire \count_tx[16]_i_5_n_0 ;
  wire \count_tx[16]_i_6_n_0 ;
  wire \count_tx[17]_i_1_n_0 ;
  wire \count_tx[18]_i_1_n_0 ;
  wire \count_tx[19]_i_1_n_0 ;
  wire \count_tx[1]_i_1_n_0 ;
  wire \count_tx[20]_i_1_n_0 ;
  wire \count_tx[20]_i_3_n_0 ;
  wire \count_tx[20]_i_4_n_0 ;
  wire \count_tx[20]_i_5_n_0 ;
  wire \count_tx[20]_i_6_n_0 ;
  wire \count_tx[21]_i_1_n_0 ;
  wire \count_tx[22]_i_1_n_0 ;
  wire \count_tx[23]_i_1_n_0 ;
  wire \count_tx[24]_i_1_n_0 ;
  wire \count_tx[24]_i_3_n_0 ;
  wire \count_tx[24]_i_4_n_0 ;
  wire \count_tx[24]_i_5_n_0 ;
  wire \count_tx[24]_i_6_n_0 ;
  wire \count_tx[25]_i_1_n_0 ;
  wire \count_tx[26]_i_1_n_0 ;
  wire \count_tx[27]_i_1_n_0 ;
  wire \count_tx[28]_i_1_n_0 ;
  wire \count_tx[28]_i_3_n_0 ;
  wire \count_tx[28]_i_4_n_0 ;
  wire \count_tx[28]_i_5_n_0 ;
  wire \count_tx[28]_i_6_n_0 ;
  wire \count_tx[29]_i_1_n_0 ;
  wire \count_tx[2]_i_1_n_0 ;
  wire \count_tx[30]_i_1_n_0 ;
  wire \count_tx[31]_i_10_n_0 ;
  wire \count_tx[31]_i_11_n_0 ;
  wire \count_tx[31]_i_13_n_0 ;
  wire \count_tx[31]_i_14_n_0 ;
  wire \count_tx[31]_i_15_n_0 ;
  wire \count_tx[31]_i_16_n_0 ;
  wire \count_tx[31]_i_17_n_0 ;
  wire \count_tx[31]_i_18_n_0 ;
  wire \count_tx[31]_i_19_n_0 ;
  wire \count_tx[31]_i_20_n_0 ;
  wire \count_tx[31]_i_2_n_0 ;
  wire \count_tx[31]_i_6_n_0 ;
  wire \count_tx[31]_i_7_n_0 ;
  wire \count_tx[31]_i_8_n_0 ;
  wire \count_tx[31]_i_9_n_0 ;
  wire \count_tx[3]_i_1_n_0 ;
  wire \count_tx[4]_i_1_n_0 ;
  wire \count_tx[4]_i_3_n_0 ;
  wire \count_tx[4]_i_4_n_0 ;
  wire \count_tx[4]_i_5_n_0 ;
  wire \count_tx[4]_i_6_n_0 ;
  wire \count_tx[5]_i_1_n_0 ;
  wire \count_tx[6]_i_1_n_0 ;
  wire \count_tx[7]_i_1_n_0 ;
  wire \count_tx[8]_i_1_n_0 ;
  wire \count_tx[8]_i_3_n_0 ;
  wire \count_tx[8]_i_4_n_0 ;
  wire \count_tx[8]_i_5_n_0 ;
  wire \count_tx[8]_i_6_n_0 ;
  wire \count_tx[9]_i_1_n_0 ;
  wire count_tx_1;
  wire \count_tx_reg[12]_i_2_n_0 ;
  wire \count_tx_reg[12]_i_2_n_1 ;
  wire \count_tx_reg[12]_i_2_n_2 ;
  wire \count_tx_reg[12]_i_2_n_3 ;
  wire \count_tx_reg[16]_i_2_n_0 ;
  wire \count_tx_reg[16]_i_2_n_1 ;
  wire \count_tx_reg[16]_i_2_n_2 ;
  wire \count_tx_reg[16]_i_2_n_3 ;
  wire \count_tx_reg[20]_i_2_n_0 ;
  wire \count_tx_reg[20]_i_2_n_1 ;
  wire \count_tx_reg[20]_i_2_n_2 ;
  wire \count_tx_reg[20]_i_2_n_3 ;
  wire \count_tx_reg[24]_i_2_n_0 ;
  wire \count_tx_reg[24]_i_2_n_1 ;
  wire \count_tx_reg[24]_i_2_n_2 ;
  wire \count_tx_reg[24]_i_2_n_3 ;
  wire \count_tx_reg[28]_i_2_n_0 ;
  wire \count_tx_reg[28]_i_2_n_1 ;
  wire \count_tx_reg[28]_i_2_n_2 ;
  wire \count_tx_reg[28]_i_2_n_3 ;
  wire \count_tx_reg[31]_i_12_n_0 ;
  wire \count_tx_reg[31]_i_12_n_1 ;
  wire \count_tx_reg[31]_i_12_n_2 ;
  wire \count_tx_reg[31]_i_12_n_3 ;
  wire \count_tx_reg[31]_i_3_n_2 ;
  wire \count_tx_reg[31]_i_3_n_3 ;
  wire \count_tx_reg[31]_i_4_n_2 ;
  wire \count_tx_reg[31]_i_4_n_3 ;
  wire \count_tx_reg[31]_i_5_n_0 ;
  wire \count_tx_reg[31]_i_5_n_1 ;
  wire \count_tx_reg[31]_i_5_n_2 ;
  wire \count_tx_reg[31]_i_5_n_3 ;
  wire \count_tx_reg[4]_i_2_n_0 ;
  wire \count_tx_reg[4]_i_2_n_1 ;
  wire \count_tx_reg[4]_i_2_n_2 ;
  wire \count_tx_reg[4]_i_2_n_3 ;
  wire \count_tx_reg[8]_i_2_n_0 ;
  wire \count_tx_reg[8]_i_2_n_1 ;
  wire \count_tx_reg[8]_i_2_n_2 ;
  wire \count_tx_reg[8]_i_2_n_3 ;
  wire [31:1]in11;
  wire [31:1]in9;
  wire mem_reg;
  wire mem_reg_0;
  wire mem_reg_1;
  wire mem_reg_i_3_n_0;
  wire rd_add_signal1;
  wire rd_add_signal_i_10_n_0;
  wire rd_add_signal_i_11_n_0;
  wire rd_add_signal_i_12_n_0;
  wire rd_add_signal_i_13_n_0;
  wire rd_add_signal_i_14_n_0;
  wire rd_add_signal_i_15_n_0;
  wire rd_add_signal_i_16_n_0;
  wire rd_add_signal_i_1_n_0;
  wire rd_add_signal_i_3_n_0;
  wire rd_add_signal_i_5_n_0;
  wire rd_add_signal_i_6_n_0;
  wire rd_add_signal_i_7_n_0;
  wire rd_add_signal_i_9_n_0;
  wire rd_add_signal_reg_0;
  wire rd_add_signal_reg_i_2_n_2;
  wire rd_add_signal_reg_i_2_n_3;
  wire rd_add_signal_reg_i_4_n_0;
  wire rd_add_signal_reg_i_4_n_1;
  wire rd_add_signal_reg_i_4_n_2;
  wire rd_add_signal_reg_i_4_n_3;
  wire rd_add_signal_reg_i_8_n_0;
  wire rd_add_signal_reg_i_8_n_1;
  wire rd_add_signal_reg_i_8_n_2;
  wire rd_add_signal_reg_i_8_n_3;
  wire rd_add_signal_reg_n_0;
  wire [0:0]\rd_addr_reg[7] ;
  wire rst_n_IBUF;
  wire [9:8]rx_data;
  wire \rx_data[0]_i_1_n_0 ;
  wire \rx_data[0]_i_2_n_0 ;
  wire \rx_data[0]_i_3_n_0 ;
  wire \rx_data[0]_i_4_n_0 ;
  wire \rx_data[1]_i_1_n_0 ;
  wire \rx_data[1]_i_2_n_0 ;
  wire \rx_data[2]_i_1_n_0 ;
  wire \rx_data[2]_i_2_n_0 ;
  wire \rx_data[3]_i_1_n_0 ;
  wire \rx_data[3]_i_2_n_0 ;
  wire \rx_data[4]_i_1_n_0 ;
  wire \rx_data[4]_i_2_n_0 ;
  wire \rx_data[5]_i_1_n_0 ;
  wire \rx_data[5]_i_2_n_0 ;
  wire \rx_data[6]_i_1_n_0 ;
  wire \rx_data[6]_i_2_n_0 ;
  wire \rx_data[7]_i_1_n_0 ;
  wire \rx_data[7]_i_2_n_0 ;
  wire \rx_data[8]_i_1_n_0 ;
  wire \rx_data[8]_i_2_n_0 ;
  wire \rx_data[9]_i_1_n_0 ;
  wire \rx_data[9]_i_2_n_0 ;
  wire \rx_data[9]_i_3_n_0 ;
  wire tx_valid;
  wire tx_valid_reg;

  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA8)) 
    \FSM_onehot_cs[0]_i_1 
       (.I0(SS_n_IBUF),
        .I1(\FSM_onehot_cs_reg_n_0_[0] ),
        .I2(\FSM_onehot_cs_reg_n_0_[1] ),
        .I3(\FSM_onehot_cs_reg_n_0_[2] ),
        .I4(\FSM_onehot_cs_reg_n_0_[3] ),
        .I5(\FSM_onehot_cs_reg_n_0_[4] ),
        .O(\FSM_onehot_cs[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_onehot_cs[1]_i_1 
       (.I0(\FSM_onehot_cs_reg_n_0_[0] ),
        .I1(SS_n_IBUF),
        .O(\FSM_onehot_cs[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h4544)) 
    \FSM_onehot_cs[2]_i_1 
       (.I0(SS_n_IBUF),
        .I1(\FSM_onehot_cs_reg_n_0_[2] ),
        .I2(MOSI_IBUF),
        .I3(\FSM_onehot_cs_reg_n_0_[1] ),
        .O(\FSM_onehot_cs[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h45444444)) 
    \FSM_onehot_cs[3]_i_1 
       (.I0(SS_n_IBUF),
        .I1(\FSM_onehot_cs_reg_n_0_[3] ),
        .I2(rd_add_signal_reg_n_0),
        .I3(MOSI_IBUF),
        .I4(\FSM_onehot_cs_reg_n_0_[1] ),
        .O(\FSM_onehot_cs[3]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \FSM_onehot_cs[4]_i_1 
       (.I0(rst_n_IBUF),
        .O(rd_add_signal_reg_0));
  LUT5 #(
    .INIT(32'h55554000)) 
    \FSM_onehot_cs[4]_i_2 
       (.I0(SS_n_IBUF),
        .I1(rd_add_signal_reg_n_0),
        .I2(MOSI_IBUF),
        .I3(\FSM_onehot_cs_reg_n_0_[1] ),
        .I4(\FSM_onehot_cs_reg_n_0_[4] ),
        .O(\FSM_onehot_cs[4]_i_2_n_0 ));
  (* FSM_ENCODED_STATES = "CHK_CMD:00010,WRITE:00100,READ_ADD:01000,IDLE:00001,READ_DATA:10000" *) 
  (* KEEP = "yes" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_cs_reg[0] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(\FSM_onehot_cs[0]_i_1_n_0 ),
        .Q(\FSM_onehot_cs_reg_n_0_[0] ),
        .S(rd_add_signal_reg_0));
  (* FSM_ENCODED_STATES = "CHK_CMD:00010,WRITE:00100,READ_ADD:01000,IDLE:00001,READ_DATA:10000" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_cs_reg[1] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(\FSM_onehot_cs[1]_i_1_n_0 ),
        .Q(\FSM_onehot_cs_reg_n_0_[1] ),
        .R(rd_add_signal_reg_0));
  (* FSM_ENCODED_STATES = "CHK_CMD:00010,WRITE:00100,READ_ADD:01000,IDLE:00001,READ_DATA:10000" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_cs_reg[2] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(\FSM_onehot_cs[2]_i_1_n_0 ),
        .Q(\FSM_onehot_cs_reg_n_0_[2] ),
        .R(rd_add_signal_reg_0));
  (* FSM_ENCODED_STATES = "CHK_CMD:00010,WRITE:00100,READ_ADD:01000,IDLE:00001,READ_DATA:10000" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_cs_reg[3] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(\FSM_onehot_cs[3]_i_1_n_0 ),
        .Q(\FSM_onehot_cs_reg_n_0_[3] ),
        .R(rd_add_signal_reg_0));
  (* FSM_ENCODED_STATES = "CHK_CMD:00010,WRITE:00100,READ_ADD:01000,IDLE:00001,READ_DATA:10000" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_cs_reg[4] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(\FSM_onehot_cs[4]_i_2_n_0 ),
        .Q(\FSM_onehot_cs_reg_n_0_[4] ),
        .R(rd_add_signal_reg_0));
  GND GND
       (.G(\<const0> ));
  CARRY4 MISO1_carry
       (.CI(\<const0> ),
        .CO({MISO1_carry_n_0,MISO1_carry_n_1,MISO1_carry_n_2,MISO1_carry_n_3}),
        .CYINIT(\<const0> ),
        .DI({MISO1_carry_i_1_n_0,MISO1_carry_i_2_n_0,MISO1_carry_i_3_n_0,count_rx[1]}),
        .S({MISO1_carry_i_4_n_0,MISO1_carry_i_5_n_0,MISO1_carry_i_6_n_0,MISO1_carry_i_7_n_0}));
  CARRY4 MISO1_carry__0
       (.CI(MISO1_carry_n_0),
        .CO({MISO1_carry__0_n_0,MISO1_carry__0_n_1,MISO1_carry__0_n_2,MISO1_carry__0_n_3}),
        .CYINIT(\<const0> ),
        .DI({MISO1_carry__0_i_1_n_0,MISO1_carry__0_i_2_n_0,MISO1_carry__0_i_3_n_0,MISO1_carry__0_i_4_n_0}),
        .S({MISO1_carry__0_i_5_n_0,MISO1_carry__0_i_6_n_0,MISO1_carry__0_i_7_n_0,MISO1_carry__0_i_8_n_0}));
  LUT2 #(
    .INIT(4'hE)) 
    MISO1_carry__0_i_1
       (.I0(count_rx[15]),
        .I1(count_rx[14]),
        .O(MISO1_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    MISO1_carry__0_i_2
       (.I0(count_rx[13]),
        .I1(count_rx[12]),
        .O(MISO1_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    MISO1_carry__0_i_3
       (.I0(count_rx[11]),
        .I1(count_rx[10]),
        .O(MISO1_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    MISO1_carry__0_i_4
       (.I0(count_rx[9]),
        .I1(count_rx[8]),
        .O(MISO1_carry__0_i_4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    MISO1_carry__0_i_5
       (.I0(count_rx[14]),
        .I1(count_rx[15]),
        .O(MISO1_carry__0_i_5_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    MISO1_carry__0_i_6
       (.I0(count_rx[12]),
        .I1(count_rx[13]),
        .O(MISO1_carry__0_i_6_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    MISO1_carry__0_i_7
       (.I0(count_rx[10]),
        .I1(count_rx[11]),
        .O(MISO1_carry__0_i_7_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    MISO1_carry__0_i_8
       (.I0(count_rx[8]),
        .I1(count_rx[9]),
        .O(MISO1_carry__0_i_8_n_0));
  CARRY4 MISO1_carry__1
       (.CI(MISO1_carry__0_n_0),
        .CO({MISO1_carry__1_n_0,MISO1_carry__1_n_1,MISO1_carry__1_n_2,MISO1_carry__1_n_3}),
        .CYINIT(\<const0> ),
        .DI({MISO1_carry__1_i_1_n_0,MISO1_carry__1_i_2_n_0,MISO1_carry__1_i_3_n_0,MISO1_carry__1_i_4_n_0}),
        .S({MISO1_carry__1_i_5_n_0,MISO1_carry__1_i_6_n_0,MISO1_carry__1_i_7_n_0,MISO1_carry__1_i_8_n_0}));
  LUT2 #(
    .INIT(4'hE)) 
    MISO1_carry__1_i_1
       (.I0(count_rx[23]),
        .I1(count_rx[22]),
        .O(MISO1_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    MISO1_carry__1_i_2
       (.I0(count_rx[21]),
        .I1(count_rx[20]),
        .O(MISO1_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    MISO1_carry__1_i_3
       (.I0(count_rx[19]),
        .I1(count_rx[18]),
        .O(MISO1_carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    MISO1_carry__1_i_4
       (.I0(count_rx[17]),
        .I1(count_rx[16]),
        .O(MISO1_carry__1_i_4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    MISO1_carry__1_i_5
       (.I0(count_rx[22]),
        .I1(count_rx[23]),
        .O(MISO1_carry__1_i_5_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    MISO1_carry__1_i_6
       (.I0(count_rx[20]),
        .I1(count_rx[21]),
        .O(MISO1_carry__1_i_6_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    MISO1_carry__1_i_7
       (.I0(count_rx[18]),
        .I1(count_rx[19]),
        .O(MISO1_carry__1_i_7_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    MISO1_carry__1_i_8
       (.I0(count_rx[16]),
        .I1(count_rx[17]),
        .O(MISO1_carry__1_i_8_n_0));
  CARRY4 MISO1_carry__2
       (.CI(MISO1_carry__1_n_0),
        .CO({MISO1,MISO1_carry__2_n_1,MISO1_carry__2_n_2,MISO1_carry__2_n_3}),
        .CYINIT(\<const0> ),
        .DI({MISO1_carry__2_i_1_n_0,MISO1_carry__2_i_2_n_0,MISO1_carry__2_i_3_n_0,MISO1_carry__2_i_4_n_0}),
        .S({MISO1_carry__2_i_5_n_0,MISO1_carry__2_i_6_n_0,MISO1_carry__2_i_7_n_0,MISO1_carry__2_i_8_n_0}));
  LUT2 #(
    .INIT(4'h2)) 
    MISO1_carry__2_i_1
       (.I0(count_rx[30]),
        .I1(count_rx[31]),
        .O(MISO1_carry__2_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    MISO1_carry__2_i_2
       (.I0(count_rx[29]),
        .I1(count_rx[28]),
        .O(MISO1_carry__2_i_2_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    MISO1_carry__2_i_3
       (.I0(count_rx[27]),
        .I1(count_rx[26]),
        .O(MISO1_carry__2_i_3_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    MISO1_carry__2_i_4
       (.I0(count_rx[25]),
        .I1(count_rx[24]),
        .O(MISO1_carry__2_i_4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    MISO1_carry__2_i_5
       (.I0(count_rx[31]),
        .I1(count_rx[30]),
        .O(MISO1_carry__2_i_5_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    MISO1_carry__2_i_6
       (.I0(count_rx[28]),
        .I1(count_rx[29]),
        .O(MISO1_carry__2_i_6_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    MISO1_carry__2_i_7
       (.I0(count_rx[26]),
        .I1(count_rx[27]),
        .O(MISO1_carry__2_i_7_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    MISO1_carry__2_i_8
       (.I0(count_rx[24]),
        .I1(count_rx[25]),
        .O(MISO1_carry__2_i_8_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    MISO1_carry_i_1
       (.I0(count_rx[7]),
        .I1(count_rx[6]),
        .O(MISO1_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    MISO1_carry_i_2
       (.I0(count_rx[5]),
        .I1(count_rx[4]),
        .O(MISO1_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    MISO1_carry_i_3
       (.I0(count_rx[3]),
        .I1(count_rx[2]),
        .O(MISO1_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    MISO1_carry_i_4
       (.I0(count_rx[6]),
        .I1(count_rx[7]),
        .O(MISO1_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    MISO1_carry_i_5
       (.I0(count_rx[4]),
        .I1(count_rx[5]),
        .O(MISO1_carry_i_5_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    MISO1_carry_i_6
       (.I0(count_rx[3]),
        .I1(count_rx[2]),
        .O(MISO1_carry_i_6_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    MISO1_carry_i_7
       (.I0(count_rx[0]),
        .I1(count_rx[1]),
        .O(MISO1_carry_i_7_n_0));
  LUT5 #(
    .INIT(32'hEAAAAAAA)) 
    MISO_i_1
       (.I0(\FSM_onehot_cs_reg_n_0_[0] ),
        .I1(tx_valid),
        .I2(MISO1),
        .I3(\FSM_onehot_cs_reg_n_0_[4] ),
        .I4(MISO12_in),
        .O(MISO_i_1_n_0));
  LUT6 #(
    .INIT(64'hFEAB000002A80000)) 
    MISO_i_2
       (.I0(mem_reg_0),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(count_tx[2]),
        .I4(\FSM_onehot_cs_reg_n_0_[4] ),
        .I5(mem_reg_1),
        .O(MISO_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    MISO_reg
       (.C(CLK),
        .CE(MISO_i_1_n_0),
        .D(MISO_i_2_n_0),
        .Q(MISO_OBUF),
        .R(rd_add_signal_reg_0));
  VCC VCC
       (.P(\<const1> ));
  CARRY4 count_rx0_carry
       (.CI(\<const0> ),
        .CO({count_rx0_carry_n_0,count_rx0_carry_n_1,count_rx0_carry_n_2,count_rx0_carry_n_3}),
        .CYINIT(count_rx[0]),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(in9[4:1]),
        .S(count_rx[4:1]));
  CARRY4 count_rx0_carry__0
       (.CI(count_rx0_carry_n_0),
        .CO({count_rx0_carry__0_n_0,count_rx0_carry__0_n_1,count_rx0_carry__0_n_2,count_rx0_carry__0_n_3}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(in9[8:5]),
        .S(count_rx[8:5]));
  CARRY4 count_rx0_carry__1
       (.CI(count_rx0_carry__0_n_0),
        .CO({count_rx0_carry__1_n_0,count_rx0_carry__1_n_1,count_rx0_carry__1_n_2,count_rx0_carry__1_n_3}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(in9[12:9]),
        .S(count_rx[12:9]));
  CARRY4 count_rx0_carry__2
       (.CI(count_rx0_carry__1_n_0),
        .CO({count_rx0_carry__2_n_0,count_rx0_carry__2_n_1,count_rx0_carry__2_n_2,count_rx0_carry__2_n_3}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(in9[16:13]),
        .S(count_rx[16:13]));
  CARRY4 count_rx0_carry__3
       (.CI(count_rx0_carry__2_n_0),
        .CO({count_rx0_carry__3_n_0,count_rx0_carry__3_n_1,count_rx0_carry__3_n_2,count_rx0_carry__3_n_3}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(in9[20:17]),
        .S(count_rx[20:17]));
  CARRY4 count_rx0_carry__4
       (.CI(count_rx0_carry__3_n_0),
        .CO({count_rx0_carry__4_n_0,count_rx0_carry__4_n_1,count_rx0_carry__4_n_2,count_rx0_carry__4_n_3}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(in9[24:21]),
        .S(count_rx[24:21]));
  CARRY4 count_rx0_carry__5
       (.CI(count_rx0_carry__4_n_0),
        .CO({count_rx0_carry__5_n_0,count_rx0_carry__5_n_1,count_rx0_carry__5_n_2,count_rx0_carry__5_n_3}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(in9[28:25]),
        .S(count_rx[28:25]));
  CARRY4 count_rx0_carry__6
       (.CI(count_rx0_carry__5_n_0),
        .CO({count_rx0_carry__6_n_2,count_rx0_carry__6_n_3}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(in9[31:29]),
        .S({\<const0> ,count_rx[31:29]}));
  LUT4 #(
    .INIT(16'h5554)) 
    \count_rx[0]_i_1 
       (.I0(count_rx[0]),
        .I1(\FSM_onehot_cs_reg_n_0_[4] ),
        .I2(\FSM_onehot_cs_reg_n_0_[3] ),
        .I3(\FSM_onehot_cs_reg_n_0_[2] ),
        .O(\count_rx[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hAAA8)) 
    \count_rx[10]_i_1 
       (.I0(in9[10]),
        .I1(\FSM_onehot_cs_reg_n_0_[4] ),
        .I2(\FSM_onehot_cs_reg_n_0_[3] ),
        .I3(\FSM_onehot_cs_reg_n_0_[2] ),
        .O(\count_rx[10]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hAAA8)) 
    \count_rx[11]_i_1 
       (.I0(in9[11]),
        .I1(\FSM_onehot_cs_reg_n_0_[4] ),
        .I2(\FSM_onehot_cs_reg_n_0_[3] ),
        .I3(\FSM_onehot_cs_reg_n_0_[2] ),
        .O(\count_rx[11]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hAAA8)) 
    \count_rx[12]_i_1 
       (.I0(in9[12]),
        .I1(\FSM_onehot_cs_reg_n_0_[4] ),
        .I2(\FSM_onehot_cs_reg_n_0_[3] ),
        .I3(\FSM_onehot_cs_reg_n_0_[2] ),
        .O(\count_rx[12]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hAAA8)) 
    \count_rx[13]_i_1 
       (.I0(in9[13]),
        .I1(\FSM_onehot_cs_reg_n_0_[4] ),
        .I2(\FSM_onehot_cs_reg_n_0_[3] ),
        .I3(\FSM_onehot_cs_reg_n_0_[2] ),
        .O(\count_rx[13]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hAAA8)) 
    \count_rx[14]_i_1 
       (.I0(in9[14]),
        .I1(\FSM_onehot_cs_reg_n_0_[4] ),
        .I2(\FSM_onehot_cs_reg_n_0_[3] ),
        .I3(\FSM_onehot_cs_reg_n_0_[2] ),
        .O(\count_rx[14]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hAAA8)) 
    \count_rx[15]_i_1 
       (.I0(in9[15]),
        .I1(\FSM_onehot_cs_reg_n_0_[4] ),
        .I2(\FSM_onehot_cs_reg_n_0_[3] ),
        .I3(\FSM_onehot_cs_reg_n_0_[2] ),
        .O(\count_rx[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hAAA8)) 
    \count_rx[16]_i_1 
       (.I0(in9[16]),
        .I1(\FSM_onehot_cs_reg_n_0_[4] ),
        .I2(\FSM_onehot_cs_reg_n_0_[3] ),
        .I3(\FSM_onehot_cs_reg_n_0_[2] ),
        .O(\count_rx[16]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hAAA8)) 
    \count_rx[17]_i_1 
       (.I0(in9[17]),
        .I1(\FSM_onehot_cs_reg_n_0_[4] ),
        .I2(\FSM_onehot_cs_reg_n_0_[3] ),
        .I3(\FSM_onehot_cs_reg_n_0_[2] ),
        .O(\count_rx[17]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hAAA8)) 
    \count_rx[18]_i_1 
       (.I0(in9[18]),
        .I1(\FSM_onehot_cs_reg_n_0_[4] ),
        .I2(\FSM_onehot_cs_reg_n_0_[3] ),
        .I3(\FSM_onehot_cs_reg_n_0_[2] ),
        .O(\count_rx[18]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hAAA8)) 
    \count_rx[19]_i_1 
       (.I0(in9[19]),
        .I1(\FSM_onehot_cs_reg_n_0_[4] ),
        .I2(\FSM_onehot_cs_reg_n_0_[3] ),
        .I3(\FSM_onehot_cs_reg_n_0_[2] ),
        .O(\count_rx[19]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hAAA8)) 
    \count_rx[1]_i_1 
       (.I0(in9[1]),
        .I1(\FSM_onehot_cs_reg_n_0_[4] ),
        .I2(\FSM_onehot_cs_reg_n_0_[3] ),
        .I3(\FSM_onehot_cs_reg_n_0_[2] ),
        .O(\count_rx[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hAAA8)) 
    \count_rx[20]_i_1 
       (.I0(in9[20]),
        .I1(\FSM_onehot_cs_reg_n_0_[4] ),
        .I2(\FSM_onehot_cs_reg_n_0_[3] ),
        .I3(\FSM_onehot_cs_reg_n_0_[2] ),
        .O(\count_rx[20]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hAAA8)) 
    \count_rx[21]_i_1 
       (.I0(in9[21]),
        .I1(\FSM_onehot_cs_reg_n_0_[4] ),
        .I2(\FSM_onehot_cs_reg_n_0_[3] ),
        .I3(\FSM_onehot_cs_reg_n_0_[2] ),
        .O(\count_rx[21]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hAAA8)) 
    \count_rx[22]_i_1 
       (.I0(in9[22]),
        .I1(\FSM_onehot_cs_reg_n_0_[4] ),
        .I2(\FSM_onehot_cs_reg_n_0_[3] ),
        .I3(\FSM_onehot_cs_reg_n_0_[2] ),
        .O(\count_rx[22]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hAAA8)) 
    \count_rx[23]_i_1 
       (.I0(in9[23]),
        .I1(\FSM_onehot_cs_reg_n_0_[4] ),
        .I2(\FSM_onehot_cs_reg_n_0_[3] ),
        .I3(\FSM_onehot_cs_reg_n_0_[2] ),
        .O(\count_rx[23]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hAAA8)) 
    \count_rx[24]_i_1 
       (.I0(in9[24]),
        .I1(\FSM_onehot_cs_reg_n_0_[4] ),
        .I2(\FSM_onehot_cs_reg_n_0_[3] ),
        .I3(\FSM_onehot_cs_reg_n_0_[2] ),
        .O(\count_rx[24]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hAAA8)) 
    \count_rx[25]_i_1 
       (.I0(in9[25]),
        .I1(\FSM_onehot_cs_reg_n_0_[4] ),
        .I2(\FSM_onehot_cs_reg_n_0_[3] ),
        .I3(\FSM_onehot_cs_reg_n_0_[2] ),
        .O(\count_rx[25]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hAAA8)) 
    \count_rx[26]_i_1 
       (.I0(in9[26]),
        .I1(\FSM_onehot_cs_reg_n_0_[4] ),
        .I2(\FSM_onehot_cs_reg_n_0_[3] ),
        .I3(\FSM_onehot_cs_reg_n_0_[2] ),
        .O(\count_rx[26]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hAAA8)) 
    \count_rx[27]_i_1 
       (.I0(in9[27]),
        .I1(\FSM_onehot_cs_reg_n_0_[4] ),
        .I2(\FSM_onehot_cs_reg_n_0_[3] ),
        .I3(\FSM_onehot_cs_reg_n_0_[2] ),
        .O(\count_rx[27]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hAAA8)) 
    \count_rx[28]_i_1 
       (.I0(in9[28]),
        .I1(\FSM_onehot_cs_reg_n_0_[4] ),
        .I2(\FSM_onehot_cs_reg_n_0_[3] ),
        .I3(\FSM_onehot_cs_reg_n_0_[2] ),
        .O(\count_rx[28]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hAAA8)) 
    \count_rx[29]_i_1 
       (.I0(in9[29]),
        .I1(\FSM_onehot_cs_reg_n_0_[4] ),
        .I2(\FSM_onehot_cs_reg_n_0_[3] ),
        .I3(\FSM_onehot_cs_reg_n_0_[2] ),
        .O(\count_rx[29]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hAAA8)) 
    \count_rx[2]_i_1 
       (.I0(in9[2]),
        .I1(\FSM_onehot_cs_reg_n_0_[4] ),
        .I2(\FSM_onehot_cs_reg_n_0_[3] ),
        .I3(\FSM_onehot_cs_reg_n_0_[2] ),
        .O(\count_rx[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hAAA8)) 
    \count_rx[30]_i_1 
       (.I0(in9[30]),
        .I1(\FSM_onehot_cs_reg_n_0_[4] ),
        .I2(\FSM_onehot_cs_reg_n_0_[3] ),
        .I3(\FSM_onehot_cs_reg_n_0_[2] ),
        .O(\count_rx[30]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEEEEEEEEFFFFFFFE)) 
    \count_rx[31]_i_1 
       (.I0(\FSM_onehot_cs_reg_n_0_[1] ),
        .I1(\FSM_onehot_cs_reg_n_0_[0] ),
        .I2(\FSM_onehot_cs_reg_n_0_[2] ),
        .I3(\FSM_onehot_cs_reg_n_0_[3] ),
        .I4(\FSM_onehot_cs_reg_n_0_[4] ),
        .I5(MISO1),
        .O(count_rx_0));
  LUT4 #(
    .INIT(16'hAAA8)) 
    \count_rx[31]_i_2 
       (.I0(in9[31]),
        .I1(\FSM_onehot_cs_reg_n_0_[4] ),
        .I2(\FSM_onehot_cs_reg_n_0_[3] ),
        .I3(\FSM_onehot_cs_reg_n_0_[2] ),
        .O(\count_rx[31]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hAAA8)) 
    \count_rx[3]_i_1 
       (.I0(in9[3]),
        .I1(\FSM_onehot_cs_reg_n_0_[4] ),
        .I2(\FSM_onehot_cs_reg_n_0_[3] ),
        .I3(\FSM_onehot_cs_reg_n_0_[2] ),
        .O(\count_rx[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hAAA8)) 
    \count_rx[4]_i_1 
       (.I0(in9[4]),
        .I1(\FSM_onehot_cs_reg_n_0_[4] ),
        .I2(\FSM_onehot_cs_reg_n_0_[3] ),
        .I3(\FSM_onehot_cs_reg_n_0_[2] ),
        .O(\count_rx[4]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hAAA8)) 
    \count_rx[5]_i_1 
       (.I0(in9[5]),
        .I1(\FSM_onehot_cs_reg_n_0_[4] ),
        .I2(\FSM_onehot_cs_reg_n_0_[3] ),
        .I3(\FSM_onehot_cs_reg_n_0_[2] ),
        .O(\count_rx[5]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hAAA8)) 
    \count_rx[6]_i_1 
       (.I0(in9[6]),
        .I1(\FSM_onehot_cs_reg_n_0_[4] ),
        .I2(\FSM_onehot_cs_reg_n_0_[3] ),
        .I3(\FSM_onehot_cs_reg_n_0_[2] ),
        .O(\count_rx[6]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hAAA8)) 
    \count_rx[7]_i_1 
       (.I0(in9[7]),
        .I1(\FSM_onehot_cs_reg_n_0_[4] ),
        .I2(\FSM_onehot_cs_reg_n_0_[3] ),
        .I3(\FSM_onehot_cs_reg_n_0_[2] ),
        .O(\count_rx[7]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hAAA8)) 
    \count_rx[8]_i_1 
       (.I0(in9[8]),
        .I1(\FSM_onehot_cs_reg_n_0_[4] ),
        .I2(\FSM_onehot_cs_reg_n_0_[3] ),
        .I3(\FSM_onehot_cs_reg_n_0_[2] ),
        .O(\count_rx[8]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hAAA8)) 
    \count_rx[9]_i_1 
       (.I0(in9[9]),
        .I1(\FSM_onehot_cs_reg_n_0_[4] ),
        .I2(\FSM_onehot_cs_reg_n_0_[3] ),
        .I3(\FSM_onehot_cs_reg_n_0_[2] ),
        .O(\count_rx[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_rx_reg[0] 
       (.C(CLK),
        .CE(count_rx_0),
        .D(\count_rx[0]_i_1_n_0 ),
        .Q(count_rx[0]),
        .R(rd_add_signal_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \count_rx_reg[10] 
       (.C(CLK),
        .CE(count_rx_0),
        .D(\count_rx[10]_i_1_n_0 ),
        .Q(count_rx[10]),
        .R(rd_add_signal_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \count_rx_reg[11] 
       (.C(CLK),
        .CE(count_rx_0),
        .D(\count_rx[11]_i_1_n_0 ),
        .Q(count_rx[11]),
        .R(rd_add_signal_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \count_rx_reg[12] 
       (.C(CLK),
        .CE(count_rx_0),
        .D(\count_rx[12]_i_1_n_0 ),
        .Q(count_rx[12]),
        .R(rd_add_signal_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \count_rx_reg[13] 
       (.C(CLK),
        .CE(count_rx_0),
        .D(\count_rx[13]_i_1_n_0 ),
        .Q(count_rx[13]),
        .R(rd_add_signal_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \count_rx_reg[14] 
       (.C(CLK),
        .CE(count_rx_0),
        .D(\count_rx[14]_i_1_n_0 ),
        .Q(count_rx[14]),
        .R(rd_add_signal_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \count_rx_reg[15] 
       (.C(CLK),
        .CE(count_rx_0),
        .D(\count_rx[15]_i_1_n_0 ),
        .Q(count_rx[15]),
        .R(rd_add_signal_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \count_rx_reg[16] 
       (.C(CLK),
        .CE(count_rx_0),
        .D(\count_rx[16]_i_1_n_0 ),
        .Q(count_rx[16]),
        .R(rd_add_signal_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \count_rx_reg[17] 
       (.C(CLK),
        .CE(count_rx_0),
        .D(\count_rx[17]_i_1_n_0 ),
        .Q(count_rx[17]),
        .R(rd_add_signal_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \count_rx_reg[18] 
       (.C(CLK),
        .CE(count_rx_0),
        .D(\count_rx[18]_i_1_n_0 ),
        .Q(count_rx[18]),
        .R(rd_add_signal_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \count_rx_reg[19] 
       (.C(CLK),
        .CE(count_rx_0),
        .D(\count_rx[19]_i_1_n_0 ),
        .Q(count_rx[19]),
        .R(rd_add_signal_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \count_rx_reg[1] 
       (.C(CLK),
        .CE(count_rx_0),
        .D(\count_rx[1]_i_1_n_0 ),
        .Q(count_rx[1]),
        .R(rd_add_signal_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \count_rx_reg[20] 
       (.C(CLK),
        .CE(count_rx_0),
        .D(\count_rx[20]_i_1_n_0 ),
        .Q(count_rx[20]),
        .R(rd_add_signal_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \count_rx_reg[21] 
       (.C(CLK),
        .CE(count_rx_0),
        .D(\count_rx[21]_i_1_n_0 ),
        .Q(count_rx[21]),
        .R(rd_add_signal_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \count_rx_reg[22] 
       (.C(CLK),
        .CE(count_rx_0),
        .D(\count_rx[22]_i_1_n_0 ),
        .Q(count_rx[22]),
        .R(rd_add_signal_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \count_rx_reg[23] 
       (.C(CLK),
        .CE(count_rx_0),
        .D(\count_rx[23]_i_1_n_0 ),
        .Q(count_rx[23]),
        .R(rd_add_signal_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \count_rx_reg[24] 
       (.C(CLK),
        .CE(count_rx_0),
        .D(\count_rx[24]_i_1_n_0 ),
        .Q(count_rx[24]),
        .R(rd_add_signal_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \count_rx_reg[25] 
       (.C(CLK),
        .CE(count_rx_0),
        .D(\count_rx[25]_i_1_n_0 ),
        .Q(count_rx[25]),
        .R(rd_add_signal_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \count_rx_reg[26] 
       (.C(CLK),
        .CE(count_rx_0),
        .D(\count_rx[26]_i_1_n_0 ),
        .Q(count_rx[26]),
        .R(rd_add_signal_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \count_rx_reg[27] 
       (.C(CLK),
        .CE(count_rx_0),
        .D(\count_rx[27]_i_1_n_0 ),
        .Q(count_rx[27]),
        .R(rd_add_signal_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \count_rx_reg[28] 
       (.C(CLK),
        .CE(count_rx_0),
        .D(\count_rx[28]_i_1_n_0 ),
        .Q(count_rx[28]),
        .R(rd_add_signal_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \count_rx_reg[29] 
       (.C(CLK),
        .CE(count_rx_0),
        .D(\count_rx[29]_i_1_n_0 ),
        .Q(count_rx[29]),
        .R(rd_add_signal_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \count_rx_reg[2] 
       (.C(CLK),
        .CE(count_rx_0),
        .D(\count_rx[2]_i_1_n_0 ),
        .Q(count_rx[2]),
        .R(rd_add_signal_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \count_rx_reg[30] 
       (.C(CLK),
        .CE(count_rx_0),
        .D(\count_rx[30]_i_1_n_0 ),
        .Q(count_rx[30]),
        .R(rd_add_signal_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \count_rx_reg[31] 
       (.C(CLK),
        .CE(count_rx_0),
        .D(\count_rx[31]_i_2_n_0 ),
        .Q(count_rx[31]),
        .R(rd_add_signal_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \count_rx_reg[3] 
       (.C(CLK),
        .CE(count_rx_0),
        .D(\count_rx[3]_i_1_n_0 ),
        .Q(count_rx[3]),
        .R(rd_add_signal_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \count_rx_reg[4] 
       (.C(CLK),
        .CE(count_rx_0),
        .D(\count_rx[4]_i_1_n_0 ),
        .Q(count_rx[4]),
        .R(rd_add_signal_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \count_rx_reg[5] 
       (.C(CLK),
        .CE(count_rx_0),
        .D(\count_rx[5]_i_1_n_0 ),
        .Q(count_rx[5]),
        .R(rd_add_signal_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \count_rx_reg[6] 
       (.C(CLK),
        .CE(count_rx_0),
        .D(\count_rx[6]_i_1_n_0 ),
        .Q(count_rx[6]),
        .R(rd_add_signal_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \count_rx_reg[7] 
       (.C(CLK),
        .CE(count_rx_0),
        .D(\count_rx[7]_i_1_n_0 ),
        .Q(count_rx[7]),
        .R(rd_add_signal_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \count_rx_reg[8] 
       (.C(CLK),
        .CE(count_rx_0),
        .D(\count_rx[8]_i_1_n_0 ),
        .Q(count_rx[8]),
        .R(rd_add_signal_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \count_rx_reg[9] 
       (.C(CLK),
        .CE(count_rx_0),
        .D(\count_rx[9]_i_1_n_0 ),
        .Q(count_rx[9]),
        .R(rd_add_signal_reg_0));
  LUT2 #(
    .INIT(4'h2)) 
    \count_tx[0]_i_1 
       (.I0(\FSM_onehot_cs_reg_n_0_[4] ),
        .I1(Q[0]),
        .O(\count_tx[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count_tx[10]_i_1 
       (.I0(\FSM_onehot_cs_reg_n_0_[4] ),
        .I1(in11[10]),
        .O(\count_tx[10]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count_tx[11]_i_1 
       (.I0(\FSM_onehot_cs_reg_n_0_[4] ),
        .I1(in11[11]),
        .O(\count_tx[11]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count_tx[12]_i_1 
       (.I0(\FSM_onehot_cs_reg_n_0_[4] ),
        .I1(in11[12]),
        .O(\count_tx[12]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_tx[12]_i_3 
       (.I0(count_tx[12]),
        .O(\count_tx[12]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_tx[12]_i_4 
       (.I0(count_tx[11]),
        .O(\count_tx[12]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_tx[12]_i_5 
       (.I0(count_tx[10]),
        .O(\count_tx[12]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_tx[12]_i_6 
       (.I0(count_tx[9]),
        .O(\count_tx[12]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count_tx[13]_i_1 
       (.I0(\FSM_onehot_cs_reg_n_0_[4] ),
        .I1(in11[13]),
        .O(\count_tx[13]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count_tx[14]_i_1 
       (.I0(\FSM_onehot_cs_reg_n_0_[4] ),
        .I1(in11[14]),
        .O(\count_tx[14]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count_tx[15]_i_1 
       (.I0(\FSM_onehot_cs_reg_n_0_[4] ),
        .I1(in11[15]),
        .O(\count_tx[15]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count_tx[16]_i_1 
       (.I0(\FSM_onehot_cs_reg_n_0_[4] ),
        .I1(in11[16]),
        .O(\count_tx[16]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_tx[16]_i_3 
       (.I0(count_tx[16]),
        .O(\count_tx[16]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_tx[16]_i_4 
       (.I0(count_tx[15]),
        .O(\count_tx[16]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_tx[16]_i_5 
       (.I0(count_tx[14]),
        .O(\count_tx[16]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_tx[16]_i_6 
       (.I0(count_tx[13]),
        .O(\count_tx[16]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count_tx[17]_i_1 
       (.I0(\FSM_onehot_cs_reg_n_0_[4] ),
        .I1(in11[17]),
        .O(\count_tx[17]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count_tx[18]_i_1 
       (.I0(\FSM_onehot_cs_reg_n_0_[4] ),
        .I1(in11[18]),
        .O(\count_tx[18]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count_tx[19]_i_1 
       (.I0(\FSM_onehot_cs_reg_n_0_[4] ),
        .I1(in11[19]),
        .O(\count_tx[19]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count_tx[1]_i_1 
       (.I0(\FSM_onehot_cs_reg_n_0_[4] ),
        .I1(in11[1]),
        .O(\count_tx[1]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count_tx[20]_i_1 
       (.I0(\FSM_onehot_cs_reg_n_0_[4] ),
        .I1(in11[20]),
        .O(\count_tx[20]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_tx[20]_i_3 
       (.I0(count_tx[20]),
        .O(\count_tx[20]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_tx[20]_i_4 
       (.I0(count_tx[19]),
        .O(\count_tx[20]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_tx[20]_i_5 
       (.I0(count_tx[18]),
        .O(\count_tx[20]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_tx[20]_i_6 
       (.I0(count_tx[17]),
        .O(\count_tx[20]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count_tx[21]_i_1 
       (.I0(\FSM_onehot_cs_reg_n_0_[4] ),
        .I1(in11[21]),
        .O(\count_tx[21]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count_tx[22]_i_1 
       (.I0(\FSM_onehot_cs_reg_n_0_[4] ),
        .I1(in11[22]),
        .O(\count_tx[22]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count_tx[23]_i_1 
       (.I0(\FSM_onehot_cs_reg_n_0_[4] ),
        .I1(in11[23]),
        .O(\count_tx[23]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count_tx[24]_i_1 
       (.I0(\FSM_onehot_cs_reg_n_0_[4] ),
        .I1(in11[24]),
        .O(\count_tx[24]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_tx[24]_i_3 
       (.I0(count_tx[24]),
        .O(\count_tx[24]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_tx[24]_i_4 
       (.I0(count_tx[23]),
        .O(\count_tx[24]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_tx[24]_i_5 
       (.I0(count_tx[22]),
        .O(\count_tx[24]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_tx[24]_i_6 
       (.I0(count_tx[21]),
        .O(\count_tx[24]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count_tx[25]_i_1 
       (.I0(\FSM_onehot_cs_reg_n_0_[4] ),
        .I1(in11[25]),
        .O(\count_tx[25]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count_tx[26]_i_1 
       (.I0(\FSM_onehot_cs_reg_n_0_[4] ),
        .I1(in11[26]),
        .O(\count_tx[26]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count_tx[27]_i_1 
       (.I0(\FSM_onehot_cs_reg_n_0_[4] ),
        .I1(in11[27]),
        .O(\count_tx[27]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count_tx[28]_i_1 
       (.I0(\FSM_onehot_cs_reg_n_0_[4] ),
        .I1(in11[28]),
        .O(\count_tx[28]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_tx[28]_i_3 
       (.I0(count_tx[28]),
        .O(\count_tx[28]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_tx[28]_i_4 
       (.I0(count_tx[27]),
        .O(\count_tx[28]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_tx[28]_i_5 
       (.I0(count_tx[26]),
        .O(\count_tx[28]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_tx[28]_i_6 
       (.I0(count_tx[25]),
        .O(\count_tx[28]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count_tx[29]_i_1 
       (.I0(\FSM_onehot_cs_reg_n_0_[4] ),
        .I1(in11[29]),
        .O(\count_tx[29]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count_tx[2]_i_1 
       (.I0(\FSM_onehot_cs_reg_n_0_[4] ),
        .I1(in11[2]),
        .O(\count_tx[2]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count_tx[30]_i_1 
       (.I0(\FSM_onehot_cs_reg_n_0_[4] ),
        .I1(in11[30]),
        .O(\count_tx[30]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFEEEEEEEEEEEEEEE)) 
    \count_tx[31]_i_1 
       (.I0(\FSM_onehot_cs_reg_n_0_[1] ),
        .I1(\FSM_onehot_cs_reg_n_0_[0] ),
        .I2(tx_valid),
        .I3(MISO1),
        .I4(\FSM_onehot_cs_reg_n_0_[4] ),
        .I5(MISO12_in),
        .O(count_tx_1));
  LUT1 #(
    .INIT(2'h1)) 
    \count_tx[31]_i_10 
       (.I0(count_tx[30]),
        .O(\count_tx[31]_i_10_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_tx[31]_i_11 
       (.I0(count_tx[29]),
        .O(\count_tx[31]_i_11_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \count_tx[31]_i_13 
       (.I0(count_tx[21]),
        .I1(count_tx[22]),
        .I2(count_tx[23]),
        .O(\count_tx[31]_i_13_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \count_tx[31]_i_14 
       (.I0(count_tx[18]),
        .I1(count_tx[19]),
        .I2(count_tx[20]),
        .O(\count_tx[31]_i_14_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \count_tx[31]_i_15 
       (.I0(count_tx[15]),
        .I1(count_tx[16]),
        .I2(count_tx[17]),
        .O(\count_tx[31]_i_15_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \count_tx[31]_i_16 
       (.I0(count_tx[12]),
        .I1(count_tx[13]),
        .I2(count_tx[14]),
        .O(\count_tx[31]_i_16_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \count_tx[31]_i_17 
       (.I0(count_tx[9]),
        .I1(count_tx[10]),
        .I2(count_tx[11]),
        .O(\count_tx[31]_i_17_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \count_tx[31]_i_18 
       (.I0(count_tx[6]),
        .I1(count_tx[7]),
        .I2(count_tx[8]),
        .O(\count_tx[31]_i_18_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \count_tx[31]_i_19 
       (.I0(count_tx[3]),
        .I1(count_tx[4]),
        .I2(count_tx[5]),
        .O(\count_tx[31]_i_19_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count_tx[31]_i_2 
       (.I0(\FSM_onehot_cs_reg_n_0_[4] ),
        .I1(in11[31]),
        .O(\count_tx[31]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \count_tx[31]_i_20 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(count_tx[2]),
        .O(\count_tx[31]_i_20_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \count_tx[31]_i_6 
       (.I0(count_tx[31]),
        .I1(count_tx[30]),
        .O(\count_tx[31]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \count_tx[31]_i_7 
       (.I0(count_tx[27]),
        .I1(count_tx[28]),
        .I2(count_tx[29]),
        .O(\count_tx[31]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \count_tx[31]_i_8 
       (.I0(count_tx[24]),
        .I1(count_tx[25]),
        .I2(count_tx[26]),
        .O(\count_tx[31]_i_8_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_tx[31]_i_9 
       (.I0(count_tx[31]),
        .O(\count_tx[31]_i_9_n_0 ));
  LUT4 #(
    .INIT(16'hFEEE)) 
    \count_tx[3]_i_1 
       (.I0(\FSM_onehot_cs_reg_n_0_[1] ),
        .I1(\FSM_onehot_cs_reg_n_0_[0] ),
        .I2(in11[3]),
        .I3(\FSM_onehot_cs_reg_n_0_[4] ),
        .O(\count_tx[3]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count_tx[4]_i_1 
       (.I0(\FSM_onehot_cs_reg_n_0_[4] ),
        .I1(in11[4]),
        .O(\count_tx[4]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_tx[4]_i_3 
       (.I0(count_tx[4]),
        .O(\count_tx[4]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_tx[4]_i_4 
       (.I0(count_tx[3]),
        .O(\count_tx[4]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_tx[4]_i_5 
       (.I0(count_tx[2]),
        .O(\count_tx[4]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_tx[4]_i_6 
       (.I0(Q[1]),
        .O(\count_tx[4]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count_tx[5]_i_1 
       (.I0(\FSM_onehot_cs_reg_n_0_[4] ),
        .I1(in11[5]),
        .O(\count_tx[5]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count_tx[6]_i_1 
       (.I0(\FSM_onehot_cs_reg_n_0_[4] ),
        .I1(in11[6]),
        .O(\count_tx[6]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count_tx[7]_i_1 
       (.I0(\FSM_onehot_cs_reg_n_0_[4] ),
        .I1(in11[7]),
        .O(\count_tx[7]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count_tx[8]_i_1 
       (.I0(\FSM_onehot_cs_reg_n_0_[4] ),
        .I1(in11[8]),
        .O(\count_tx[8]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_tx[8]_i_3 
       (.I0(count_tx[8]),
        .O(\count_tx[8]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_tx[8]_i_4 
       (.I0(count_tx[7]),
        .O(\count_tx[8]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_tx[8]_i_5 
       (.I0(count_tx[6]),
        .O(\count_tx[8]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_tx[8]_i_6 
       (.I0(count_tx[5]),
        .O(\count_tx[8]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count_tx[9]_i_1 
       (.I0(\FSM_onehot_cs_reg_n_0_[4] ),
        .I1(in11[9]),
        .O(\count_tx[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_tx_reg[0] 
       (.C(CLK),
        .CE(count_tx_1),
        .D(\count_tx[0]_i_1_n_0 ),
        .Q(Q[0]),
        .R(rd_add_signal_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \count_tx_reg[10] 
       (.C(CLK),
        .CE(count_tx_1),
        .D(\count_tx[10]_i_1_n_0 ),
        .Q(count_tx[10]),
        .R(rd_add_signal_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \count_tx_reg[11] 
       (.C(CLK),
        .CE(count_tx_1),
        .D(\count_tx[11]_i_1_n_0 ),
        .Q(count_tx[11]),
        .R(rd_add_signal_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \count_tx_reg[12] 
       (.C(CLK),
        .CE(count_tx_1),
        .D(\count_tx[12]_i_1_n_0 ),
        .Q(count_tx[12]),
        .R(rd_add_signal_reg_0));
  CARRY4 \count_tx_reg[12]_i_2 
       (.CI(\count_tx_reg[8]_i_2_n_0 ),
        .CO({\count_tx_reg[12]_i_2_n_0 ,\count_tx_reg[12]_i_2_n_1 ,\count_tx_reg[12]_i_2_n_2 ,\count_tx_reg[12]_i_2_n_3 }),
        .CYINIT(\<const0> ),
        .DI(count_tx[12:9]),
        .O(in11[12:9]),
        .S({\count_tx[12]_i_3_n_0 ,\count_tx[12]_i_4_n_0 ,\count_tx[12]_i_5_n_0 ,\count_tx[12]_i_6_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \count_tx_reg[13] 
       (.C(CLK),
        .CE(count_tx_1),
        .D(\count_tx[13]_i_1_n_0 ),
        .Q(count_tx[13]),
        .R(rd_add_signal_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \count_tx_reg[14] 
       (.C(CLK),
        .CE(count_tx_1),
        .D(\count_tx[14]_i_1_n_0 ),
        .Q(count_tx[14]),
        .R(rd_add_signal_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \count_tx_reg[15] 
       (.C(CLK),
        .CE(count_tx_1),
        .D(\count_tx[15]_i_1_n_0 ),
        .Q(count_tx[15]),
        .R(rd_add_signal_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \count_tx_reg[16] 
       (.C(CLK),
        .CE(count_tx_1),
        .D(\count_tx[16]_i_1_n_0 ),
        .Q(count_tx[16]),
        .R(rd_add_signal_reg_0));
  CARRY4 \count_tx_reg[16]_i_2 
       (.CI(\count_tx_reg[12]_i_2_n_0 ),
        .CO({\count_tx_reg[16]_i_2_n_0 ,\count_tx_reg[16]_i_2_n_1 ,\count_tx_reg[16]_i_2_n_2 ,\count_tx_reg[16]_i_2_n_3 }),
        .CYINIT(\<const0> ),
        .DI(count_tx[16:13]),
        .O(in11[16:13]),
        .S({\count_tx[16]_i_3_n_0 ,\count_tx[16]_i_4_n_0 ,\count_tx[16]_i_5_n_0 ,\count_tx[16]_i_6_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \count_tx_reg[17] 
       (.C(CLK),
        .CE(count_tx_1),
        .D(\count_tx[17]_i_1_n_0 ),
        .Q(count_tx[17]),
        .R(rd_add_signal_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \count_tx_reg[18] 
       (.C(CLK),
        .CE(count_tx_1),
        .D(\count_tx[18]_i_1_n_0 ),
        .Q(count_tx[18]),
        .R(rd_add_signal_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \count_tx_reg[19] 
       (.C(CLK),
        .CE(count_tx_1),
        .D(\count_tx[19]_i_1_n_0 ),
        .Q(count_tx[19]),
        .R(rd_add_signal_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \count_tx_reg[1] 
       (.C(CLK),
        .CE(count_tx_1),
        .D(\count_tx[1]_i_1_n_0 ),
        .Q(Q[1]),
        .R(rd_add_signal_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \count_tx_reg[20] 
       (.C(CLK),
        .CE(count_tx_1),
        .D(\count_tx[20]_i_1_n_0 ),
        .Q(count_tx[20]),
        .R(rd_add_signal_reg_0));
  CARRY4 \count_tx_reg[20]_i_2 
       (.CI(\count_tx_reg[16]_i_2_n_0 ),
        .CO({\count_tx_reg[20]_i_2_n_0 ,\count_tx_reg[20]_i_2_n_1 ,\count_tx_reg[20]_i_2_n_2 ,\count_tx_reg[20]_i_2_n_3 }),
        .CYINIT(\<const0> ),
        .DI(count_tx[20:17]),
        .O(in11[20:17]),
        .S({\count_tx[20]_i_3_n_0 ,\count_tx[20]_i_4_n_0 ,\count_tx[20]_i_5_n_0 ,\count_tx[20]_i_6_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \count_tx_reg[21] 
       (.C(CLK),
        .CE(count_tx_1),
        .D(\count_tx[21]_i_1_n_0 ),
        .Q(count_tx[21]),
        .R(rd_add_signal_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \count_tx_reg[22] 
       (.C(CLK),
        .CE(count_tx_1),
        .D(\count_tx[22]_i_1_n_0 ),
        .Q(count_tx[22]),
        .R(rd_add_signal_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \count_tx_reg[23] 
       (.C(CLK),
        .CE(count_tx_1),
        .D(\count_tx[23]_i_1_n_0 ),
        .Q(count_tx[23]),
        .R(rd_add_signal_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \count_tx_reg[24] 
       (.C(CLK),
        .CE(count_tx_1),
        .D(\count_tx[24]_i_1_n_0 ),
        .Q(count_tx[24]),
        .R(rd_add_signal_reg_0));
  CARRY4 \count_tx_reg[24]_i_2 
       (.CI(\count_tx_reg[20]_i_2_n_0 ),
        .CO({\count_tx_reg[24]_i_2_n_0 ,\count_tx_reg[24]_i_2_n_1 ,\count_tx_reg[24]_i_2_n_2 ,\count_tx_reg[24]_i_2_n_3 }),
        .CYINIT(\<const0> ),
        .DI(count_tx[24:21]),
        .O(in11[24:21]),
        .S({\count_tx[24]_i_3_n_0 ,\count_tx[24]_i_4_n_0 ,\count_tx[24]_i_5_n_0 ,\count_tx[24]_i_6_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \count_tx_reg[25] 
       (.C(CLK),
        .CE(count_tx_1),
        .D(\count_tx[25]_i_1_n_0 ),
        .Q(count_tx[25]),
        .R(rd_add_signal_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \count_tx_reg[26] 
       (.C(CLK),
        .CE(count_tx_1),
        .D(\count_tx[26]_i_1_n_0 ),
        .Q(count_tx[26]),
        .R(rd_add_signal_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \count_tx_reg[27] 
       (.C(CLK),
        .CE(count_tx_1),
        .D(\count_tx[27]_i_1_n_0 ),
        .Q(count_tx[27]),
        .R(rd_add_signal_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \count_tx_reg[28] 
       (.C(CLK),
        .CE(count_tx_1),
        .D(\count_tx[28]_i_1_n_0 ),
        .Q(count_tx[28]),
        .R(rd_add_signal_reg_0));
  CARRY4 \count_tx_reg[28]_i_2 
       (.CI(\count_tx_reg[24]_i_2_n_0 ),
        .CO({\count_tx_reg[28]_i_2_n_0 ,\count_tx_reg[28]_i_2_n_1 ,\count_tx_reg[28]_i_2_n_2 ,\count_tx_reg[28]_i_2_n_3 }),
        .CYINIT(\<const0> ),
        .DI(count_tx[28:25]),
        .O(in11[28:25]),
        .S({\count_tx[28]_i_3_n_0 ,\count_tx[28]_i_4_n_0 ,\count_tx[28]_i_5_n_0 ,\count_tx[28]_i_6_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \count_tx_reg[29] 
       (.C(CLK),
        .CE(count_tx_1),
        .D(\count_tx[29]_i_1_n_0 ),
        .Q(count_tx[29]),
        .R(rd_add_signal_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \count_tx_reg[2] 
       (.C(CLK),
        .CE(count_tx_1),
        .D(\count_tx[2]_i_1_n_0 ),
        .Q(count_tx[2]),
        .R(rd_add_signal_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \count_tx_reg[30] 
       (.C(CLK),
        .CE(count_tx_1),
        .D(\count_tx[30]_i_1_n_0 ),
        .Q(count_tx[30]),
        .R(rd_add_signal_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \count_tx_reg[31] 
       (.C(CLK),
        .CE(count_tx_1),
        .D(\count_tx[31]_i_2_n_0 ),
        .Q(count_tx[31]),
        .R(rd_add_signal_reg_0));
  CARRY4 \count_tx_reg[31]_i_12 
       (.CI(\<const0> ),
        .CO({\count_tx_reg[31]_i_12_n_0 ,\count_tx_reg[31]_i_12_n_1 ,\count_tx_reg[31]_i_12_n_2 ,\count_tx_reg[31]_i_12_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const1> ,\<const1> ,\<const1> ,\<const1> }),
        .S({\count_tx[31]_i_17_n_0 ,\count_tx[31]_i_18_n_0 ,\count_tx[31]_i_19_n_0 ,\count_tx[31]_i_20_n_0 }));
  CARRY4 \count_tx_reg[31]_i_3 
       (.CI(\count_tx_reg[31]_i_5_n_0 ),
        .CO({MISO12_in,\count_tx_reg[31]_i_3_n_2 ,\count_tx_reg[31]_i_3_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const1> ,\<const1> ,\<const1> }),
        .S({\<const0> ,\count_tx[31]_i_6_n_0 ,\count_tx[31]_i_7_n_0 ,\count_tx[31]_i_8_n_0 }));
  CARRY4 \count_tx_reg[31]_i_4 
       (.CI(\count_tx_reg[28]_i_2_n_0 ),
        .CO({\count_tx_reg[31]_i_4_n_2 ,\count_tx_reg[31]_i_4_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,count_tx[30:29]}),
        .O(in11[31:29]),
        .S({\<const0> ,\count_tx[31]_i_9_n_0 ,\count_tx[31]_i_10_n_0 ,\count_tx[31]_i_11_n_0 }));
  CARRY4 \count_tx_reg[31]_i_5 
       (.CI(\count_tx_reg[31]_i_12_n_0 ),
        .CO({\count_tx_reg[31]_i_5_n_0 ,\count_tx_reg[31]_i_5_n_1 ,\count_tx_reg[31]_i_5_n_2 ,\count_tx_reg[31]_i_5_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const1> ,\<const1> ,\<const1> ,\<const1> }),
        .S({\count_tx[31]_i_13_n_0 ,\count_tx[31]_i_14_n_0 ,\count_tx[31]_i_15_n_0 ,\count_tx[31]_i_16_n_0 }));
  FDSE #(
    .INIT(1'b1)) 
    \count_tx_reg[3] 
       (.C(CLK),
        .CE(count_tx_1),
        .D(\count_tx[3]_i_1_n_0 ),
        .Q(count_tx[3]),
        .S(rd_add_signal_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \count_tx_reg[4] 
       (.C(CLK),
        .CE(count_tx_1),
        .D(\count_tx[4]_i_1_n_0 ),
        .Q(count_tx[4]),
        .R(rd_add_signal_reg_0));
  CARRY4 \count_tx_reg[4]_i_2 
       (.CI(\<const0> ),
        .CO({\count_tx_reg[4]_i_2_n_0 ,\count_tx_reg[4]_i_2_n_1 ,\count_tx_reg[4]_i_2_n_2 ,\count_tx_reg[4]_i_2_n_3 }),
        .CYINIT(Q[0]),
        .DI({count_tx[4:2],Q[1]}),
        .O(in11[4:1]),
        .S({\count_tx[4]_i_3_n_0 ,\count_tx[4]_i_4_n_0 ,\count_tx[4]_i_5_n_0 ,\count_tx[4]_i_6_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \count_tx_reg[5] 
       (.C(CLK),
        .CE(count_tx_1),
        .D(\count_tx[5]_i_1_n_0 ),
        .Q(count_tx[5]),
        .R(rd_add_signal_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \count_tx_reg[6] 
       (.C(CLK),
        .CE(count_tx_1),
        .D(\count_tx[6]_i_1_n_0 ),
        .Q(count_tx[6]),
        .R(rd_add_signal_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \count_tx_reg[7] 
       (.C(CLK),
        .CE(count_tx_1),
        .D(\count_tx[7]_i_1_n_0 ),
        .Q(count_tx[7]),
        .R(rd_add_signal_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \count_tx_reg[8] 
       (.C(CLK),
        .CE(count_tx_1),
        .D(\count_tx[8]_i_1_n_0 ),
        .Q(count_tx[8]),
        .R(rd_add_signal_reg_0));
  CARRY4 \count_tx_reg[8]_i_2 
       (.CI(\count_tx_reg[4]_i_2_n_0 ),
        .CO({\count_tx_reg[8]_i_2_n_0 ,\count_tx_reg[8]_i_2_n_1 ,\count_tx_reg[8]_i_2_n_2 ,\count_tx_reg[8]_i_2_n_3 }),
        .CYINIT(\<const0> ),
        .DI(count_tx[8:5]),
        .O(in11[8:5]),
        .S({\count_tx[8]_i_3_n_0 ,\count_tx[8]_i_4_n_0 ,\count_tx[8]_i_5_n_0 ,\count_tx[8]_i_6_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \count_tx_reg[9] 
       (.C(CLK),
        .CE(count_tx_1),
        .D(\count_tx[9]_i_1_n_0 ),
        .Q(count_tx[9]),
        .R(rd_add_signal_reg_0));
  LUT5 #(
    .INIT(32'h2000FFFF)) 
    mem_reg_i_1
       (.I0(MISO1),
        .I1(mem_reg_i_3_n_0),
        .I2(rx_data[8]),
        .I3(rx_data[9]),
        .I4(rst_n_IBUF),
        .O(mem_reg));
  LUT6 #(
    .INIT(64'h4444444000000000)) 
    mem_reg_i_2
       (.I0(rx_data[9]),
        .I1(rx_data[8]),
        .I2(\FSM_onehot_cs_reg_n_0_[4] ),
        .I3(\FSM_onehot_cs_reg_n_0_[3] ),
        .I4(\FSM_onehot_cs_reg_n_0_[2] ),
        .I5(MISO1),
        .O(WEA));
  LUT3 #(
    .INIT(8'h01)) 
    mem_reg_i_3
       (.I0(\FSM_onehot_cs_reg_n_0_[2] ),
        .I1(\FSM_onehot_cs_reg_n_0_[3] ),
        .I2(\FSM_onehot_cs_reg_n_0_[4] ),
        .O(mem_reg_i_3_n_0));
  LUT6 #(
    .INIT(64'hF4FFFFFF44444444)) 
    rd_add_signal_i_1
       (.I0(MISO1),
        .I1(\FSM_onehot_cs_reg_n_0_[3] ),
        .I2(MISO12_in),
        .I3(rd_add_signal1),
        .I4(rd_add_signal_i_3_n_0),
        .I5(rd_add_signal_reg_n_0),
        .O(rd_add_signal_i_1_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    rd_add_signal_i_10
       (.I0(count_tx[18]),
        .I1(count_tx[19]),
        .I2(count_tx[20]),
        .O(rd_add_signal_i_10_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    rd_add_signal_i_11
       (.I0(count_tx[15]),
        .I1(count_tx[16]),
        .I2(count_tx[17]),
        .O(rd_add_signal_i_11_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    rd_add_signal_i_12
       (.I0(count_tx[12]),
        .I1(count_tx[13]),
        .I2(count_tx[14]),
        .O(rd_add_signal_i_12_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    rd_add_signal_i_13
       (.I0(count_tx[9]),
        .I1(count_tx[10]),
        .I2(count_tx[11]),
        .O(rd_add_signal_i_13_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    rd_add_signal_i_14
       (.I0(count_tx[6]),
        .I1(count_tx[7]),
        .I2(count_tx[8]),
        .O(rd_add_signal_i_14_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    rd_add_signal_i_15
       (.I0(count_tx[3]),
        .I1(count_tx[4]),
        .I2(count_tx[5]),
        .O(rd_add_signal_i_15_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    rd_add_signal_i_16
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(count_tx[2]),
        .O(rd_add_signal_i_16_n_0));
  LUT3 #(
    .INIT(8'h80)) 
    rd_add_signal_i_3
       (.I0(tx_valid),
        .I1(MISO1),
        .I2(\FSM_onehot_cs_reg_n_0_[4] ),
        .O(rd_add_signal_i_3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    rd_add_signal_i_5
       (.I0(count_tx[31]),
        .I1(count_tx[30]),
        .O(rd_add_signal_i_5_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    rd_add_signal_i_6
       (.I0(count_tx[27]),
        .I1(count_tx[28]),
        .I2(count_tx[29]),
        .O(rd_add_signal_i_6_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    rd_add_signal_i_7
       (.I0(count_tx[24]),
        .I1(count_tx[25]),
        .I2(count_tx[26]),
        .O(rd_add_signal_i_7_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    rd_add_signal_i_9
       (.I0(count_tx[21]),
        .I1(count_tx[22]),
        .I2(count_tx[23]),
        .O(rd_add_signal_i_9_n_0));
  FDRE #(
    .INIT(1'b0)) 
    rd_add_signal_reg
       (.C(CLK),
        .CE(\<const1> ),
        .D(rd_add_signal_i_1_n_0),
        .Q(rd_add_signal_reg_n_0),
        .R(rd_add_signal_reg_0));
  CARRY4 rd_add_signal_reg_i_2
       (.CI(rd_add_signal_reg_i_4_n_0),
        .CO({rd_add_signal1,rd_add_signal_reg_i_2_n_2,rd_add_signal_reg_i_2_n_3}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .S({\<const0> ,rd_add_signal_i_5_n_0,rd_add_signal_i_6_n_0,rd_add_signal_i_7_n_0}));
  CARRY4 rd_add_signal_reg_i_4
       (.CI(rd_add_signal_reg_i_8_n_0),
        .CO({rd_add_signal_reg_i_4_n_0,rd_add_signal_reg_i_4_n_1,rd_add_signal_reg_i_4_n_2,rd_add_signal_reg_i_4_n_3}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .S({rd_add_signal_i_9_n_0,rd_add_signal_i_10_n_0,rd_add_signal_i_11_n_0,rd_add_signal_i_12_n_0}));
  CARRY4 rd_add_signal_reg_i_8
       (.CI(\<const0> ),
        .CO({rd_add_signal_reg_i_8_n_0,rd_add_signal_reg_i_8_n_1,rd_add_signal_reg_i_8_n_2,rd_add_signal_reg_i_8_n_3}),
        .CYINIT(\<const1> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .S({rd_add_signal_i_13_n_0,rd_add_signal_i_14_n_0,rd_add_signal_i_15_n_0,rd_add_signal_i_16_n_0}));
  LUT6 #(
    .INIT(64'h00000000AAA80000)) 
    \rd_addr[7]_i_1 
       (.I0(rx_data[9]),
        .I1(\FSM_onehot_cs_reg_n_0_[4] ),
        .I2(\FSM_onehot_cs_reg_n_0_[3] ),
        .I3(\FSM_onehot_cs_reg_n_0_[2] ),
        .I4(MISO1),
        .I5(rx_data[8]),
        .O(\rd_addr_reg[7] ));
  LUT6 #(
    .INIT(64'h2F222F2F20222020)) 
    \rx_data[0]_i_1 
       (.I0(MOSI_IBUF),
        .I1(mem_reg_i_3_n_0),
        .I2(\rx_data[0]_i_2_n_0 ),
        .I3(\rx_data[0]_i_3_n_0 ),
        .I4(\rx_data[0]_i_4_n_0 ),
        .I5(DIADI[0]),
        .O(\rx_data[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \rx_data[0]_i_2 
       (.I0(\FSM_onehot_cs_reg_n_0_[4] ),
        .I1(MISO1),
        .O(\rx_data[0]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFE7)) 
    \rx_data[0]_i_3 
       (.I0(count_rx[1]),
        .I1(count_rx[2]),
        .I2(count_rx[3]),
        .I3(mem_reg_i_3_n_0),
        .I4(MISO1),
        .O(\rx_data[0]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \rx_data[0]_i_4 
       (.I0(count_rx[0]),
        .I1(count_rx[1]),
        .O(\rx_data[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hEEAAFEFFEEAA0E00)) 
    \rx_data[1]_i_1 
       (.I0(\rx_data[9]_i_2_n_0 ),
        .I1(DIADI[0]),
        .I2(MISO1),
        .I3(\FSM_onehot_cs_reg_n_0_[4] ),
        .I4(\rx_data[1]_i_2_n_0 ),
        .I5(DIADI[1]),
        .O(\rx_data[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000100)) 
    \rx_data[1]_i_2 
       (.I0(count_rx[0]),
        .I1(MISO1),
        .I2(mem_reg_i_3_n_0),
        .I3(count_rx[3]),
        .I4(count_rx[2]),
        .I5(count_rx[1]),
        .O(\rx_data[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEEAAFEFFEEAA0E00)) 
    \rx_data[2]_i_1 
       (.I0(\rx_data[9]_i_2_n_0 ),
        .I1(DIADI[1]),
        .I2(MISO1),
        .I3(\FSM_onehot_cs_reg_n_0_[4] ),
        .I4(\rx_data[2]_i_2_n_0 ),
        .I5(DIADI[2]),
        .O(\rx_data[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0002000000000000)) 
    \rx_data[2]_i_2 
       (.I0(count_rx[0]),
        .I1(MISO1),
        .I2(mem_reg_i_3_n_0),
        .I3(count_rx[3]),
        .I4(count_rx[2]),
        .I5(count_rx[1]),
        .O(\rx_data[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEEAAFEFFEEAA0E00)) 
    \rx_data[3]_i_1 
       (.I0(\rx_data[9]_i_2_n_0 ),
        .I1(DIADI[2]),
        .I2(MISO1),
        .I3(\FSM_onehot_cs_reg_n_0_[4] ),
        .I4(\rx_data[3]_i_2_n_0 ),
        .I5(DIADI[3]),
        .O(\rx_data[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0001000000000000)) 
    \rx_data[3]_i_2 
       (.I0(count_rx[0]),
        .I1(MISO1),
        .I2(mem_reg_i_3_n_0),
        .I3(count_rx[3]),
        .I4(count_rx[2]),
        .I5(count_rx[1]),
        .O(\rx_data[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEEAAFEFFEEAA0E00)) 
    \rx_data[4]_i_1 
       (.I0(\rx_data[9]_i_2_n_0 ),
        .I1(DIADI[3]),
        .I2(MISO1),
        .I3(\FSM_onehot_cs_reg_n_0_[4] ),
        .I4(\rx_data[4]_i_2_n_0 ),
        .I5(DIADI[4]),
        .O(\rx_data[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000020)) 
    \rx_data[4]_i_2 
       (.I0(count_rx[0]),
        .I1(count_rx[1]),
        .I2(count_rx[2]),
        .I3(count_rx[3]),
        .I4(MISO1),
        .I5(mem_reg_i_3_n_0),
        .O(\rx_data[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEEAAFEFFEEAA0E00)) 
    \rx_data[5]_i_1 
       (.I0(\rx_data[9]_i_2_n_0 ),
        .I1(DIADI[4]),
        .I2(MISO1),
        .I3(\FSM_onehot_cs_reg_n_0_[4] ),
        .I4(\rx_data[5]_i_2_n_0 ),
        .I5(DIADI[5]),
        .O(\rx_data[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \rx_data[5]_i_2 
       (.I0(count_rx[0]),
        .I1(count_rx[1]),
        .I2(count_rx[2]),
        .I3(count_rx[3]),
        .I4(MISO1),
        .I5(mem_reg_i_3_n_0),
        .O(\rx_data[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEEAAFEFFEEAA0E00)) 
    \rx_data[6]_i_1 
       (.I0(\rx_data[9]_i_2_n_0 ),
        .I1(DIADI[5]),
        .I2(MISO1),
        .I3(\FSM_onehot_cs_reg_n_0_[4] ),
        .I4(\rx_data[6]_i_2_n_0 ),
        .I5(DIADI[6]),
        .O(\rx_data[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0001000000000000)) 
    \rx_data[6]_i_2 
       (.I0(count_rx[3]),
        .I1(count_rx[2]),
        .I2(MISO1),
        .I3(mem_reg_i_3_n_0),
        .I4(count_rx[0]),
        .I5(count_rx[1]),
        .O(\rx_data[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEEAAFEFFEEAA0E00)) 
    \rx_data[7]_i_1 
       (.I0(\rx_data[9]_i_2_n_0 ),
        .I1(DIADI[6]),
        .I2(MISO1),
        .I3(\FSM_onehot_cs_reg_n_0_[4] ),
        .I4(\rx_data[7]_i_2_n_0 ),
        .I5(DIADI[7]),
        .O(\rx_data[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000100)) 
    \rx_data[7]_i_2 
       (.I0(count_rx[0]),
        .I1(count_rx[3]),
        .I2(count_rx[2]),
        .I3(count_rx[1]),
        .I4(MISO1),
        .I5(mem_reg_i_3_n_0),
        .O(\rx_data[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEEAAFEFFEEAA0E00)) 
    \rx_data[8]_i_1 
       (.I0(\rx_data[9]_i_2_n_0 ),
        .I1(DIADI[7]),
        .I2(MISO1),
        .I3(\FSM_onehot_cs_reg_n_0_[4] ),
        .I4(\rx_data[8]_i_2_n_0 ),
        .I5(rx_data[8]),
        .O(\rx_data[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \rx_data[8]_i_2 
       (.I0(mem_reg_i_3_n_0),
        .I1(MISO1),
        .I2(count_rx[0]),
        .I3(count_rx[1]),
        .I4(count_rx[3]),
        .I5(count_rx[2]),
        .O(\rx_data[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEECCFEFFEECC0E00)) 
    \rx_data[9]_i_1 
       (.I0(rx_data[8]),
        .I1(\rx_data[9]_i_2_n_0 ),
        .I2(MISO1),
        .I3(\FSM_onehot_cs_reg_n_0_[4] ),
        .I4(\rx_data[9]_i_3_n_0 ),
        .I5(rx_data[9]),
        .O(\rx_data[9]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hA8)) 
    \rx_data[9]_i_2 
       (.I0(MOSI_IBUF),
        .I1(\FSM_onehot_cs_reg_n_0_[2] ),
        .I2(\FSM_onehot_cs_reg_n_0_[3] ),
        .O(\rx_data[9]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \rx_data[9]_i_3 
       (.I0(mem_reg_i_3_n_0),
        .I1(MISO1),
        .I2(count_rx[1]),
        .I3(count_rx[0]),
        .I4(count_rx[3]),
        .I5(count_rx[2]),
        .O(\rx_data[9]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[0] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(\rx_data[0]_i_1_n_0 ),
        .Q(DIADI[0]),
        .R(rd_add_signal_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[1] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(\rx_data[1]_i_1_n_0 ),
        .Q(DIADI[1]),
        .R(rd_add_signal_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[2] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(\rx_data[2]_i_1_n_0 ),
        .Q(DIADI[2]),
        .R(rd_add_signal_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[3] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(\rx_data[3]_i_1_n_0 ),
        .Q(DIADI[3]),
        .R(rd_add_signal_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[4] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(\rx_data[4]_i_1_n_0 ),
        .Q(DIADI[4]),
        .R(rd_add_signal_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[5] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(\rx_data[5]_i_1_n_0 ),
        .Q(DIADI[5]),
        .R(rd_add_signal_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[6] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(\rx_data[6]_i_1_n_0 ),
        .Q(DIADI[6]),
        .R(rd_add_signal_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[7] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(\rx_data[7]_i_1_n_0 ),
        .Q(DIADI[7]),
        .R(rd_add_signal_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[8] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(\rx_data[8]_i_1_n_0 ),
        .Q(rx_data[8]),
        .R(rd_add_signal_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[9] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(\rx_data[9]_i_1_n_0 ),
        .Q(rx_data[9]),
        .R(rd_add_signal_reg_0));
  LUT6 #(
    .INIT(64'h8888888000000000)) 
    tx_valid_i_1
       (.I0(rx_data[9]),
        .I1(rx_data[8]),
        .I2(\FSM_onehot_cs_reg_n_0_[4] ),
        .I3(\FSM_onehot_cs_reg_n_0_[3] ),
        .I4(\FSM_onehot_cs_reg_n_0_[2] ),
        .I5(MISO1),
        .O(tx_valid_reg));
  LUT6 #(
    .INIT(64'h0000000055540000)) 
    \wr_addr[7]_i_1 
       (.I0(rx_data[9]),
        .I1(\FSM_onehot_cs_reg_n_0_[4] ),
        .I2(\FSM_onehot_cs_reg_n_0_[3] ),
        .I3(\FSM_onehot_cs_reg_n_0_[2] ),
        .I4(MISO1),
        .I5(rx_data[8]),
        .O(E));
endmodule
