https://serverfault.com/questions/872238/qemu-and-serial-ports-on-the-guest-os/872307



0
down vote
favorite
Has anyone successfully managed to run a Guest OS in QEMU/KVM where the guest has full access to the Hosts serial port(s), be it /dev/ttyS0, COM1, or a virtual serial port provided by the Host.

It seems the documentation on -chardev, -serial, etc. etc. is a bit confusing (at least to me). I was under the impression that a Guest OS would be able to see/use a serial port, provided the proper parameters were passed when starting up the Guest. But many people are saying "No, serial ports is ONLY for console redirection between the Guest OS and the Host in QEMU/KVM" ... that doesn't make sense since QEMU/KVM seems to be a great way to run old stuff that needs to talk to RS232 equipment and similar.

In addition, if there is no physical serial port on the Host, how to "create one"? At present, I'm using NetSerial, which in effect creates a "COM Port" (with a "modem" attached to it). But QEMU doesn't seem too fond of this construct either.


## 可以重复使用-serial来模拟多个io
https://stackoverflow.com/questions/39373236/redirect-multiple-uarts-in-qemu

First you need to define a chardev for the host serial port and attach a name to it (id parameter), like this:

-chardev tty,path=/dev/ttyUSB0,id=hostusbserial
Next you have to add some serial device to your virtual machine and link it to the chardev you've just created:

-device pci-serial,chardev=hostusbserial
Done. Line speed etc must be configured in the guest, qemu will pick up the settings and apply them to the host serial port.

The -serial command switch is a convenience shortcut, it will create a chardev and link it to the default serial port (which is a isa-serial device at the usual ioport 0x3f8 on x86 and something else for other architectures).