// 10-bit Up Counter with Clock and Reset
module counter (
    input wire clk,
    input wire reset,
    output reg [9:0] count
);
    
    always @(posedge clk or posedge reset) begin
        if (reset)
            count <= 10'b0000000000;
        else
            count <= count + 1;
    end
endmodule