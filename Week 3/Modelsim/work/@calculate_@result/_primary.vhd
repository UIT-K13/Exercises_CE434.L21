library verilog;
use verilog.vl_types.all;
entity Calculate_Result is
    generic(
        DATA_COLOR_WIDTH: integer := 8;
        DATA_IN_WIDTH   : vl_notype;
        FIXED_POINT_WIDTH: integer := 32;
        POINT_POSITION  : vl_notype
    );
    port(
        data_in         : in     vl_logic_vector;
        scale_red       : in     vl_logic_vector;
        scale_green     : in     vl_logic_vector;
        scale_blue      : in     vl_logic_vector;
        en              : in     vl_logic;
        clk             : in     vl_logic;
        data_out        : out    vl_logic_vector
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of DATA_COLOR_WIDTH : constant is 1;
    attribute mti_svvh_generic_type of DATA_IN_WIDTH : constant is 3;
    attribute mti_svvh_generic_type of FIXED_POINT_WIDTH : constant is 1;
    attribute mti_svvh_generic_type of POINT_POSITION : constant is 3;
end Calculate_Result;
