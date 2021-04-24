library verilog;
use verilog.vl_types.all;
entity BRAM_Store_Data is
    generic(
        IMAGE_HEIGHT    : integer := 5;
        IMAGE_WIDTH     : integer := 5;
        DATA_WIDTH      : integer := 4;
        ADDR_WIDTH      : integer := 4;
        LINK            : string  := "ram.txt"
    );
    port(
        data_a          : in     vl_logic_vector;
        data_b          : in     vl_logic_vector;
        addr_a          : in     vl_logic_vector;
        addr_b          : in     vl_logic_vector;
        we_a            : in     vl_logic;
        we_b            : in     vl_logic;
        ena             : in     vl_logic;
        enb             : in     vl_logic;
        clk             : in     vl_logic;
        valid_out       : out    vl_logic;
        q_a             : out    vl_logic_vector;
        q_b             : out    vl_logic_vector
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of IMAGE_HEIGHT : constant is 1;
    attribute mti_svvh_generic_type of IMAGE_WIDTH : constant is 1;
    attribute mti_svvh_generic_type of DATA_WIDTH : constant is 1;
    attribute mti_svvh_generic_type of ADDR_WIDTH : constant is 1;
    attribute mti_svvh_generic_type of LINK : constant is 1;
end BRAM_Store_Data;
