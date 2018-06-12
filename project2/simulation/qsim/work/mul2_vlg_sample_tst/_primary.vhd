library verilog;
use verilog.vl_types.all;
entity mul2_vlg_sample_tst is
    port(
        \in\            : in     vl_logic_vector(7 downto 0);
        sampler_tx      : out    vl_logic
    );
end mul2_vlg_sample_tst;
