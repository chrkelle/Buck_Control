`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/13/2018 10:24:05 AM
// Design Name: 
// Module Name: stage3
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


module stage3(clk, prop_e, part_sum, i);
    input clk;
    input [31:0] prop_e, part_sum;
    output wire [31:0] i;
    
    c_addsub_1 add (
              .A(prop_e),       // input wire [31 : 0] A
              .B(part_sum),     // input wire [31 : 0] B
              .CLK(clk),        // input wire CLK
              .S(i)             // output wire [31 : 0] S
            );
endmodule
