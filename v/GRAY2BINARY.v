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
input       [9:0] iDATA;
output reg  [9:0] oDATA;
output reg	oDVAL;

parameter threshold = 10'd500;//d278;

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
          oDATA <= 10'd1023;
        end
        else begin
          oDATA <= 0;
        end
    end
end
endmodule