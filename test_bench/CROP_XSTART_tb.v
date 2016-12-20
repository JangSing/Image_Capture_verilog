module CROP_XSTART_tb();	
					
					
reg   iDVAL;
reg   iCLK;
reg   iRST;
reg   [9:0] iDATA;
wire  oDVAL;
wire  [15:0]oXSTART;

integer i=0,j=0,k=0,count=0,errors=0;

  initial
   begin
    iCLK <= 0;
    forever #1 iCLK=~iCLK;
   end

  initial
   begin
    iRST <= 0;
    @(posedge iCLK);
    @(negedge iCLK) iRST=1;
   end
   
  task RunContinueously();
   begin 
   for(i=0;i<(480*640);i=i+1)
    begin
      @(negedge iCLK) $display("valueY=%d,valueX=%d,data=%d",oY_Cont,oX_Cont,oDVAL);
    end
   
   end
  endtask
  
  initial 
    begin

      $finish;
    end
  


CROP_XSTART CROP_XSTART_test(
        oDVAL,
        oXSTART,
        iDATA,
        iCLK,
        iRST,
        iDVAL
		);

 


endmodule