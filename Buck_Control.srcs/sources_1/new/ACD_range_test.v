`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/21/2018 11:28:52 AM
// Design Name: 
// Module Name: ADC_Control_DAC_range_test
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


module ACD_range_test(sys_clk_p, sys_clk_n, reset_in, hi_muxsel, start_in,
                       step_up_in, dco_p, dco_n, da_p, da_n, db_p, db_n,
                       aclk_p, aclk_n, cnv_p, cnv_n, tp, tl, 
                       dacclk, ctrl_2_dac, clk);
    
    //system inputs
    input wire sys_clk_p, sys_clk_n, reset_in, start_in, step_up_in;
    //adc inputs
    input wire dco_p, dco_n, da_p, da_n, db_p, db_n;
    reg cold_start, cold_start_p;
    //controller inputs
    //dac inputs
    
    //system outputs
    output wire hi_muxsel, clk;
    //adc outputs
    output wire aclk_p, aclk_n, cnv_p, cnv_n, tp, tl;
    output wire [9:0] ctrl_2_dac;
    //controller outputs
    //dac outputs
    output wire dacclk;
   
    //system wires 
    wire sys_clk, done;
    wire reset, start, step_up;
    
    //buffers
    IBUFDS #(.DIFF_TERM("FALSE"), .IBUF_LOW_PWR("FALSE"),.IOSTANDARD("LVDS_25"))
    IBUFDS_inst0(.O(sys_clk), .I(sys_clk_p), .IB(sys_clk_n));

    clk_wiz_0 clk_wiz(.clk_out1(clk), .clk_in1(sys_clk));
        
    debounce  debunce0(.clk(clk), .PB(~reset_in), .PB_state(reset));
    debounce  debunce1(.clk(clk), .PB(~start_in), .PB_state(start));
    debounce  debunce2(.clk(clk), .PB(~step_up_in), .PB_state(step_up));

    
    //module instantiation        
    ACD acd(.clk(clk), .reset(reset), .hi_muxsel(hi_muxsel), .start(start), 
            .step_up(step_up), .dco_p(dco_p), .dco_n(dco_n), .da_p(da_p), 
            .da_n(da_n), .db_p(db_p), .db_n(db_n), .aclk_p(aclk_p), 
            .aclk_n(aclk_n), .cnv_p(cnv_p), .cnv_n(cnv_n),  .tp(tp), 
            .tl(tl), .dacclk(dacclk), .ctrl_2_dac(ctrl_2_dac), .done(done));

endmodule

