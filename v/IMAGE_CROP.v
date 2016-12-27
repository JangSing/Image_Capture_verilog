module IMAGE_CROP(
        oDVAL,
        oDATA,
        oDarkCounter,
        oLightCounter,
        iXSTART,
        iXEND,
        iYSTART,
        iYEND,
        iDATA,
        iCLK,
        iRST,
        iDVAL
		);
		
input    iDVAL;
input    iCLK;
input    iRST;
input    [9:0] iDATA;
input    [15:0]	 iXSTART;
input    [15:0]	 iXEND;
input    [15:0]	 iYSTART;
input    [15:0]	 iYEND;
output reg  [9:0] oDATA;
output reg	oDVAL;
output reg   [15:0] oDarkCounter;
output reg   [15:0] oLightCounter;


reg		[15:0]	X_Cont;
reg		[15:0]	Y_Cont;
reg		[15:0]	DarkCounterTemp;

always@(posedge iCLK or negedge iRST)
begin
  if(!iRST)begin
    Y_Cont <= 0;
    X_Cont <= 0;
    oDVAL  <= 0;
    oDATA  <= 0;
    oDarkCounter <=0;
    oLightCounter <=0;
    DarkCounterTemp <=0;
  end
  else begin 
    oDVAL <= iDVAL;
    if(iDVAL)begin 
      if(Y_Cont<480)begin 
        if(X_Cont<640)begin
          if( X_Cont<160     || X_Cont>480   || 
              Y_Cont<120      || Y_Cont>190   ||
              Y_Cont<iYSTART || Y_Cont>iYEND ||
              X_Cont<iXSTART || X_Cont>iXEND )begin
            oDATA = 0;
          end
          else begin
            oDATA = iDATA;
            if(oDATA!=0) begin
              oLightCounter=oLightCounter+1;
            end
            else begin
              DarkCounterTemp=DarkCounterTemp+1;
              oDarkCounter=DarkCounterTemp;
            end
          end
          X_Cont = X_Cont + 1;	
        end
        if(X_Cont == 640) begin
          X_Cont = 0;    
          Y_Cont = Y_Cont + 1;
        end
      end
      if(Y_Cont == 480) begin 
        DarkCounterTemp  =0;
        oLightCounter =0;
        X_Cont = 0;
        Y_Cont = 0;
      end
    end
  end
end

endmodule