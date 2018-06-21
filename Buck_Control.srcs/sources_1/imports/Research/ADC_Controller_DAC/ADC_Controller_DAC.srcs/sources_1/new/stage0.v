`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/14/2018 05:42:33 PM
// Design Name: 
// Module Name: stage0
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


module stage0(clk, ADC_val, ADC_ref, ADC_error);
    input clk;
    input [15:0] ADC_val, ADC_ref;
    output wire [15:0] ADC_error;
    
    c_addsub_2 add (
      .A(ADC_ref),      // input wire [15 : 0] A
      .B(ADC_val),      // input wire [15 : 0] B
      .CLK(clk),  // input wire CLK
      .S(ADC_error)      // output wire [15 : 0] S
    );
    
endmodule
