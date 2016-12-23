
module DE2_115_CAMERA(

	//////////// CLOCK //////////
	CLOCK_50,
	CLOCK2_50,
	CLOCK3_50,

	//////////// Sma //////////
	SMA_CLKIN,
	SMA_CLKOUT,

	//////////// LED //////////
	LEDG,
	LEDR,

	//////////// KEY //////////
	KEY,

	//////////// EJTAG //////////
	EX_IO,

	//////////// SW //////////
	SW,

	//////////// SEG7 //////////
	HEX0,
	HEX1,
	HEX2,
	HEX3,
	HEX4,
	HEX5,
	HEX6,
	HEX7,

	//////////// LCD //////////
	LCD_BLON,
	LCD_DATA,
	LCD_EN,
	LCD_ON,
	LCD_RS,
	LCD_RW,

	//////////// RS232 //////////
	UART_CTS,
	UART_RTS,
	UART_RXD,
	UART_TXD,

	//////////// PS2 for Keyboard and Mouse //////////
	PS2_CLK,
	PS2_CLK2,
	PS2_DAT,
	PS2_DAT2,

	//////////// SDCARD //////////
	SD_CLK,
	SD_CMD,
	SD_DAT,
	SD_WP_N,

	//////////// VGA //////////
	VGA_B,
	VGA_BLANK_N,
	VGA_CLK,
	VGA_G,
	VGA_HS,
	VGA_R,
	VGA_SYNC_N,
	VGA_VS,

	//////////// Audio //////////
	AUD_ADCDAT,
	AUD_ADCLRCK,
	AUD_BCLK,
	AUD_DACDAT,
	AUD_DACLRCK,
	AUD_XCK,

	//////////// I2C for EEPROM //////////
	EEP_I2C_SCLK,
	EEP_I2C_SDAT,

	//////////// I2C for Audio Tv-Decoder  //////////
	I2C_SCLK,
	I2C_SDAT,

	//////////// Ethernet 0 //////////
	ENET0_GTX_CLK,
	ENET0_INT_N,
	ENET0_LINK100,
	ENET0_MDC,
	ENET0_MDIO,
	ENET0_RST_N,
	ENET0_RX_CLK,
	ENET0_RX_COL,
	ENET0_RX_CRS,
	ENET0_RX_DATA,
	ENET0_RX_DV,
	ENET0_RX_ER,
	ENET0_TX_CLK,
	ENET0_TX_DATA,
	ENET0_TX_EN,
	ENET0_TX_ER,
	ENETCLK_25,

	//////////// Ethernet 1 //////////
	ENET1_GTX_CLK,
	ENET1_INT_N,
	ENET1_LINK100,
	ENET1_MDC,
	ENET1_MDIO,
	ENET1_RST_N,
	ENET1_RX_CLK,
	ENET1_RX_COL,
	ENET1_RX_CRS,
	ENET1_RX_DATA,
	ENET1_RX_DV,
	ENET1_RX_ER,
	ENET1_TX_CLK,
	ENET1_TX_DATA,
	ENET1_TX_EN,
	ENET1_TX_ER,

	//////////// TV Decoder //////////
	TD_CLK27,
	TD_DATA,
	TD_HS,
	TD_RESET_N,
	TD_VS,

	//////////// USB 2.0 OTG //////////
	OTG_ADDR,
	OTG_CS_N,
	OTG_DACK_N,
	OTG_DATA,
	OTG_DREQ,
	OTG_FSPEED,
	OTG_INT,
	OTG_LSPEED,
	OTG_RD_N,
	OTG_RST_N,
	OTG_WE_N,

	//////////// IR Receiver //////////
	IRDA_RXD,

	//////////// SDRAM //////////
	DRAM_ADDR,
	DRAM_BA,
	DRAM_CAS_N,
	DRAM_CKE,
	DRAM_CLK,
	DRAM_CS_N,
	DRAM_DQ,
	DRAM_DQM,
	DRAM_RAS_N,
	DRAM_WE_N,

	//////////// SRAM //////////
	SRAM_ADDR,
	SRAM_CE_N,
	SRAM_DQ,
	SRAM_LB_N,
	SRAM_OE_N,
	SRAM_UB_N,
	SRAM_WE_N,

	//////////// Flash //////////
	FL_ADDR,
	FL_CE_N,
	FL_DQ,
	FL_OE_N,
	FL_RST_N,
	FL_RY,
	FL_WE_N,
	FL_WP_N,

	//////////// GPIO, GPIO connect to D5M - 5M Pixel Camera //////////
	D5M_D,
	D5M_FVAL,
	D5M_LVAL,
	D5M_PIXLCLK,
	D5M_RESET_N,
	D5M_SCLK,
	D5M_SDATA,
	D5M_STROBE,
	D5M_TRIGGER,
	D5M_XCLKIN
);

