`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/18/2018 09:27:12 AM
// Design Name: 
// Module Name: boost
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


module boost(sys_clk_p, sys_clk_n, reset_in, startup_in, step_up_in, dacclk, ctrl_2_dac,
hi_muxsel, comp_edge, sat_flg, sw_on, FF_preset_bar, FF_clear_bar, exp_flg_bar,
dco_p, dco_n, da_p, da_n, db_p, db_n,
aclk_p, aclk_n, cnv_p, cnv_n, tp, tl,
ctrl_ready_flg, clk, step_up);

    input wire sys_clk_p, sys_clk_n;
    input wire reset_in, startup_in, step_up_in;
    input wire comp_edge; 
    input wire sat_flg; 
    input wire dco_p, dco_n;
    input wire da_p,da_n;
    input wire db_p,db_n;
    
    
    output wire dacclk;
    output wire hi_muxsel;
    output wire [9:0] ctrl_2_dac;
    
    output wire aclk_p, aclk_n;
    output wire cnv_p, cnv_n, tp, tl;
     
    output wire sw_on;
    output wire FF_preset_bar;       
    output wire FF_clear_bar;
    output wire exp_flg_bar;
    
    output wire clk;
    output wire ctrl_ready_flg;
    output wire step_up;
//    output wire [9:0] counter;
//    output wire [9:0] state;
//    output wire cntr_load;

//*************************
    
    wire ctrl_start;
    wire clk_in;
    wire reset, startup;
    wire dout;
    
    assign hi_muxsel = 0;
    
    IBUFDS #(.DIFF_TERM("FALSE"), .IBUF_LOW_PWR("FALSE"), .IOSTANDARD("LVDS_25")) 
    IBUFDS_inst0 (.O(clk_in), .I(sys_clk_p), .IB(sys_clk_n));
    
    clk_wiz_0 inst0(.clk_out1(clk), .clk_in1(clk_in));                      
    
        
    debounce   debounce_inst1(.clk(clk), .PB(~startup_in), .PB_state(startup));
    debounce   debounce_inst2(.clk(clk), .PB(~reset_in), .PB_state(reset));
    debounce   debounce_inst3(.clk(clk), .PB(~step_up_in), .PB_state(step_up));
    sync_dout  sync_inst0(.clk(clk), .sync_in_dout(comp_edge), .sync_out_doutp2(dout));
    
    
    boost_cpu cpu_inst (.clk(clk),.rst(reset),
                    .startup(startup),
                    .comp_edge(dout),
                    .sat_flg(sat_flg),
                    .ctrl_ready_flg(ctrl_ready_flg),
                    .sw_on(sw_on),
                    .ctrl_start(ctrl_start),
                    .FF_preset_bar(FF_preset_bar),
                    .FF_clear_bar(FF_clear_bar),   
                    .exp_flg_bar(exp_flg_bar)
//                    .counter(counter),
//                    .cntr_load(cntr_load),
//                    .state(state)
                    );

    boost_ACD acd_inst(.clk(clk), .reset(reset), .start(startup), .step_up(step_up), .ctrl_start(ctrl_start), .dco_p(dco_p), .dco_n(dco_n)
    ,.da_p(da_p), .da_n(da_n), .db_p(db_p), .db_n(db_n),.aclk_p(aclk_p), .aclk_n(aclk_n), 
    .cnv_p(cnv_p), .cnv_n(cnv_n), .tp(tp), .tl(tl), .ctrl_2_dac(ctrl_2_dac), .dacclk(dacclk), 
    .done(ctrl_ready_flg));   
    

    
endmodule
