module RGB2GRAY(
        oDVAL,
        oDATA,
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
output reg[11:0]	oDATA;
output reg		oDVAL;

input		[11:0]	iRed;
input		[11:0]	iGreen;
input		[11:0]	iBlue;

reg [20:0] counter;


always@(posedge iCLK or negedge iRST)
begin
	if(!iRST)
		begin
			oDVAL   <= 0;
			oDATA   <= 10'b0;
			counter <= 0;
		end
	else
   begin
      oDVAL <= iDVAL;
      if(counter < 307199)begin
				oDATA   = (iRed+iGreen+iBlue)/3;
				counter = counter + 1;
      end
		else begin
			counter = 0;
		end

   end
end
endmodule