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

module stage1(clk, ki, error, p_error, delta_e, integ_e);
    
    input clk;
    input [15:0] error, p_error;
    input wire signed [31:0] ki;
    output wire [15:0] delta_e;
    output wire [31:0] integ_e;
          
    c_addsub_0 sub (
      .A(error),      // input wire [16 : 0] A
      .B(p_error),    // input wire [16 : 0] B
      .CLK(clk),      // input wire CLK
      .S(delta_e)     // output wire [16 : 0] S
    );
    
    mult_gen_0 mult (
      .CLK(clk),      // input wire CLK
      .A(error),      // input wire [15 : 0] A
      .B(ki),         // input wire [31 : 0] B
      .P(integ_e)     // output wire [47 : 0] P
    );
    
endmodule
