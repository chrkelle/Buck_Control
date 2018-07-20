`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/18/2018 10:26:59 AM
// Design Name: 
// Module Name: sync_dout
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


module sync_dout(input wire clk,
                 input wire sync_in_dout,
                 output reg sync_out_doutp2);
      
    (* ASYNC_REG="TRUE", SHIFT_EXTRACT="NO", HBLKNM="sync_reg" *) reg [1:0] sreg_dout;
    
    always @(posedge clk) begin
        sync_out_doutp2     <=  sreg_dout[1];
        sreg_dout           <=  {sreg_dout[0], sync_in_dout}; 
    end   
    
endmodule
