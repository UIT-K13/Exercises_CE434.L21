library verilog;
use verilog.vl_types.all;
entity Controller is
    generic(
        IMAGE_HEIGHT    : integer := 5;
        IMAGE_WIDTH     : integer := 5;
        TOTAL_NUMBER_CONVERT: vl_notype;
        DATA_COLOR_WIDTH: integer := 8;
        DATA_IN_WIDTH   : vl_notype;
        FIXED_POINT_WIDTH: integer := 32;
        ADRR_WIDTH_BRAM : integer := 6
    );
    port(
        en              : in     vl_logic;
        reset_n         : in     vl_logic;
        clk             : in     vl_logic;
        scale_red       : in     vl_logic_vector;
        scale_green     : in     vl_logic_vector;
        scale_blue      : in     vl_logic_vector;
        in0_bram_read   : out    vl_logic_vector;
        in1_bram_read   : out    vl_logic_vector;
        addr0_bram_read : out    vl_logic_vector;
        addr1_bram_read : out    vl_logic_vector;
        ena_bram_read   : out    vl_logic;
        enb_bram_read   : out    vl_logic;
        we_a_bram_read  : out    vl_logic;
        we_b_bram_read  : out    vl_logic;
        in1_bram_write  : out    vl_logic_vector;
        addr0_bram_write: out    vl_logic_vector;
        addr1_bram_write: out    vl_logic_vector;
        ena_bram_write  : out    vl_logic;
        enb_bram_write  : out    vl_logic;
        we_a_bram_write : out    vl_logic;
        we_b_bram_write : out    vl_logic;
        en_w_txt        : out    vl_logic;
        scale_red_data_path: out    vl_logic_vector;
        scale_green_data_path: out    vl_logic_vector;
        scale_blue_data_path: out    vl_logic_vector;
        en_calculate    : out    vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of IMAGE_HEIGHT : constant is 1;
    attribute mti_svvh_generic_type of IMAGE_WIDTH : constant is 1;
    attribute mti_svvh_generic_type of TOTAL_NUMBER_CONVERT : constant is 3;
    attribute mti_svvh_generic_type of DATA_COLOR_WIDTH : constant is 1;
    attribute mti_svvh_generic_type of DATA_IN_WIDTH : constant is 3;
    attribute mti_svvh_generic_type of FIXED_POINT_WIDTH : constant is 1;
    attribute mti_svvh_generic_type of ADRR_WIDTH_BRAM : constant is 1;
end Controller;
