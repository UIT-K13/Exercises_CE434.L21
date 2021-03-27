library verilog;
use verilog.vl_types.all;
entity Data_Path is
    generic(
        DATA_COLOR_WIDTH: integer := 8;
        DATA_IN_WIDTH   : vl_notype;
        FIXED_POINT_WIDTH: integer := 32;
        POINT_POSITION  : vl_notype;
        LINK_BRAM_READ  : string  := "";
        LINK_BRAM_WRITE : string  := "";
        ADRR_WIDTH_BRAM : integer := 6
    );
    port(
        in0_bram_read   : in     vl_logic_vector;
        in1_bram_read   : in     vl_logic_vector;
        addr0_bram_read : in     vl_logic_vector;
        addr1_bram_read : in     vl_logic_vector;
        ena_bram_read   : in     vl_logic;
        enb_bram_read   : in     vl_logic;
        we_a_bram_read  : in     vl_logic;
        we_b_bram_read  : in     vl_logic;
        out_1_bram_read : out    vl_logic_vector;
        in1_bram_write  : in     vl_logic_vector;
        addr0_bram_write: in     vl_logic_vector;
        addr1_bram_write: in     vl_logic_vector;
        ena_bram_write  : in     vl_logic;
        enb_bram_write  : in     vl_logic;
        we_a_bram_write : in     vl_logic;
        we_b_bram_write : in     vl_logic;
        out_0_bram_write: out    vl_logic_vector;
        out_1_bram_write: out    vl_logic_vector;
        scale_red       : in     vl_logic_vector;
        scale_green     : in     vl_logic_vector;
        scale_blue      : in     vl_logic_vector;
        en_calculate    : in     vl_logic;
        clk             : in     vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of DATA_COLOR_WIDTH : constant is 1;
    attribute mti_svvh_generic_type of DATA_IN_WIDTH : constant is 3;
    attribute mti_svvh_generic_type of FIXED_POINT_WIDTH : constant is 1;
    attribute mti_svvh_generic_type of POINT_POSITION : constant is 3;
    attribute mti_svvh_generic_type of LINK_BRAM_READ : constant is 1;
    attribute mti_svvh_generic_type of LINK_BRAM_WRITE : constant is 1;
    attribute mti_svvh_generic_type of ADRR_WIDTH_BRAM : constant is 1;
end Data_Path;
