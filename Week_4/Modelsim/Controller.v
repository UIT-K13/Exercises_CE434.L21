`timescale 1ns / 1ps

module Controller
#(
    parameter IMAGE_HEIGHT = 5,
    parameter IMAGE_WIDTH = 5,
    parameter TOTAL_NUMBER_CONVERT = IMAGE_HEIGHT * IMAGE_WIDTH,
    parameter DATA_COLOR_WIDTH = 8,
    parameter DATA_IN_WIDTH = DATA_COLOR_WIDTH * 3,
    parameter FIXED_POINT_WIDTH = 32,
    parameter ADRR_WIDTH_BRAM = 6
)
(
    input en, reset_n, clk,
    input [FIXED_POINT_WIDTH - 1 : 0] scale_red, scale_green, scale_blue,
    
    output reg [DATA_IN_WIDTH - 1 : 0] in0_bram_read, in1_bram_read,
    output reg [ADRR_WIDTH_BRAM - 1 : 0] addr0_bram_read, addr1_bram_read,
    output reg valid_in,
    output reg enb_bram_read,  
    output reg we_b_bram_read,
    
    output reg [DATA_COLOR_WIDTH - 1 : 0] in1_bram_write,
    output reg [ADRR_WIDTH_BRAM - 1 : 0] addr0_bram_write, addr1_bram_write,
    output reg enb_bram_write,
    output reg we_b_bram_write,
    
    output reg [FIXED_POINT_WIDTH - 1 : 0] scale_red_data_path, scale_green_data_path, scale_blue_data_path
);
    reg [ADRR_WIDTH_BRAM - 1 : 0] addr0_bram_write_temp_0, addr0_bram_write_temp_1;
    integer count_step;
    
    always @(posedge clk or negedge reset_n) begin
        if(!reset_n) begin
            count_step <= 0;
        
            in0_bram_read <= 0;
            in1_bram_read <= 0;
            addr0_bram_read <= 0;
            addr1_bram_read <= 0;
            valid_in <= 1;
            enb_bram_read <= 0;
            we_b_bram_read <= 0;
            
            in1_bram_write <= 0;
            addr0_bram_write <= 0;
            addr1_bram_write <= 0;
            enb_bram_write <= 0;
            we_b_bram_write <= 0;
            
            scale_red_data_path <= scale_red;
            scale_green_data_path <= scale_green;
            scale_blue_data_path <= scale_blue;
        end
        else begin
            if(en) begin
                if(count_step < TOTAL_NUMBER_CONVERT) begin
                    addr0_bram_read <= count_step;
                    valid_in <= 1;
                end
                else begin
                    addr0_bram_read <= 0;
                    valid_in <= 0;
                end
                
                addr0_bram_write_temp_0 <= addr0_bram_read;
                addr0_bram_write_temp_1 <= addr0_bram_write_temp_0;
                addr0_bram_write <= addr0_bram_write_temp_1;
                
                count_step = count_step + 1;
                
                scale_red_data_path <= scale_red;
                scale_green_data_path <= scale_green;
                scale_blue_data_path <= scale_blue;
            end
        end
    end
endmodule