//=======================================================
//  PARAMETER declarations
//=======================================================


//=======================================================
//  PORT declarations
//=======================================================

//////////// CLOCK //////////
input		          		CLOCK_50;
input		          		CLOCK2_50;
input		          		CLOCK3_50;

//////////// Sma //////////
input		          		SMA_CLKIN;
output		          		SMA_CLKOUT;

//////////// LED //////////
output		     [8:0]		LEDG;
output		    [17:0]		LEDR;

//////////// KEY //////////
input		     [3:0]		KEY;

//////////// EJTAG //////////
inout		     [6:0]		EX_IO;

//////////// SW //////////
input		    [17:0]		SW;

//////////// SEG7 //////////
output		     [6:0]		HEX0;
output		     [6:0]		HEX1;
output		     [6:0]		HEX2;
output		     [6:0]		HEX3;
output		     [6:0]		HEX4;
output		     [6:0]		HEX5;
output		     [6:0]		HEX6;
output		     [6:0]		HEX7;

//////////// LCD //////////
output		          		LCD_BLON;
inout		     [7:0]		LCD_DATA;
output		          		LCD_EN;
output		          		LCD_ON;
output		          		LCD_RS;
output		          		LCD_RW;

//////////// RS232 //////////
output		          		UART_CTS;
input		          		UART_RTS;
input		          		UART_RXD;
output		          		UART_TXD;

//////////// PS2 for Keyboard and Mouse //////////
inout		          		PS2_CLK;
inout		          		PS2_CLK2;
inout		          		PS2_DAT;
inout		          		PS2_DAT2;

//////////// SDCARD //////////
output		          		SD_CLK;
inout		          		SD_CMD;
inout		     [3:0]		SD_DAT;
input		          		SD_WP_N;

//////////// VGA //////////
output		     [7:0]		VGA_B;
output		          		VGA_BLANK_N;
output		          		VGA_CLK;
output		     [7:0]		VGA_G;
output		          		VGA_HS;
output		     [7:0]		VGA_R;
output		          		VGA_SYNC_N;
output		          		VGA_VS;

//////////// Audio //////////
input		          		AUD_ADCDAT;
inout		          		AUD_ADCLRCK;
inout		          		AUD_BCLK;
output		          		AUD_DACDAT;
inout		          		AUD_DACLRCK;
output		          		AUD_XCK;

//////////// I2C for EEPROM //////////
output		          		EEP_I2C_SCLK;
inout		          		EEP_I2C_SDAT;

//////////// I2C for Audio Tv-Decoder  //////////
output		          		I2C_SCLK;
inout		          		I2C_SDAT;

//////////// Ethernet 0 //////////
output		          		ENET0_GTX_CLK;
input		          		ENET0_INT_N;
input		          		ENET0_LINK100;
output		          		ENET0_MDC;
inout		          		ENET0_MDIO;
output		          		ENET0_RST_N;
input		          		ENET0_RX_CLK;
input		          		ENET0_RX_COL;
input		          		ENET0_RX_CRS;
input		     [3:0]		ENET0_RX_DATA;
input		          		ENET0_RX_DV;
input		          		ENET0_RX_ER;
input		          		ENET0_TX_CLK;
output		     [3:0]		ENET0_TX_DATA;
output		          		ENET0_TX_EN;
output		          		ENET0_TX_ER;
input		          		ENETCLK_25;

//////////// Ethernet 1 //////////
output		          		ENET1_GTX_CLK;
input		          		ENET1_INT_N;
input		          		ENET1_LINK100;
output		          		ENET1_MDC;
inout		          		ENET1_MDIO;
output		          		ENET1_RST_N;
input		          		ENET1_RX_CLK;
input		          		ENET1_RX_COL;
input		          		ENET1_RX_CRS;
input		     [3:0]		ENET1_RX_DATA;
input		          		ENET1_RX_DV;
input		          		ENET1_RX_ER;
input		          		ENET1_TX_CLK;
output		     [3:0]		ENET1_TX_DATA;
output		          		ENET1_TX_EN;
output		          		ENET1_TX_ER;

