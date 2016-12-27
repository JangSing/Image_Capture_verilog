// --------------------------------------------------------------------
// Copyright (c) 2007 by Terasic Technologies Inc. 
// --------------------------------------------------------------------
//
// Permission:
//
//   Terasic grants permission to use and modify this code for use
//   in synthesis for all Terasic Development Boards and Altera Development 
//   Kits made by Terasic.  Other use of this code, including the selling 
//   ,duplication, or modification of any portion is strictly prohibited.
//
// Disclaimer:
//
//   This VHDL/Verilog or C/C++ source code is intended as a design reference
//   which illustrates how these types of functions can be implemented.
//   It is the user's responsibility to verify their design for
//   consistency and functionality through the use of formal
//   verification methods.  Terasic provides no warranty regarding the use 
//   or functionality of this code.
//
// --------------------------------------------------------------------
//           
//                     Terasic Technologies Inc
//                     356 Fu-Shin E. Rd Sec. 1. JhuBei City,
//                     HsinChu County, Taiwan
//                     302
//
//                     web: http://www.terasic.com/
//                     email: support@terasic.com
//
// --------------------------------------------------------------------
//
// Major Functions:	Reset_Delay
//
// --------------------------------------------------------------------
//
// Revision History :
// --------------------------------------------------------------------
//   Ver  :| Author            :| Mod. Date :| Changes Made:
//   V1.0 :| Johnny FAN        :| 07/07/09  :| Initial Revision
// --------------------------------------------------------------------

module	Clock_Delay(iCLK,iRST,oCLK_0,oCLK_1,oCLK_2,oCLK_3,oCLK_4);
input		iCLK;
input		iRST;
output reg	oCLK_0;
output reg	oCLK_1;
output reg	oCLK_2;
output reg	oCLK_3;
output reg	oCLK_4;

reg	[31:0]	Cont;

always@(posedge iCLK or negedge iRST)
begin
  if(!iRST)
  begin
    Cont    <=  0;
    oCLK_0  <=  0;
    oCLK_1  <=  0;
    oCLK_2  <=  0;
    oCLK_3  <=  0;
    oCLK_4  <=  0;
  end
  else
  begin
    if(Cont<32'h017d7840) begin //25000000
      Cont	<=	Cont+1;
    end  
    else begin 
      oCLK_0=~oCLK_0;
      Cont=0;
    end
  end
end

endmodule