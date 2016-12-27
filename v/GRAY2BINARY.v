module GRAY2BINARY(
        oDVAL,
        oDATA,
        iDATA,
        iCLK,
        iRST,
        iDVAL,
		);
input       iDVAL;
input       iCLK;
input       iRST;
input       [11:0] iDATA;
output reg  [11:0] oDATA;
output reg	oDVAL;

parameter threshold = 12'd2547;//increase to get more dark; home =>947

always@(posedge iCLK or negedge iRST)
begin
  if(!iRST)
    begin
      oDVAL   <= 0;
      oDATA   <= 0;
    end
  else
    begin
      oDVAL <= iDVAL;
      if(iDATA > threshold) begin 
        oDATA <= 12'd4095;
      end
      else begin
        oDATA <= 0;
      end
      
    end
end
endmodule