//////////// TV Decoder //////////
input		          		TD_CLK27;
input		     [7:0]		TD_DATA;
input		          		TD_HS;
output		          		TD_RESET_N;
input		          		TD_VS;

//////////// USB 2.0 OTG //////////
output		     [1:0]		OTG_ADDR;
output		          		OTG_CS_N;
output		     [1:0]		OTG_DACK_N;
inout		    [15:0]		OTG_DATA;
input		     [1:0]		OTG_DREQ;
inout		          		OTG_FSPEED;
input		     [1:0]		OTG_INT;
inout		          		OTG_LSPEED;
output		          		OTG_RD_N;
output		          		OTG_RST_N;
output		          		OTG_WE_N;

//////////// IR Receiver //////////
input		          		IRDA_RXD;

//////////// SDRAM //////////
output		    [12:0]		DRAM_ADDR;
output		     [1:0]		DRAM_BA;
output		          		DRAM_CAS_N;
output		          		DRAM_CKE;
output		          		DRAM_CLK;
output		          		DRAM_CS_N;
inout		    [31:0]		DRAM_DQ;
output		     [3:0]		DRAM_DQM;
output		          		DRAM_RAS_N;
output		          		DRAM_WE_N;

//////////// SRAM //////////
output		    [19:0]		SRAM_ADDR;
output		          		SRAM_CE_N;
inout		    [15:0]		SRAM_DQ;
output		          		SRAM_LB_N;
output		          		SRAM_OE_N;
output		          		SRAM_UB_N;
output		          		SRAM_WE_N;

//////////// Flash //////////
output		    [22:0]		FL_ADDR;
output		          		FL_CE_N;
inout		     [7:0]		FL_DQ;
output		          		FL_OE_N;
output		          		FL_RST_N;
input		          		FL_RY;
output		          		FL_WE_N;
output		          		FL_WP_N;

//////////// GPIO, GPIO connect to D5M - 5M Pixel Camera //////////
input		    [11:0]		D5M_D;
input		          		D5M_FVAL;
input		          		D5M_LVAL;
input		          		D5M_PIXLCLK;
output		          		D5M_RESET_N;
output		          		D5M_SCLK;
inout		          		D5M_SDATA;
input		          		D5M_STROBE;
output		          		D5M_TRIGGER;
output		          		D5M_XCLKIN;


//=======================================================
//  REG/WIRE declarations
//=======================================================
wire	[15:0]	Read_DATA1;
wire	[15:0]	Read_DATA2;

wire	[11:0]	mCCD_DATA;
wire			mCCD_DVAL;
wire			mCCD_DVAL_d;
wire	[15:0]	X_Cont;
wire	[15:0]	Y_Cont;
wire	[9:0]	X_ADDR;
wire	[31:0]	Frame_Cont;
wire			DLY_RST_0;
wire			DLY_RST_1;
wire			DLY_RST_2;
wire			DLY_RST_3;
wire			DLY_RST_4;
wire			Read;
reg		[11:0]	rCCD_DATA;
reg				rCCD_LVAL;
reg				rCCD_FVAL;
wire	[11:0]	sCCD_R;
wire	[11:0]	sCCD_G;
wire	[11:0]	sCCD_B;
wire			sCCD_DVAL;

wire			sdram_ctrl_clk;
wire	[9:0]	oVGA_R;   				//	VGA Red[9:0]
wire	[9:0]	oVGA_G;	 				//	VGA Green[9:0]
wire	[9:0]	oVGA_B;   				//	VGA Blue[9:0]

//power on start
wire             auto_start;
//=======================================================
//  Structural coding
//=======================================================
// D5M
assign	D5M_TRIGGER	=	1'b1;  // tRIGGER
assign	D5M_RESET_N	=	DLY_RST_1;
assign  VGA_CTRL_CLK = ~VGA_CLK;

assign	LEDR		=	SW;
assign	LEDG		=	Y_Cont;
assign	UART_TXD = UART_RXD;

//fetch the high 8 bits
assign  VGA_R = oVGA_R[9:2];
assign  VGA_G = oVGA_G[9:2];
assign  VGA_B = oVGA_B[9:2];

