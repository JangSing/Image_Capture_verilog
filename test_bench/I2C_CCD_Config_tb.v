

module I2C_CCD_Config_tb();
  reg   iCLK;
  reg   iRST_N;
  reg   iZOOM_MODE_SW;
  reg   iEXPOSURE_ADJ;
  reg   iEXPOSURE_DEC_p;	
  wire   I2C_SDAT;
  wire  I2C_SCLK;
/*
  

  initial
   begin
    iCLK <= 0;
    forever #1 iCLK=~iCLK;
   end

  initial
   begin
    iRST_N <= 0;
    @(posedge iCLK);
    @(negedge iCLK) iRST_N=1;
   end
   */
  initial 
    begin

    end

                                      
  I2C_CCD_Config I2C_CCD_Config_test( iCLK,
                                      iRST_N,
                                      iZOOM_MODE_SW,
                                      iEXPOSURE_ADJ,
                                      iEXPOSURE_DEC_p,
                                      I2C_SCLK,
                                      I2C_SDAT
                                      );

endmodule