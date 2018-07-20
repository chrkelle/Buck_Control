`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/18/2018 11:01:53 AM
// Design Name: 
// Module Name: boost_ACD
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


module boost_ACD(clk, reset, hi_muxsel, start, step_up, ctrl_start, dco_p, dco_n, 
           da_p, da_n, db_p, db_n, aclk_p, aclk_n, cnv_p, cnv_n, 
           tp, tl, dacclk, ctrl_2_dac, done);
    
    //system inputs
    input wire clk, reset, start, step_up, ctrl_start;
    //adc inputs
    input wire dco_p, dco_n, da_p, da_n, db_p, db_n;
    reg cold_start, cold_start_p;
    //controller inputs
    reg [15:0] adc_2_ctrl;
    //dac inputs
    
    //system outputs
    output wire hi_muxsel, done;
    //adc outputs
    output wire aclk_p, aclk_n, cnv_p, cnv_n, tp, tl;
    output reg [9:0] ctrl_2_dac;
    //controller outputs
    wire [31:0] i_out;
    wire control_done;
    //dac outputs
    output wire dacclk;
   
    //system wires 
    wire sys_clk;
    reg  [15:0] ADC_data;
    //adc wires
    wire da, db, dco, aclk, start_adc;
    wire adc_done;
    wire [15:0] ADC_out;
    //dac wires
    wire dac_done;
    
    assign hi_muxsel = 0;
    assign done = dac_done;
    assign start_adc = (start & ~cold_start_p) || ctrl_start;
    assign cnv_n = 0;
    
    //buffers
    
    IBUFDS #(.DIFF_TERM("FALSE"), .IBUF_LOW_PWR("FALSE"), .IOSTANDARD("LVDS_25")) // Specify the input I/O standard)
    IBUFDS_inst1(.O(da), .I(da_p), .IB(da_n));
            
    IBUFDS #(.DIFF_TERM("FALSE"), .IBUF_LOW_PWR("FALSE"), .IOSTANDARD("LVDS_25")) // Specify the input I/O standard)
    IBUFDS_inst3(.O(db), .I(db_p), .IB(db_n));
        
    IBUFDS #(.DIFF_TERM("FALSE"), .IBUF_LOW_PWR("FALSE"), .IOSTANDARD("LVDS_25")) // Specify the input I/O standard)
    IBUFDS_inst4(.O(dco), .I(dco_p), .IB(dco_n));
       
    OBUFDS #(.IOSTANDARD("LVDS_25"))   // Low power="TRUE", Highest performance="FALSE"
    OBUFDS_inst0(.O(aclk_p), .OB(aclk_n), .I(aclk));
    
    //module instantiation        
    ADC adc(.clk(clk), .reset(reset), .dco(dco), .da(da),. db(db), .start(start_adc),
         .aclk(aclk), .cnv(cnv_p), .tp(tp), .tl(tl), .data(ADC_out), .adc_done(adc_done));
         
    boost_controller control(.clk(clk), .reset(reset), .step_up(step_up),.ADC_done(adc_done), .ADC_in(adc_2_ctrl), .i(i_out),
                 .control_done(control_done));
         
    DAC dac(.clk(clk), .start(control_done), .reset(reset), .dacclk(dacclk), .dac_done(dac_done));
    
    always @(posedge clk) begin
        if(reset) begin
            adc_2_ctrl <= 0;
        end
        else if(adc_done) begin
            adc_2_ctrl <= ADC_out[15:0];
        end
    end
    
    
    always @(posedge clk) begin
        if(reset) begin
            ctrl_2_dac <= 0;
        end
        //else if(start & ~step_up) begin
        //    ctrl_2_dac <= 10'b1011000000;  
        //end
        else if(control_done) begin
            ctrl_2_dac <= {1'b1,i_out [18:10]};
        end
        
    end
    
    always @(posedge clk) begin
        if(reset) begin
            cold_start <= 0;
        end
        else if(~cold_start) 
            cold_start <= start;
        
    end
    
    always @(posedge clk) begin
        if(reset) begin
            cold_start_p <= 0;
        end
        else if(~cold_start_p) 
            cold_start_p <= cold_start;
        
    end
endmodule