//D5M read
always@(posedge D5M_PIXLCLK)
begin
	rCCD_DATA	<=	D5M_D;
	rCCD_LVAL	<=	D5M_LVAL;
	rCCD_FVAL	<=	D5M_FVAL;
end

//auto start when power on
assign auto_start = ((KEY[0])&&(DLY_RST_3)&&(!DLY_RST_4))? 1'b1:1'b0;
//Reset module
Reset_Delay			u0	(
              .iCLK(CLOCK2_50),
              .iRST(KEY[0]),
              .oRST_0(DLY_RST_0),
              .oRST_1(DLY_RST_1),
              .oRST_2(DLY_RST_2),
              .oRST_3(DLY_RST_3),
              .oRST_4(DLY_RST_4)
						);
//D5M I2C control
I2C_CCD_Config 		u1	(	//	Host Side
              .iCLK(CLOCK2_50),
              .iRST_N(DLY_RST_2),
              .iEXPOSURE_ADJ(KEY[1]),
              .iEXPOSURE_DEC_p(SW[0]),
              .iZOOM_MODE_SW(SW[16]),
              //	I2C Side
              .I2C_SCLK(D5M_SCLK),
              .I2C_SDAT(D5M_SDATA)
						);
//D5M image capture
CCD_Capture			u2	(
              .oDATA(mCCD_DATA),
              .oDVAL(mCCD_DVAL),
              .oX_Cont(X_Cont),
              .oY_Cont(Y_Cont),
              .oFrame_Cont(Frame_Cont),
              .iDATA(rCCD_DATA),
              .iFVAL(rCCD_FVAL),
              .iLVAL(rCCD_LVAL),
              .iSTART(!KEY[3]|auto_start),
              .iEND(!KEY[2]),
              .iCLK(D5M_PIXLCLK),
              .iRST(DLY_RST_2)
						);
//D5M raw date convert to RGB data
RAW2RGB				u3	(
              .iCLK(D5M_PIXLCLK),
              .iRST(DLY_RST_1),
              .iDATA(mCCD_DATA),
              .iDVAL(mCCD_DVAL),
              .oRed(wVGA_R),
              .oGreen(wVGA_G),
              .oBlue(wVGA_B),
              .oDVAL(sCCD_DVAL),
              .iX_Cont(X_Cont),
              .iY_Cont(Y_Cont)
						);

wire [11:0]wVGA_R ;
wire [11:0]wVGA_G ;
wire [11:0]wVGA_B ;

wire gCCD_DVAL;
wire [11:0] gDATA;

RGB2GRAY 			u4(
        .oDVAL(gCCD_DVAL),
        .oDATA(gDATA),
        .iRed(wVGA_R),
        .iGreen(wVGA_G),
        .iBlue(wVGA_B),
        .iCLK(D5M_PIXLCLK),
        .iRST(DLY_RST_1),
        .iDVAL(sCCD_DVAL)
		);

wire [11:0]wDISP_R;
wire [11:0]wDISP_G;
wire [11:0]wDISP_B;

assign wDISP_R =SW[1] ? gDATA:wVGA_R;
assign wDISP_G =SW[1] ? gDATA:wVGA_G;
assign wDISP_B =SW[1] ? gDATA:wVGA_B;

//BLACK AND WHITE
wire bCCD_DVAL;
wire [11:0]bDATA;

GRAY2BINARY			u5(
        .oDVAL(bCCD_DVAL),
        .oDATA(bDATA),
        .iDATA(gDATA),
        .iCLK(D5M_PIXLCLK),
        .iRST(DLY_RST_2),
        .iDVAL(gCCD_DVAL)
		);

wire [11:0]bDISP_R;
wire [11:0]bDISP_G;
wire [11:0]bDISP_B;

assign bDISP_R =SW[2] ? bDATA:wDISP_R;
assign bDISP_G =SW[2] ? bDATA:wDISP_G;
assign bDISP_B =SW[2] ? bDATA:wDISP_B;


//Frame count display
// SEG7_LUT_8 			u6	( .oSEG0(HEX5),
                      // .oSEG1(HEX6),
                      // .oSEG2(HEX7),
                      // .iDIG(cYSTART)
						// );

// SEG7_LUT_8 			u7	( .oSEG0(HEX0),
                      // .oSEG1(HEX1),
                      // .oSEG2(HEX2),
                      // .iDIG(cXSTART)
						// );


