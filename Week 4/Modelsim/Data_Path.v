`timescale 1ns / 1ps

module Data_Path
#(
    parameter IMAGE_HEIGHT = 5,
    parameter IMAGE_WIDTH = 5,
    parameter DATA_COLOR_WIDTH = 8,
    parameter DATA_IN_WIDTH = DATA_COLOR_WIDTH * 3,
    parameter FIXED_POINT_WIDTH = 32,
    parameter POINT_POSITION = FIXED_POINT_WIDTH / 2,
    parameter LINK_BRAM_READ = "",
    parameter LINK_BRAM_WRITE = "",
    parameter ADRR_WIDTH_BRAM = 6
)
(
    input [DATA_IN_WIDTH - 1 : 0] in0_bram_read, in1_bram_read,
    input [ADRR_WIDTH_BRAM - 1 : 0] addr0_bram_read, addr1_bram_read,
    input valid_in,
    input enb_bram_read,  
    input we_b_bram_read,
    output [DATA_IN_WIDTH - 1 : 0] out_1_bram_read,
    
    input [DATA_COLOR_WIDTH - 1 : 0] in1_bram_write,
    input [ADRR_WIDTH_BRAM - 1 : 0] addr0_bram_write, addr1_bram_write,
    input enb_bram_write,
    input we_b_bram_write,
    output valid_out,
    output [DATA_COLOR_WIDTH - 1 : 0] out_0_bram_write, out_1_bram_write,
    
    input [FIXED_POINT_WIDTH - 1 : 0] scale_red, scale_green, scale_blue,
    input clk
);
    wire [DATA_IN_WIDTH - 1 : 0] data_from_bram_read_to_calculate;
    wire [DATA_COLOR_WIDTH - 1 :0] data_from_calculate_to_bram_write;
    wire valid_from_bram_read_calculate, valid_from_calculate_to_bram_write;

    BRAM
    #(
        .DATA_WIDTH(DATA_IN_WIDTH),
        .ADDR_WIDTH(ADRR_WIDTH_BRAM),
        .LINK(LINK_BRAM_READ)
    )
    ins0
    (
        .data_a(in0_bram_read), .data_b(in1_bram_read),
        .addr_a(addr0_bram_read), .addr_b(addr1_bram_read),
        .we_a(!valid_in), .we_b(we_b_bram_read), .ena(valid_in), .enb(enb_bram_read), .clk(clk),
        .valid_out(valid_from_bram_read_calculate),
        .q_a(data_from_bram_read_to_calculate), .q_b(out_1_bram_read)
    );
    
    Calculate_Result
    #(
        .DATA_COLOR_WIDTH(DATA_COLOR_WIDTH),
        .DATA_IN_WIDTH(DATA_IN_WIDTH),
        .FIXED_POINT_WIDTH(FIXED_POINT_WIDTH),
        .POINT_POSITION(POINT_POSITION)
    )
    ins1
    (
        .data_in(data_from_bram_read_to_calculate),
        .scale_red(scale_red), .scale_green(scale_green), .scale_blue(scale_blue),
        .valid_in(valid_from_bram_read_calculate),
        .clk(clk),
        .valid_out(valid_from_calculate_to_bram_write),
        .data_out(data_from_calculate_to_bram_write)
    );
    
    BRAM_Store_Data
    #(
        .IMAGE_HEIGHT(IMAGE_HEIGHT),
        .IMAGE_WIDTH(IMAGE_WIDTH),
        .DATA_WIDTH(DATA_COLOR_WIDTH),
        .ADDR_WIDTH(ADRR_WIDTH_BRAM),
        .LINK(LINK_BRAM_WRITE)
    )
    ins2
    (
        .data_a(data_from_calculate_to_bram_write), .data_b(in1_bram_write),
        .addr_a(addr0_bram_write), .addr_b(addr1_bram_write),
        .we_a(valid_from_calculate_to_bram_write), .we_b(we_b_bram_write), .ena(valid_from_calculate_to_bram_write), .enb(enb_bram_write), .clk(clk),
        .valid_out(valid_out),
        .q_a(out_0_bram_write), .q_b(out_1_bram_write)
    );
endmodule
