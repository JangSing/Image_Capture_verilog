module DARK_COUNT(
        oDVAL,
        oDarkCounter,
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
output reg	oDVAL;
output reg   [15:0] oDarkCounter;

reg		[15:0]	X_Cont;
reg		[15:0]	Y_Cont;


always@(posedge iCLK or negedge iRST)
begin
  if(!iRST)begin
    Y_Cont <= 0;
    X_Cont <= 0;
    oDVAL  <= 0;
    oDarkCounter <=0;
  end
  else begin
    oDVAL <= iDVAL;
    if(iDVAL)begin
      if(Y_Cont<480)begin
        if(X_Cont<640)begin
          if( X_Cont>160 && X_Cont<480 && Y_Cont >50 && Y_Cont <240 &&
              Y_Cont>iYSTART && Y_Cont<iYEND &&
              X_Cont>iXSTART && X_Cont<iXEND )begin
              if(iDATA==0)
                oDarkCounter=oDarkCounter+1;
              else
                oDarkCounter=oDarkCounter;
          end
          else begin
            oDarkCounter = oDarkCounter;
          end
          X_Cont = X_Cont + 1;
        end
        if(X_Cont == 640) begin
          X_Cont = 0;
          Y_Cont = Y_Cont + 1;
        end
      end
      if(Y_Cont == 480) begin
        oDarkCounter =0;
        X_Cont = 0;
        Y_Cont = 0;
      end
    end
  end
end

endmodule