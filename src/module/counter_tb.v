
// Testbench for the Counter
module tb_counter;
    reg clk;
    reg reset;
    wire [9:0] count;
    
    counter uut (
        .clk(clk),
        .reset(reset),
        .count(count)
    );
    
    // Clock Generation
    always #5 clk = ~clk; // 10-time unit clock period
    
    initial begin
        // Initialize signals
        clk = 0;
        reset = 1;
        #10; // Hold reset high for a few clock cycles
        reset = 0;
        
        // Run the simulation for some time
        #100;
        
        // Apply reset again
        reset = 1;
        #10;
        reset = 0;
        
        #50;
        
        // End simulation
        $finish;
    end
    
    // Monitor output
    initial begin
        $monitor("Time = %0t, Reset = %b, Count = %b", $time, reset, count);
    end
endmodule