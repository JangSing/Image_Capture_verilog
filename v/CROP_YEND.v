module CROP_YEND(
        oYEND,
        iDATA,
        iCLK,
        iRST,
        iDVAL
		);

input       iDVAL;
input       iCLK;
input       iRST;
input       [9:0] iDATA;
output reg [15:0]oYEND;

reg		[15:0]	X_Cont;
reg		[15:0]	Y_Cont;
reg   [15:0]  maxYEND;

always@(posedge iCLK or negedge iRST)
begin
  if(!iRST)begin
    Y_Cont      <= 0;
    X_Cont      <= 0;
    oYEND       <= 0;
    maxYEND     <= 0;
  end
  else begin
    if(iDVAL)begin
      if(Y_Cont<480)begin
        if(X_Cont<640)begin
          if( X_Cont>160 && X_Cont<480 && Y_Cont >120 && Y_Cont <190)begin
            if(iDATA==0)begin
              if(Y_Cont>maxYEND)begin
                maxYEND=Y_Cont; 
              end
              else begin
                maxYEND=maxYEND;
              end
            end
            else begin
              maxYEND=maxYEND;
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
        oYEND=maxYEND;
        X_Cont = 0;
        Y_Cont = 0;
        maxYEND= 0;
      end
    end
  end
end

endmodule