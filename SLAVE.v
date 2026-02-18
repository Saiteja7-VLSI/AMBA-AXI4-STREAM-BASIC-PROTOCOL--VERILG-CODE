// AXI STREAM SLAVE 

module slave(
  input clk,rst,
  input [31:0]tdata,
  output  reg tready,
  input reg tvalid,
  output reg full,
  output reg empty
);
  
  reg [31:0]mem[0:31];
  reg [4:0] wr_ptr;

  
  always@(posedge clk)
    begin // reset condition
    if (rst)begin
      wr_ptr <= 5'd0;
      tready <= 1'b0;
      full <= 1'b0;
      empty <= 1'b1;
    end
    
    else begin
      tready <= !full;
    end
    
      if(tvalid && tready)begin
        mem[wr_ptr] <= tdata;
        wr_ptr <= wr_ptr+1;
        empty <= 1'b0;

               
                if (wr_ptr == 5'd31)
                    full <= 1'b1;
      end
    end
endmodule
