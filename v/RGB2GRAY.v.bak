module RGB2GRAY(
        oDVAL,
        oDATA,
        oFlag,
        iRed,
        iGreen,
        iBlue,
        iCLK,
        iRST,
        iDVAL,
		);
input			iDVAL;
input			iCLK;
input			iRST;
output reg[9:0]	oDATA;
output reg		oDVAL;
output oFlag;

input		[9:0]	iRed;
input		[9:0]	iGreen;
input		[9:0]	iBlue;

reg [20:0] counter;
reg tempFlag;

assign oFlag = tempFlag;

always@(posedge iCLK or negedge iRST)
begin
	if(!iRST)
		begin
			oDVAL   <= 0;
			oDATA   <= 10'b0;
			counter <= 0;
			tempFlag   <= 0;
		end
	else
   begin
      oDVAL <= iDVAL;
      if(counter < 307199)begin
         if(iDVAL)begin
				oDATA   = (iRed+iGreen+iBlue)/3;
				counter = counter + 1;
				tempFlag   = 0;
         end
      end
		else begin
			counter = 0;
			tempFlag = 1;
		end

   end
end
endmodule