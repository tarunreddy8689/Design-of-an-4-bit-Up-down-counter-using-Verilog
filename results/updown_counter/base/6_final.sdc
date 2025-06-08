###############################################################################
# Created by write_sdc
###############################################################################
current_design updown_counter
###############################################################################
# Timing Constraints
###############################################################################
create_clock -name core_clock -period 2.5000 
set_input_delay 0.5000 -clock [get_clocks {core_clock}] -add_delay [get_ports {i_clk}]
set_input_delay 0.5000 -clock [get_clocks {core_clock}] -add_delay [get_ports {i_rst}]
set_input_delay 0.5000 -clock [get_clocks {core_clock}] -add_delay [get_ports {i_up_down}]
set_output_delay 0.5000 -clock [get_clocks {core_clock}] -add_delay [get_ports {o_count[0]}]
set_output_delay 0.5000 -clock [get_clocks {core_clock}] -add_delay [get_ports {o_count[1]}]
set_output_delay 0.5000 -clock [get_clocks {core_clock}] -add_delay [get_ports {o_count[2]}]
set_output_delay 0.5000 -clock [get_clocks {core_clock}] -add_delay [get_ports {o_count[3]}]
###############################################################################
# Environment
###############################################################################
###############################################################################
# Design Rules
###############################################################################
