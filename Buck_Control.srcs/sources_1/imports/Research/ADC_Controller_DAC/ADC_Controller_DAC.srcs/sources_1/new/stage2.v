`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/13/2018 10:25:53 AM
// Design Name: 
// Module Name: stage2
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


module stage2(clk, kp, delta_e, integ_e, p_i, prop_e, part_sum);
    input clk;
    input [15:0] delta_e;
    input [31:0] integ_e, p_i;
    input wire signed [31:0] kp;
    output wire [31:0] prop_e, part_sum;
        
    mult_gen_0 mult (
          .CLK(clk),    // input wire CLK
          .A(delta_e),  // input wire [15 : 0] A
          .B(kp),       // input wire [31 : 0] B
          .P(prop_e)    // output wire [31 : 0] P
        );
    
    c_addsub_1 add (
          .A(p_i),      // input wire [31 : 0] A
          .B(integ_e),  // input wire [31 : 0] B
          .CLK(clk),    // input wire CLK
          .S(part_sum)  // output wire [31 : 0] S
        );


endmodule
