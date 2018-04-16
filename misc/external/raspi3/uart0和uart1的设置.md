The default value of the `enable_uart` flag depends on the actual roles of the UARTs, so that if ttyAMA0 is assigned to the BT module, `enable_uart` defaults to 0. If the mini UART is assigned to the BT module, then `enable_uart` defaults to 1. Note that if the UARTs are reassigned using a Device Tree Overlay (see below), `enable_uart` defaults will still obey this rule.

`pi3-disable-bt` disables the Bluetooth device and restores UART0/ttyAMA0 to GPIOs 14 and 15. It is also necessary to disable the system service that initialises the modem so it doesn't use the UART: `sudo systemctl disable hciuart`.

`pi3-miniuart-bt` switches the Raspberry Pi 3 and Raspberry Pi Zero W Bluetooth function to use the mini UART (ttyS0), and restores UART0/ttyAMA0 to GPIOs 14 and 15. Note that this may reduce the maximum usable baudrate (see mini UART limitations below). It is also necessary to edit /lib/systemd/system/hciuart.service and replace ttyAMA0 with ttyS0, unless you have a system with udev rules that create /dev/serial0 and /dev/serial1. In this case, use /dev/serial1 instead because it will always be correct. If cmdline.txt uses the alias serial0 to refer to the user-accessible port, the firmware will replace it with the appropriate port whether or not this overlay is used.


## init_uart_clock

`init_uart_clock` is the initial UART clock frequency. The default value is `48000000` (48MHz). Note that this clock only applies to UART0 (ttyAMA0 in Linux), and that the maximum baudrate for the UART is limited to 1/16th of the clock. The default UART on the Pi 3 and Pi Zero is UART1 (ttyS0 in Linux), and its clock is the core VPU clock - at least 250MHz.