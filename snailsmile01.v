`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.10.2024 15:42:21
// Design Name: 
// Module Name: snailsmile01
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

module snailsmile01(
    input a, clk, reset,
    output y
);
    reg [1:0] state, nextstate;
    parameter s0 = 2'b00;
    parameter s1 = 2'b01;
    parameter s2 = 2'b10;
    
    always @(posedge clk or posedge reset) begin
        if (reset)
            state <= s0;
        else
            state <= nextstate;
    end
    always@* begin
        case(state)
            s0: if(a) nextstate = s0; else nextstate = s1;
            s1: if(a) nextstate = s2; else nextstate = s1;
            s2: if(a) nextstate = s0; else nextstate = s1;
            default: nextstate = s0;
        endcase
    end
    assign y = (state == s2);
endmodule


