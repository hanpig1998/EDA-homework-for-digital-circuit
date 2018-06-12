library verilog;
use verilog.vl_types.all;
entity mov_tb is
    generic(
        ton             : integer := 1;
        toff            : integer := 1
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of ton : constant is 1;
    attribute mti_svvh_generic_type of toff : constant is 1;
end mov_tb;
