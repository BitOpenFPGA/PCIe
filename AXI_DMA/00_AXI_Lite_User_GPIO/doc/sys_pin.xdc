set_property SEVERITY {Warning} [get_drc_checks NSTD-1]  
set_property SEVERITY {Warning} [get_drc_checks UCIO-1] 

set_property PACKAGE_PIN B9 [get_ports {GPIO_LED[0]}]
set_property IOSTANDARD LVCMOS15 [get_ports {GPIO_LED[0]}]

set_property PACKAGE_PIN J10 [get_ports {GPIO_LED[1]}]
set_property IOSTANDARD LVCMOS15 [get_ports {GPIO_LED[1]}]

set_property PACKAGE_PIN H11 [get_ports {GPIO_LED[2]}]
set_property IOSTANDARD LVCMOS15 [get_ports {GPIO_LED[2]}]

set_property PACKAGE_PIN G9 [get_ports {GPIO_LED[3]}]
set_property IOSTANDARD LVCMOS15 [get_ports {GPIO_LED[3]}]

