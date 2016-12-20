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
reg   [15:0]  prevXSTART;
reg   [15:0]  currXSTART;
reg   [15:0]  minXSTART;
reg   [15:0]  currMin;
reg   [15:0]  prevMin;
reg  firstVal;
reg  rowFirstVal;

always@(posedge iCLK or negedge iRST)
begin
  if(!iRST)begin
    Y_Cont      <= 0;
    X_Cont      <= 0;
    oDVAL       <= 0;
    oXSTART     <= 0;
    prevXSTART  <= 16'd540;
    currXSTART  <= 0;
    minXSTART   <= 0;
    currMin     <= 0;
    prevMin     <= 16'd540;
    firstVal    <= 1;
    rowFirstVal <= 1;
  end
  else begin
    oDVAL <= iDVAL;
    if(iDVAL)begin
      if(Y_Cont<480)begin
        if(X_Cont<640)begin
          if( X_Cont>160 && X_Cont<480 && Y_Cont >10 && Y_Cont <470)begin
            if(iDATA==0 && rowFirstVal)begin
              currXSTART=X_Cont;
              if(currXSTART<prevXSTART)begin
                minXSTART=currXSTART; 
                prevXSTART=currXSTART;
              end
              else begin
                minXSTART=minXSTART;
                prevXSTART=prevXSTART;
              end
              rowFirstVal=0;
            end
            else begin
              currXSTART=currXSTART;
              minXSTART=minXSTART;
            end
          end
          X_Cont = X_Cont + 1;
        end
        if(X_Cont == 640) begin
          // currMin=minXSTART;
          // if(currMin<prevMin)begin
            // minXSTART=currMin; 
            // prevMin=currMin;
          // end
          // else begin
            minXSTART=prevMin;
          // end
          X_Cont = 0;
          Y_Cont = Y_Cont + 1;
          rowFirstVal=1;
        end
      end
      if(Y_Cont == 480) begin
        oXSTART=minXSTART;
        X_Cont = 0;
        Y_Cont = 0;
      end
    end
  end
end

// always@(minXSTART)
// begin
  


// end


endmodule