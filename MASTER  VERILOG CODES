//AXI STREAM - MASTER
module master(
  input clk,
  input rst,
  input tready,
  output reg [31:0] tdata,
  output reg tvalid,
  output wire  tlast);
  
  assign tlast = 1'b0;  //continious data transfer
  
  always@(posedge clk)begin
    if(!rst)begin 
      tvalid <= 1'b0;
      tdata <= 32'd0;
      end 
    else if (rst)begin
      
    tvalid <= 1'b1;
   
      if(tready && tvalid)begin
        tdata <= tdata+32'd4;
        end else
        tdata <= tdata+32'b0;
      end
    
  end
    endmodule

