

# D:\installed\qemu-x86_64\qemu-system-aarch64.exe: Trying to execute code outside RAM or ROM at 0x0000000040000000
This usually means one of the following happened:

(1) You told QEMU to execute a kernel for the wrong machine type, and it crashed on startup (eg trying to run a raspberry pi kernel on a versatilepb QEMU machine)
(2) You didn't give QEMU a kernel or BIOS filename at all, and QEMU executed a ROM full of no-op instructions until it fell off the end
(3) Your guest kernel has a bug and crashed by jumping off into nowhere

This is almost always one of the first two, so check your command line and that you are using the right type of kernel for this machine.
If you think option (3) is likely then you can try debugging your guest with the -d debug options; in particular -d guest_errors will cause the log to include a dump of the guest register state at this point.

Execution cannot continue; stopping here.
