module CROP_XSTART(
        oDVAL,
        oXSTART,
        iDATA,
        iCLK,
        iRST,
        iDVAL
		);

input       iDVAL;
input       iCLK;
input       iRST;
input       [9:0] iDATA;
output reg	oDVAL;
output reg [15:0]oXSTART;

reg		[15:0]	X_Cont;
reg		[15:0]	Y_Cont;
reg   [15:0]  minXSTART;
reg   rowFirstVal;

always@(posedge iCLK or negedge iRST)
begin
  if(!iRST)begin
    Y_Cont      <= 0;
    X_Cont      <= 0;
    oDVAL       <= 0;
    oXSTART     <= 0;
    minXSTART   <= 16'd540;
    rowFirstVal <= 1;
  end
  else begin
    oDVAL <= iDVAL;
    if(iDVAL)begin
      if(Y_Cont<480)begin
        if(X_Cont<640)begin
          if( X_Cont>160 && X_Cont<480 && Y_Cont >120 && Y_Cont <190)begin
            if(iDATA==0 && rowFirstVal)begin
              if(X_Cont<minXSTART)begin
                minXSTART=X_Cont; 
              end
              else begin
                minXSTART=minXSTART;
              end
              rowFirstVal=0;
            end
            else begin
              minXSTART=minXSTART;
            end
          end
          X_Cont = X_Cont + 1;
        end
        if(X_Cont == 640) begin
          X_Cont = 0;
          Y_Cont = Y_Cont + 1;
          rowFirstVal=1;
        end
      end
      if(Y_Cont == 480) begin
        oXSTART=minXSTART;
        X_Cont = 0;
        Y_Cont = 0;
        minXSTART=16'd540;
      end
    end
  end
end

endmodule