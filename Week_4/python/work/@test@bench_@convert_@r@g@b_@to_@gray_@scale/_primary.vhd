library verilog;
use verilog.vl_types.all;
entity TestBench_Convert_RGB_To_Gray_Scale is
    generic(
        IMAGE_HEIGHT    : integer := 270;
        IMAGE_WIDTH     : integer := 480;
        TOTAL_NUMBER_CONVERT: vl_notype;
        DATA_COLOR_WIDTH: integer := 8;
        DATA_IN_WIDTH   : vl_notype;
        FIXED_POINT_WIDTH: integer := 32;
        POINT_POSITION  : vl_notype;
        ADRR_WIDTH_BRAM : integer := 19;
        LINK_BRAM_READ  : string  := "..\bram_pre_and_post_convert\original_image.txt";
        LINK_BRAM_WRITE : string  := "..\bram_pre_and_post_convert\converted_image.txt";
        t               : integer := 10
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of IMAGE_HEIGHT : constant is 1;
    attribute mti_svvh_generic_type of IMAGE_WIDTH : constant is 1;
    attribute mti_svvh_generic_type of TOTAL_NUMBER_CONVERT : constant is 3;
    attribute mti_svvh_generic_type of DATA_COLOR_WIDTH : constant is 1;
    attribute mti_svvh_generic_type of DATA_IN_WIDTH : constant is 3;
    attribute mti_svvh_generic_type of FIXED_POINT_WIDTH : constant is 1;
    attribute mti_svvh_generic_type of POINT_POSITION : constant is 3;
    attribute mti_svvh_generic_type of ADRR_WIDTH_BRAM : constant is 1;
    attribute mti_svvh_generic_type of LINK_BRAM_READ : constant is 1;
    attribute mti_svvh_generic_type of LINK_BRAM_WRITE : constant is 1;
    attribute mti_svvh_generic_type of t : constant is 1;
end TestBench_Convert_RGB_To_Gray_Scale;
