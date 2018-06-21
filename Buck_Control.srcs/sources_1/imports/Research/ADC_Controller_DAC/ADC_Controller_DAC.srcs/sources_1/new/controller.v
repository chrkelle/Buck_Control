`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/13/2018 09:38:36 AM
// Design Name: 
// Module Name: main
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


module controller(clk, reset, ADC_done, ADC_in, i, control_done);

    //inputs
    input wire clk, reset;
    input wire ADC_done;
    input wire signed [15:0] ADC_in;
    output reg signed [31:0] i;
    output reg control_done;
        
    //internal wires
    wire sys_clk;
    wire signed [31:0] i_max = 511000;
    wire signed [31:0] i_min = 10240;
    
    //state machine
    reg [2:0] state, n_state;
    reg [7:0] count, n_count;
    reg pipe_clk;
    reg n_pipe_clk;
    reg [1:0] clk_count, n_clk_count;
        
    //pipeline write enable
    reg wr_i_en;
    
    //s3 inputs/s2s3 pipeline reg
    reg signed [31:0] s2s3_prop_e, s2s3_part_sum;
    reg s2s3_wr_i_en;
    //s3 outputs
    wire signed [31:0] s3_i;

    //s2 inputs/s1s2 pipeline reg
    reg signed [15:0] s1s2_delta_e, s1s2_p_error;
    reg signed [31:0] s1s2_integ_e;
    reg s1s2_wr_i_en;
    wire signed [31:0] p_i;
    assign p_i = i;
    //s2 outputs
    wire signed [31:0] s2_prop_e, s2_part_sum;

    //s1 inputs/s0s1 pipeline reg
    reg signed [15:0] s0s1_error, s0s1_p_error;
    reg s0s1_wr_i_en;
    
    //s1 outputs
    wire signed [15:0] s1_delta_e;
    wire signed [31:0] s1_integ_e;
    
    //s0 inputs/s0s
    reg signed [15:0] ADC;
    wire signed [15:0] ADC_error;
    wire signed [15:0] ADC_ref;
    assign ADC_ref = 230; //(1.8V)
    //output reg signed [31:0] p_error;
    
    //s0 outputs    
    stage0 s0(.clk(clk), .ADC_val(ADC), .ADC_ref(ADC_ref), .ADC_error(ADC_error));
    stage1 s1(.clk(clk), .error(s0s1_error), .p_error(s1s2_p_error), .delta_e(s1_delta_e), .integ_e(s1_integ_e));
    stage2 s2(.clk(clk), .delta_e(s1s2_delta_e), .integ_e(s1s2_integ_e), .p_i(p_i), .prop_e(s2_prop_e), .part_sum(s2_part_sum));
    stage3 s3(.clk(clk), .prop_e(s2s3_prop_e), .part_sum(s2s3_part_sum), .i(s3_i));  
    
      
    //**************************************************Start_pipeline*************************************************************
    
    ///////////////////////////////
    //Stage 0/1 pipeline register// //adding this pipeline register to fix the issue where ADC arrives just before pos edge of clock
    ///////////////////////////////
    always @(posedge pipe_clk, posedge reset) begin
        if(reset) begin
            s0s1_error   <= 0;
            s0s1_p_error <= 0;
            s0s1_wr_i_en <= 0;
        end
        else begin
            s0s1_error   <= ADC_error;
            s0s1_p_error <= s0s1_error; //actual p_error will come from s1s2_p_error for timing purposes.
            s0s1_wr_i_en <= wr_i_en;  
        end         
    end
    

    ///////////////////////////////
    //Stage 1/2 pipeline register//
    ///////////////////////////////
    always @(posedge pipe_clk, posedge reset) begin
        if(reset) begin
            s1s2_delta_e <= 0;
            s1s2_integ_e <= 0;
            s1s2_wr_i_en <= 0;
            s1s2_p_error <= 0;
        end
        else begin
            s1s2_delta_e <= s1_delta_e;
            s1s2_integ_e <= s1_integ_e;
            s1s2_wr_i_en <= s0s1_wr_i_en;
            s1s2_p_error <= s0s1_p_error;
        end
    end
    
    ///////////////////////////////
    //Stage 2/3 pipeline register//
    ///////////////////////////////
    always @(posedge pipe_clk, posedge reset) begin
        if(reset) begin
            s2s3_prop_e     <= 0;
            s2s3_part_sum   <= 0;
            s2s3_wr_i_en    <= 0;
        end
        else begin
            s2s3_prop_e     <= s2_prop_e;
            s2s3_part_sum   <= s2_part_sum;
            s2s3_wr_i_en    <= s1s2_wr_i_en;
        end  
    end
    
    /////////////////////////////////
    //Stage 3/END pipeline register//
    /////////////////////////////////
    always @(posedge pipe_clk, posedge reset) begin
        if(reset) begin
            i <= 0;
            control_done <= 0;
        end
        else begin
            control_done <= s2s3_wr_i_en;
            if(s2s3_wr_i_en) begin
                if(s3_i < i_min) begin
                    i <= i_min;
                end
                else if(s3_i> i_max) begin
                    i <= i_max;
                end
                else begin
                    i <= s3_i;
                end
            end 
        end
    end
    
    //******************************************************End_pipeline*************************************************************
    
    //Hold write enable until pipeline starts
    always @(posedge clk, posedge reset) begin
        if(reset) begin
            wr_i_en <= 0;
            ADC     <= 0;
        end
        else if(wr_i_en & s0s1_wr_i_en)begin
            wr_i_en <= 0;
        end
        else if(ADC_done) begin
            wr_i_en <= 1;
            ADC     <= {6'b111111, ADC_in[15:6]};
        end
    end
    
    //Combinational block for state machine
    always@* begin
        n_state = state;
        n_count = count + 1;
        n_pipe_clk = pipe_clk;
        n_clk_count = clk_count + 1;
        
        case(state)
            0:  begin   //wait for ADC signal
                    if(ADC_done) begin
                        n_state = 1;
                        n_count = 0;
                    end
                end
            1:  begin   //create setup time for s0s1 FF
                    if(count >= 3) begin
                        n_state = 2;
                        n_count = 0;
                        n_pipe_clk = 1;
                        n_clk_count = 0;
                    end
                end
            2:  begin
                    if(count >= 28) begin   //create 4 pipeline clock pulses 
                        n_state = 0;
                    end
                    if(clk_count[1:0] == 2'b10) begin
                        n_clk_count = 0;
                        n_pipe_clk = ~pipe_clk;
                    end
                end
   
        endcase
    end
    
    //Sequential block for state machine
    always @(posedge clk, posedge reset) begin
        if(reset) begin
            state <= 0;
            count <= 0;
            pipe_clk <= 0;
            clk_count <= 0;
        end
        else begin
            state <= n_state;
            count <= n_count;
            pipe_clk <= n_pipe_clk;
            clk_count <= n_clk_count;
        end
    end
endmodule