sdram_pll 			u8	(
              .inclk0(CLOCK2_50),
              .c0(sdram_ctrl_clk),
              .c1(DRAM_CLK),
              .c2(D5M_XCLKIN), //25M
              .c3(VGA_CLK)     //25M
						);

//SDRam Read and Write as Frame Buffer
Sdram_Control	u9	(	//	HOST Side
              .RESET_N(KEY[0]),
              .CLK(sdram_ctrl_clk),

              //	FIFO Write Side 1
              .WR1_DATA({1'b0,bDISP_G[11:7],bDISP_B[11:2]}),
              .WR1(bCCD_DVAL),
              .WR1_ADDR(0),
              .WR1_MAX_ADDR(640*480/2),
              .WR1_LENGTH(8'h50),
              .WR1_LOAD(!DLY_RST_0),
              .WR1_CLK(~D5M_PIXLCLK),

              //	FIFO Write Side 2
              .WR2_DATA({1'b0,bDISP_G[6:2],bDISP_R[11:2]}),
              .WR2(bCCD_DVAL),
              .WR2_ADDR(23'h100000),
              .WR2_MAX_ADDR(23'h100000+640*480/2),
              .WR2_LENGTH(8'h50),
              .WR2_LOAD(!DLY_RST_0),
              .WR2_CLK(~D5M_PIXLCLK),

              //	FIFO Read Side 1
              .RD1_DATA(Read_DATA1),
              .RD1(Read),
              .RD1_ADDR(0),
              .RD1_MAX_ADDR(640*480/2),//0x25800
              .RD1_LENGTH(8'h50),
              .RD1_LOAD(!DLY_RST_0),
              .RD1_CLK(~VGA_CTRL_CLK),

              //	FIFO Read Side 2
              .RD2_DATA(Read_DATA2),
              .RD2(Read),
              .RD2_ADDR(23'h100000),
              .RD2_MAX_ADDR(23'h100000+640*480/2),
              .RD2_LENGTH(8'h50),
              .RD2_LOAD(!DLY_RST_0),
              .RD2_CLK(~VGA_CTRL_CLK),

              //	SDRAM Side
              .SA(DRAM_ADDR),
              .BA(DRAM_BA),
              .CS_N(DRAM_CS_N),
              .CKE(DRAM_CKE),
              .RAS_N(DRAM_RAS_N),
              .CAS_N(DRAM_CAS_N),
              .WE_N(DRAM_WE_N),
              .DQ(DRAM_DQ),
              .DQM(DRAM_DQM)
						);

wire [9:0]SD_DATA_R ;
wire [9:0]SD_DATA_G ;
wire [9:0]SD_DATA_B ;

assign SD_DATA_R = Read_DATA2[9:0];
assign SD_DATA_G = {Read_DATA1[14:10],Read_DATA2[14:10]};
assign SD_DATA_B = Read_DATA1[9:0];

//Crop image possition
wire  ysDVAL;
wire  xsDVAL;
wire  xeDVAL;
wire  yeDVAL;
wire  [15:0]XSTART;
wire  [15:0]XEND;
wire  [15:0]YSTART;
wire  [15:0]YEND;

CROP_YSTART u10(
    .oDVAL(ysDVAL),
    .oYSTART(YSTART),
    .iDATA(SD_DATA_R),
    .iCLK(VGA_CTRL_CLK),
    .iRST(DLY_RST_2),
    .iDVAL(Read)
		);

CROP_XSTART u11(
        .oDVAL(xsDVAL),
        .oXSTART(XSTART),
        .iDATA(SD_DATA_R),
        .iCLK(VGA_CTRL_CLK),
        .iRST(DLY_RST_2),
        .iDVAL(Read)
		);

CROP_XEND u12(
        .oDVAL(xeDVAL),
        .oXEND(XEND),
        .iDATA(SD_DATA_R),
        .iCLK(VGA_CTRL_CLK),
        .iRST(DLY_RST_2),
        .iDVAL(Read)
		);

CROP_YEND u13(
        .oDVAL(yeDVAL),
        .oYEND(YEND),
        .iDATA(SD_DATA_R),
        .iCLK(VGA_CTRL_CLK),
        .iRST(DLY_RST_2),
        .iDVAL(Read)
		);


//Image Crop
wire cDVAL;
wire [9:0]cDATA;
wire [15:0]cXSTART;
wire [15:0]cXEND;
wire [15:0]cYSTART;
wire [15:0]cYEND;

assign cXSTART=SW[3]?XSTART:0;
assign cXEND  =SW[3]?XEND  :0;
assign cYSTART=SW[3]?YSTART:0;
assign cYEND  =SW[3]?YEND  :0;

IMAGE_CROP u14(
      .oDVAL(cDVAL),
      .oDATA(cDATA),
      .oDarkCounter(DarkCounter),
      .iXSTART(cXSTART),
      .iXEND(cXEND),
      .iYSTART(cYSTART),
      .iYEND(cYEND),
      .iDATA(SD_DATA_R),
      .iCLK(VGA_CTRL_CLK),
      .iRST(DLY_RST_2),
      .iDVAL(Read)
		);

wire [15:0]DarkCounter;
wire [15:0]LightCounter;

reg [31:0]displayDIG;

SEG7_LUT_8 			u7	( .oSEG0(HEX0),
                      .oSEG1(HEX1),
                      .oSEG2(HEX2),
                      .oSEG3(HEX3),
                      .iDIG(displayDIG)
						);

//VGA DISPLAY
wire [9:0]cVGA_R;
wire [9:0]cVGA_G;
wire [9:0]cVGA_B;

assign cVGA_R = SW[4] ? cDATA:SD_DATA_R;
assign cVGA_G = SW[4] ? cDATA:SD_DATA_G;
assign cVGA_B = SW[4] ? cDATA:SD_DATA_B;

wire	[12:0] oH_Cont;
wire	[12:0] oV_Cont;

VGA_Controller		u16	(	//	Host Side
							.oRequest(Read),
							.iRed  (cVGA_R),
							.iGreen(cVGA_G),
							.iBlue (cVGA_B),
							//	VGA Side
							.oVGA_R(oVGA_R),
							.oVGA_G(oVGA_G),
							.oVGA_B(oVGA_B),
							.oVGA_H_SYNC(VGA_HS),
							.oVGA_V_SYNC(VGA_VS),
							.oVGA_SYNC(VGA_SYNC_N),
							.oVGA_BLANK(VGA_BLANK_N),
							//Coordinate
							.oH_Cont(oH_Cont),
							.oV_Cont(oV_Cont),
							//	Control Signal
							.iCLK(VGA_CTRL_CLK),
							.iRST_N(DLY_RST_2),
						);

// always@(negedge KEY[3]) begin
  // if(DarkCounter<50) begin
    // sound_on<=1;
    // displayDIG<=DarkCounter;
  // end
  // else begin
    // sound_on<=0;
    // displayDIG<=DarkCounter;
  // end
// end

wire			            I2C_END;
wire					      AUD_CTRL_CLK;

	
//  TV DECODER ENABLE 
	
assign TD_RESET_N =1'b1;

//  I2C

	I2C_AV_Config 		u17	(	//	Host Side
								 .iCLK		( CLOCK_50),
								 .iRST_N		( KEY[0] ),
								 .o_I2C_END	( I2C_END ),
								   //	I2C Side
								 .I2C_SCLK	( I2C_SCLK ),
								 .I2C_SDAT	( I2C_SDAT )	
								);


//	AUDIO SOUND

	assign	AUD_ADCLRCK	=	AUD_DACLRCK;
	assign	AUD_XCK	   =	AUD_CTRL_CLK;			

//  AUDIO PLL

	VGA_Audio_PLL 	u18	(	
							 .areset ( ~I2C_END ),
							 .inclk0 ( TD_CLK27 ),
							 .c1		( AUD_CTRL_CLK )	
							);

// 2CH Audio Sound output -- Audio Generater //

	adio_codec ad1	(	
	        
					// AUDIO CODEC //
		
					.oAUD_BCK 	( AUD_BCLK ),
					.oAUD_DATA	( AUD_DACDAT ),
					.oAUD_LRCK	( AUD_DACLRCK ),																
					.iCLK_18_4	( AUD_CTRL_CLK ),
			
					// KEY //
		
					.iRST_N	  	( KEY[0] ),							
					.iSrc_Select( 2'b00 ),

					// Sound Control //
					.key1_on		( ~SW[5] ),//CH1 ON / OFF								
					.sound1		( 533 ),					// CH1 Freq
					.instru		( 0 )  					// Instruction Select
					);

endmodule
