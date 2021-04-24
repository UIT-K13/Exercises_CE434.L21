`timescale 1ns / 1ps

module TestBench_Controller();
    parameter IMAGE_HEIGHT = 200;
    parameter IMAGE_WIDTH = 150;
    parameter TOTAL_NUMBER_CONVERT = IMAGE_HEIGHT * IMAGE_WIDTH;
    parameter DATA_COLOR_WIDTH = 8;
    parameter DATA_IN_WIDTH = DATA_COLOR_WIDTH * 3;
    parameter FIXED_POINT_WIDTH = 32;
    parameter POINT_POSITION = FIXED_POINT_WIDTH / 2;
    parameter ADRR_WIDTH_BRAM = 15;
    parameter t = 20;
    
    reg en, reset_n, clk;
    reg [FIXED_POINT_WIDTH - 1 : 0] scale_red, scale_green, scale_blue;
    
    wire [DATA_IN_WIDTH - 1 : 0] in0_bram_read, in1_bram_read;
    wire [ADRR_WIDTH_BRAM - 1 : 0] addr0_bram_read, addr1_bram_read;
    wire ena_bram_read, enb_bram_read;
    wire we_a_bram_read, we_b_bram_read;
    
    wire [DATA_COLOR_WIDTH - 1 : 0] in1_bram_write;
    wire [ADRR_WIDTH_BRAM - 1 : 0] addr0_bram_write, addr1_bram_write;
    wire ena_bram_write, enb_bram_write;
    wire we_a_bram_write, we_b_bram_write;
    
    wire [FIXED_POINT_WIDTH - 1 : 0] scale_red_data_path, scale_green_data_path, scale_blue_data_path;
    wire en_calculate;
    
    initial begin
        #(100);
            clk = 0;
            en = 0;
            reset_n = 0;
            scale_red = 0;
            scale_green = 0;
            scale_blue = 0;
        #(t/2);
            en = 1;
            reset_n = 1;
            scale_red = 16384; //  = 0.25
            scale_green = 16384; // = 0.25
            scale_blue = 16384; // = 0.25
        #(t/2);
        #(t*70);
            $stop;
    end
    
    always @(clk) begin
        #t;
        clk <= ~clk;
    end
    
    Controller
    #(
        .IMAGE_HEIGHT(IMAGE_HEIGHT),
        .IMAGE_WIDTH(IMAGE_WIDTH),
        .TOTAL_NUMBER_CONVERT(TOTAL_NUMBER_CONVERT),
        .DATA_COLOR_WIDTH(DATA_COLOR_WIDTH),
        .DATA_IN_WIDTH(DATA_IN_WIDTH),
        .FIXED_POINT_WIDTH(FIXED_POINT_WIDTH),
        .ADRR_WIDTH_BRAM(ADRR_WIDTH_BRAM)
    )
    ins0
    (
        .en(en), .reset_n(reset_n), .clk(clk),
        .scale_red(scale_red), .scale_green(scale_green), .scale_blue(scale_blue),
        
        .in0_bram_read(in0_bram_read), .in1_bram_read(in1_bram_read),
        .addr0_bram_read(addr0_bram_read), .addr1_bram_read(addr1_bram_read),
        .ena_bram_read(ena_bram_read), .enb_bram_read(enb_bram_read),  
        .we_a_bram_read(we_a_bram_read), .we_b_bram_read(we_b_bram_read),
        
        .in1_bram_write(in1_bram_write),
        .addr0_bram_write(addr0_bram_write), .addr1_bram_write(addr1_bram_write),
        .ena_bram_write(ena_bram_write), .enb_bram_write(enb_bram_write),
        .we_a_bram_write(we_a_bram_write), .we_b_bram_write(we_b_bram_write),
        
        .scale_red_data_path(scale_red_data_path), .scale_green_data_path(scale_green_data_path), .scale_blue_data_path(scale_blue_data_path),
        .en_calculate(en_calculate)
    );
endmodule
