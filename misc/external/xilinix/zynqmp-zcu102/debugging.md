Debugging tips & hacks
======================

Debugging ATF
-------------
To debug ATF, just append *DEBUG=1* to your ATF *make* command line.
The ATF output will be put to either *build/zynqmp/release/bl31.bin* or *build/zynqmp/debug/bl31.bin* depending by this setting.

Depending by the build type (debug/release) the Makefile will also set the *LOG_LEVEL* macro to different values.

This is the list of known log levels
```
#define LOG_LEVEL_NONE			0
#define LOG_LEVEL_ERROR			10
#define LOG_LEVEL_NOTICE		20
#define LOG_LEVEL_WARNING		30
#define LOG_LEVEL_INFO			40
#define LOG_LEVEL_VERBOSE		50
```

Debugging PMU firmware
----------------------
The PMU can use SoC uart peripherals. The zcu102 on-board serial-to-USB converter appares to the host SO as four serial ports, so that more than one SoC uarts could be used. The PMU serial port can be routed to one of those serial ports.

To choose to which SoC serial port the PMU should use, open the "Modify BSP settings" dialog in Vivado, and choose one option for "stdout".

On the "project explorer" right click the PMU FW BSP and choose "Board Support Package Settings", or double click "system.mss" and click button "Modify this BSP's Settings in center pane".

On the "Board Support Package Settings" dialog, select "standalone" on the left, and then select proper option for "stdin", "stdout" properties.

To enable debug prints in PMU firmware, add DEBUG_MODE to the defined symbols list in build settings dialog.

It seems that it is also possible to [debug the PMU firmware using Xilinx SDK](http://www.wiki.xilinx.com/PMU+Firmware)

Kernel messages when PMU doesn't work
-------------------------------------
In case the boot process reaches the kernel, but the PMU firmware does not work properly, the kernel console will soon die: the earlycon would work, but as soon as it detaches in order to switch to the regular console, failures related to power management will cause messages to mute.

A very dirty hack to continue seeing kernel messages is to avoid the earlycon to detach. This can be achieved by make *unregister_console()* in *kernel/printk/printk.c* to bail out early returning zero.
