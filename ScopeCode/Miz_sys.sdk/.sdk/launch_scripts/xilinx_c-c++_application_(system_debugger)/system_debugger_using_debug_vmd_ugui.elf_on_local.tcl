connect -url tcp:127.0.0.1:3121
source K:/MZ7XA/code/02/02_example_SOC/CH31_ugui/VDMA_TOUCH_uGUI_RGB/Miz_sys/Miz_sys.sdk/system_wrapper_hw_platform_0/ps7_init.tcl
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Digilent JTAG-HS1 210249855338"} -index 0
rst -system
after 3000
targets -set -filter {jtag_cable_name =~ "Digilent JTAG-HS1 210249855338" && level==0} -index 1
fpga -file K:/MZ7XA/code/02/02_example_SOC/CH31_ugui/VDMA_TOUCH_uGUI_RGB/Miz_sys/Miz_sys.sdk/system_wrapper_hw_platform_0/system_wrapper.bit
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Digilent JTAG-HS1 210249855338"} -index 0
loadhw -hw K:/MZ7XA/code/02/02_example_SOC/CH31_ugui/VDMA_TOUCH_uGUI_RGB/Miz_sys/Miz_sys.sdk/system_wrapper_hw_platform_0/system.hdf -mem-ranges [list {0x40000000 0xbfffffff}]
configparams force-mem-access 1
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Digilent JTAG-HS1 210249855338"} -index 0
ps7_init
ps7_post_config
targets -set -nocase -filter {name =~ "ARM*#0" && jtag_cable_name =~ "Digilent JTAG-HS1 210249855338"} -index 0
dow K:/MZ7XA/code/02/02_example_SOC/CH31_ugui/VDMA_TOUCH_uGUI_RGB/Miz_sys/Miz_sys.sdk/vmd_ugui/Debug/vmd_ugui.elf
configparams force-mem-access 0
bpadd -addr &main
