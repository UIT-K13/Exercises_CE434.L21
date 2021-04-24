library verilog;
use verilog.vl_types.all;
entity Convert_RGB_To_Gray_Scale is
    generic(
        IMAGE_HEIGHT    : integer := 5;
        IMAGE_WIDTH     : integer := 5;
        TOTAL_NUMBER_CONVERT: vl_notype;
        DATA_COLOR_WIDTH: integer := 8;
        DATA_IN_WIDTH   : vl_notype;
        FIXED_POINT_WIDTH: integer := 32;
        POINT_POSITION  : vl_notype;
        ADRR_WIDTH_BRAM : integer := 6;
        LINK_BRAM_READ  : string  := "";
        LINK_BRAM_WRITE : string  := ""
    );
    port(
        en              : in     vl_logic;
        reset_n         : in     vl_logic;
        clk             : in     vl_logic;
        scale_red       : in     vl_logic_vector;
        scale_green     : in     vl_logic_vector;
        scale_blue      : in     vl_logic_vector;
        out_1_bram_read : out    vl_logic_vector;
        out_0_bram_write: out    vl_logic_vector;
        out_1_bram_write: out    vl_logic_vector;
        valid_out       : out    vl_logic
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
end Convert_RGB_To_Gray_Scale;
