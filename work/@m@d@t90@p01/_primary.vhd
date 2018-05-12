library verilog;
use verilog.vl_types.all;
entity MDT90P01 is
    port(
        pc              : out    vl_logic_vector(8 downto 0);
        c0              : in     vl_logic;
        w_reg_top       : in     vl_logic_vector(3 downto 0);
        LEDR3           : out    vl_logic;
        LEDR2           : out    vl_logic;
        LEDR1           : out    vl_logic;
        LEDR0           : out    vl_logic;
        place_immediate : in     vl_logic;
        instruction     : in     vl_logic_vector(10 downto 0)
    );
end MDT90P01;
