`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.10.2024 15:50:17
// Design Name: 
// Module Name: snailsmile01_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module snailsmile01_tb();

    reg a,clk,reset;
    wire y;
    
    snailsmile01 dut (.a(a), .clk(clk), .reset(reset), .y(y));
    
    initial begin
    clk = 0;
    forever #5 clk = ~clk;
    end
    
    initial begin
        a=0;
        reset = 1;
        #5 a=1;
        #10 a=0;
        reset = 0;
        #10 a=1;
        #10 a=1;
        #10 a=0;
        #10 a=0;
        #10 a=0;
        #10 a=1;
        #10 a=0;
        #10 a=1;
        #10 a=1;
        #10 a=1;
        #10 a=0;
        #10 $finish;
    end
    
    
endmodule
