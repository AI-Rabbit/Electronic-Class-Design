connect -url tcp:127.0.0.1:3121
source E:/MIZ_SOC/SEASON_03/CH17_VDMA_TOUCH_GUI_MIZ701N_020/Miz_sys/Miz_sys.sdk/system_wrapper_hw_platform_0/ps7_init.tcl
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Digilent JTAG-HS1 210249855253"} -index 0
rst -system
after 3000
targets -set -filter {jtag_cable_name =~ "Digilent JTAG-HS1 210249855253" && level==0} -index 1
fpga -file E:/MIZ_SOC/SEASON_03/CH17_VDMA_TOUCH_GUI_MIZ701N_020/Miz_sys/Miz_sys.sdk/system_wrapper_hw_platform_0/system_wrapper.bit
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Digilent JTAG-HS1 210249855253"} -index 0
loadhw E:/MIZ_SOC/SEASON_03/CH17_VDMA_TOUCH_GUI_MIZ701N_020/Miz_sys/Miz_sys.sdk/system_wrapper_hw_platform_0/system.hdf
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Digilent JTAG-HS1 210249855253"} -index 0
ps7_init
ps7_post_config
targets -set -nocase -filter {name =~ "ARM*#0" && jtag_cable_name =~ "Digilent JTAG-HS1 210249855253"} -index 0
dow E:/MIZ_SOC/SEASON_03/CH17_VDMA_TOUCH_GUI_MIZ701N_020/Miz_sys/Miz_sys.sdk/vdma_mini_gui/Debug/vdma_mini_gui.elf
bpadd -addr &main
