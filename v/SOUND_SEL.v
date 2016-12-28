module SOUND_SEL(
  oSound_on,
  oDisplayDIG,
  iCLK,
  iRST,
  iDarkCounter
);

input iCLK;
input [15:0]iDarkCounter;
input iRST;
output reg oSound_on;
output reg [31:0]oDisplayDIG;

reg [2:0]delay;

always@(posedge iCLK or negedge iRST) begin
  if(!iRST)begin
    oSound_on<=0;
    oDisplayDIG<=0;
    delay<=0;
  end 
  else begin 
    oDisplayDIG<=iDarkCounter;
    if(iDarkCounter<16'h0600 || iDarkCounter>16'h4000) begin
      delay<=delay+1;
      if(delay>1) begin
        oSound_on<=1;
      end
      else begin 
        oSound_on<=0;
      end
    end
    else begin
      delay<=0;
      oSound_on<=0;
    end
  end
  
  
  
end

endmodule
