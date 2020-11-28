#QSPI四线模式
set_property CFGBVS VCCO [current_design]
set_property CONFIG_VOLTAGE 3.3 [current_design]
set_property BITSTREAM.GENERAL.COMPRESS true [current_design]
set_property BITSTREAM.CONFIG.CONFIGRATE 66 [current_design]
set_property BITSTREAM.CONFIG.SPI_BUSWIDTH 4 [current_design]
set_property BITSTREAM.CONFIG.SPI_FALL_EDGE Yes [current_design]


create_clock -period 10.000 -name sys_clk [get_ports sys_clk_p]

set_property IOSTANDARD LVCMOS33 [get_ports sys_rst_n]
set_property PULLUP true [get_ports sys_rst_n]
set_false_path -from [get_ports sys_rst_n]
#

set_property PACKAGE_PIN V19 [get_ports sys_rst_n]
set_property PACKAGE_PIN W6 [get_ports sys_clk_p]
set_property PACKAGE_PIN W5 [get_ports sys_clk_n]

set_property PACKAGE_PIN AC2 [get_ports {pci_exp_txp[0]}]
set_property PACKAGE_PIN AC1 [get_ports {pci_exp_txn[0]}]

set_property PACKAGE_PIN AE2 [get_ports {pci_exp_txp[1]}]
set_property PACKAGE_PIN AE1 [get_ports {pci_exp_txn[1]}]

set_property PACKAGE_PIN AF4 [get_ports {pci_exp_txp[2]}]
set_property PACKAGE_PIN AF3 [get_ports {pci_exp_txn[2]}]

set_property PACKAGE_PIN AF8 [get_ports {pci_exp_txp[3]}]
set_property PACKAGE_PIN AF7 [get_ports {pci_exp_txn[3]}]


set_property PACKAGE_PIN AD4 [get_ports {pci_exp_rxp[0]}]
set_property PACKAGE_PIN AD3 [get_ports {pci_exp_rxn[0]}]

set_property PACKAGE_PIN AC6 [get_ports {pci_exp_rxp[1]}]
set_property PACKAGE_PIN AC5 [get_ports {pci_exp_rxn[1]}]

set_property PACKAGE_PIN AE6 [get_ports {pci_exp_rxp[2]}]
set_property PACKAGE_PIN AE5 [get_ports {pci_exp_rxn[2]}]

set_property PACKAGE_PIN AD8 [get_ports {pci_exp_rxp[3]}]
set_property PACKAGE_PIN AD7 [get_ports {pci_exp_rxn[3]}]


set_false_path -from [get_ports sys_rst_n]
