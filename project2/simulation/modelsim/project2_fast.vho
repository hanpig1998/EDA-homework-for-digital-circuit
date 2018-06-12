-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.0.0 Build 156 04/24/2013 SJ Full Version"

-- DATE "05/27/2018 16:00:27"

-- 
-- Device: Altera EP2C5Q208C8 Package PQFP208
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	mul2 IS
    PORT (
	\in\ : IN std_logic_vector(7 DOWNTO 0);
	\out\ : OUT std_logic_vector(7 DOWNTO 0)
	);
END mul2;

-- Design Ports Information
-- out[0]	=>  Location: PIN_33,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out[1]	=>  Location: PIN_41,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out[2]	=>  Location: PIN_36,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out[3]	=>  Location: PIN_14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out[4]	=>  Location: PIN_32,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out[5]	=>  Location: PIN_70,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out[6]	=>  Location: PIN_12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out[7]	=>  Location: PIN_13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- in[0]	=>  Location: PIN_30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in[3]	=>  Location: PIN_44,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in[1]	=>  Location: PIN_31,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in[2]	=>  Location: PIN_39,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in[4]	=>  Location: PIN_99,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in[5]	=>  Location: PIN_23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in[6]	=>  Location: PIN_24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in[7]	=>  Location: PIN_27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF mul2 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \ww_in\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ww_out\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \WideAnd0~0_combout\ : std_logic;
SIGNAL \WideAnd0~1_combout\ : std_logic;
SIGNAL \WideAnd0~combout\ : std_logic;
SIGNAL \out~0_combout\ : std_logic;
SIGNAL \out~1_combout\ : std_logic;
SIGNAL \out~2_combout\ : std_logic;
SIGNAL \out~3_combout\ : std_logic;
SIGNAL \out~4_combout\ : std_logic;
SIGNAL \out~5_combout\ : std_logic;
SIGNAL \in~combout\ : std_logic_vector(7 DOWNTO 0);

BEGIN

\ww_in\ <= \in\;
\out\ <= \ww_out\;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: PIN_30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => \ww_in\(0),
	combout => \in~combout\(0));

-- Location: PIN_39,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => \ww_in\(2),
	combout => \in~combout\(2));

-- Location: PIN_31,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => \ww_in\(1),
	combout => \in~combout\(1));

-- Location: LCCOMB_X1_Y5_N0
\WideAnd0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \WideAnd0~0_combout\ = (\in~combout\(3) & (\in~combout\(0) & (\in~combout\(2) & \in~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in~combout\(3),
	datab => \in~combout\(0),
	datac => \in~combout\(2),
	datad => \in~combout\(1),
	combout => \WideAnd0~0_combout\);

-- Location: PIN_23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => \ww_in\(5),
	combout => \in~combout\(5));

-- Location: PIN_24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => \ww_in\(6),
	combout => \in~combout\(6));

-- Location: PIN_27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => \ww_in\(7),
	combout => \in~combout\(7));

-- Location: LCCOMB_X1_Y5_N26
\WideAnd0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \WideAnd0~1_combout\ = (\in~combout\(4) & (\in~combout\(5) & (\in~combout\(6) & \in~combout\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in~combout\(4),
	datab => \in~combout\(5),
	datac => \in~combout\(6),
	datad => \in~combout\(7),
	combout => \WideAnd0~1_combout\);

-- Location: LCCOMB_X1_Y5_N12
WideAnd0 : cycloneii_lcell_comb
-- Equation(s):
-- \WideAnd0~combout\ = (\WideAnd0~0_combout\ & \WideAnd0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \WideAnd0~0_combout\,
	datad => \WideAnd0~1_combout\,
	combout => \WideAnd0~combout\);

-- Location: LCCOMB_X1_Y5_N30
\out~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \out~0_combout\ = (\in~combout\(1) & (!\in~combout\(3) & (\in~combout\(0) $ (\in~combout\(2))))) # (!\in~combout\(1) & (!\in~combout\(2) & (\in~combout\(3) $ (\in~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in~combout\(3),
	datab => \in~combout\(0),
	datac => \in~combout\(2),
	datad => \in~combout\(1),
	combout => \out~0_combout\);

-- Location: LCCOMB_X1_Y5_N16
\out~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \out~1_combout\ = (\out~0_combout\) # ((\WideAnd0~0_combout\ & \WideAnd0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \out~0_combout\,
	datac => \WideAnd0~0_combout\,
	datad => \WideAnd0~1_combout\,
	combout => \out~1_combout\);

-- Location: LCCOMB_X1_Y5_N10
\out~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \out~2_combout\ = (\in~combout\(0) & (!\in~combout\(3) & ((\in~combout\(1))))) # (!\in~combout\(0) & (!\in~combout\(2) & (\in~combout\(3) $ (\in~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in~combout\(3),
	datab => \in~combout\(0),
	datac => \in~combout\(2),
	datad => \in~combout\(1),
	combout => \out~2_combout\);

-- Location: LCCOMB_X1_Y5_N28
\out~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \out~3_combout\ = (\out~2_combout\) # ((\WideAnd0~0_combout\ & \WideAnd0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \out~2_combout\,
	datab => \WideAnd0~0_combout\,
	datad => \WideAnd0~1_combout\,
	combout => \out~3_combout\);

-- Location: PIN_44,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => \ww_in\(3),
	combout => \in~combout\(3));

-- Location: LCCOMB_X1_Y5_N6
\out~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \out~4_combout\ = (\in~combout\(0) & (\in~combout\(3))) # (!\in~combout\(0) & (((\in~combout\(2) & !\in~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in~combout\(3),
	datab => \in~combout\(0),
	datac => \in~combout\(2),
	datad => \in~combout\(1),
	combout => \out~4_combout\);

-- Location: LCCOMB_X1_Y5_N8
\out~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \out~5_combout\ = (\in~combout\(3)) # ((\in~combout\(2) & ((\in~combout\(0)) # (\in~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in~combout\(3),
	datab => \in~combout\(0),
	datac => \in~combout\(2),
	datad => \in~combout\(1),
	combout => \out~5_combout\);

-- Location: PIN_99,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => \ww_in\(4),
	combout => \in~combout\(4));

-- Location: PIN_33,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\out[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \WideAnd0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => \ww_out\(0));

-- Location: PIN_41,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\out[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \out~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => \ww_out\(1));

-- Location: PIN_36,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\out[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \out~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => \ww_out\(2));

-- Location: PIN_14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\out[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \out~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => \ww_out\(3));

-- Location: PIN_32,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\out[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \out~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => \ww_out\(4));

-- Location: PIN_70,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\out[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \in~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => \ww_out\(5));

-- Location: PIN_12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\out[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \in~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => \ww_out\(6));

-- Location: PIN_13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\out[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \WideAnd0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => \ww_out\(7));
END structure;


