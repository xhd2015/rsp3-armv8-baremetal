ZCU102 revision 1.0 bringup
===========================

ZCU102 board features a Zynq MPSoC main CPU, that contains, among other things:

- 4 x ARM Cortex A53 cores
- 2 x ARM Cortex R4 cores
- 1 x Xilinx PMU, implemented on a microblaze
- 1 x Xilinx CSU (for signed boot)
- 1 x Xilinx Ultrascale FPGA
- a factory-programmed boot ROM, and some on-chip SRAM

Here I don't take care of Cortex R4 cores and CSU; Linux boot process on Cortex A53 cores, without authentication, is described.

On POR the boot ROM code is executed. Depending by the bootstrap configuration dip switches, the boot ROM code tries to perform boot from different peripherals (Flash memories, SD card, JTAG).

SD card boot is discussed here. On SW6 all dip switches but the 1st must be off.

The boot ROM code searches for a *BOOT.bin* file on the SD card. This file, in Xilinx specific format, and it may constains several 'partitions'. The boot ROM code loads each partition onto the specified destination.

For example "BOOT.bin" could contain:
- FPGA bitstream
- bootloader image
- PMU Firmware image

Once all partitions has been loaded, the boot ROM jumps to the bootloader image.

*NOTE*: The partition order **is** important; the boot ROM may end up in overwriting data otherwise.

The bootloader could be either
1) The Xilinx *FSBL* (First Stage Boot Loader)
2) The U-boot *SPL* (Secondary Program Loader).

Both of them start in EL3 privilege mode and runs ATF (arm trusted firmware) and the procedure ends up in handing-off to U-boot proper in EL2, but the flow is somehow different.

There are some common prerequisites for both booting flow:
1) Compiling ATF (arm trusted firmware)
2) Compiling the PMU firmware
3) Compiling u-boot

ARM Trusted Firmware (ATF)
--------------------------
The ATF package contains various modules, including early stage loaders and other stuff we don't need.. We are just interested in the so-called *BL31*.

The ARM Trusted Firmware BL31 is a kind of privileged, "trusted", resident monitor; you may think about it as a kind of BIOS. It runs at the highest privilege level (EL3), and it is trasparent to the regular bootloader/kernel, that are running at EL2. It exposes its services to the bootloader/kernel, than can be used via the special *SMC* assembler instruction.

Compiling the BL31 for zynqmp target is trivial and fast. First of all you need to locally clone the ATF git repo.
- if you are using the Xilinx toolchain you can clone the official Xilinx ATF repo.
- if you are using Ubuntu 16.04 toochain *(aarch-linux-gnu-)* you need a little workaround; you find it in my ATF git repo

Once you get sources, just run:

```
make PLAT=zynqmp RESET_TO_BL31=1 CROSS_COMPILE=<your-toolchain-prefix>
```
where *<your-toolchain-prefix>* is e.g. *aarch64-linux-gnu*

You should end up in finding out *build/zynqmp/release/bl31.bin* and *build/zynqmp/release/bl31/bl31.elf*.

- For *FSBL* you just need the *ELF* one.

- For *SPL* you need to convert the ATF *BIN* image in a u-boot-specific format. you can do this running:
```
mkimage -A arm64 -O linux -T kernel -C none -a 0XFFFEA000 -e 0XFFFEA000 -d bl31.bin atf-uboot.ub
```
You'll end up with *atf-uboot.ub*.


PMU Firmware
------------
This is really a Xilinx-specific thing.

The PMU firmware needs to be loaded onto the PMU early: ATF relies on it. It needs to be placed in a *BOOT.bin* partition, so that the on-chip ROM will load it.

The PMU firmware image can be created using the Xilinx SDK: create a new project, choose *standalone* as OS platform, *ZCU102_hw_platform* as hardware platform, and *psu_pmu_0* as target processor. Cick next, and go on.

In Xilinx output directory (for example *~/project/project.sdk/test_pmu/Debug*) you'll find the output *ELF* for the PMU firmware. This is what you'll need when generating *BOOT.bin* with Xilinx tools (so that, when you are using *FSBL*).

On the other hand, if you are using *SPL*, then you'll need a *BIN* format of this file. You can create it running
```
mb-objcopy -O binary pmu_fw.elf pmu_fw.bin
```

The PMU firmware will need to be run-time configured with the so-called *PMU configuration object*.
- *FSBL* will do it in its early stages
- *SPL* will not, and hacks for make this happening are described [here](atfpmu.md)

The configuration object is anyway created by the Xilinx SDK when FSBL is created, and it's stored in *pm_cfg_obj.c* inside the *fsbl_bsp/psu_cortexa53_0/libsrc/xilpm_v2_1/src/* directory.

U-boot
-----------------
Compiling u-boot is needed for both *FSBL* and *SPL* boot flow. In the first case only u-boot proper *ELF* is required. In the latter case also the u-boot *SPL* is obviously needed and *BOOT.bin* will be generated during u-boot compilation process.

Clone the Xilinx u-boot repo and run
```
make CROSS_COMPILE=<your-toolchain-prefix> ARCH=arm xilinx_zynqmp_zcu102_rev1_0_defconfig
```

If you want to being able to boot from SPL you need to add the PMU FW image to the u-boot configuration; otherwise this step is not necessary. You can achive this by running
```
make CROSS_COMPILE=<your-toolchain-prefix> ARCH=arm menuconfig
```

In the interactive menu enter the *ARM architecture* submenu, and edit *PMU firmware* string. Enter here the file name for the PMU firmware *BIN* file.

Finally compile u-boot running
```
make CROSS_COMPILE=<your-toolchain-prefix> ARCH=arm -j`nproc`
```

If all goes as expected you'll end up with three files (among others):
- *./u-boot.elf* that is the u-boot proper *ELF* file. This is needed for *FSBL* boot flow.
- *./boot.bin* that is the Xilinx *BOOT.bin* and *./spl/boot.bin* that is the u-boot proper *BIN*. There are needed for *SPL* boot flow.


Booting with FSBL
-----------------
This is the official Xilinx boot method. *BOOT.bin*, as well as the FSBL image itself, is created using Xilinx tools.

You need:
- the fslb elf
- the PMU fw elf
- the FPGA bitstream
- the ATF elf (bl31.elf)
- the u-boot elf

Use the Xilinx bootgen tool to create a *BOOT.bin* file. Loading all the above images is in charge of the boot ROM.

Note that the `FSBL` image statically contain the PMU configuration object, and `FSBL` will load it early, by issuing *IPIs* (Inter Processor Interrupts) directly to the PMU.

In Xilinx bootgen GUI you select *Zynq MP* architecture, then you fill the partition table.
- add a partition with type *bootloader* for the FSBL *ELF*
- add a partition with type *pmu* for the PMU firmware
- add a partition with type *datafile* and destination *PL* for the FPGA bitstream
- add a partition with type *datafile*, destination device *PS* and destination CPU *A53 0* for the *bl32.elf* image, and select *EL3* as exception level.
- add a partition with type *datafile*, destination device *PS* and destination CPU *A53 0* for the *u-boot.elf* image, and select *EL2* as exception level.

Click the "Create image" button and you should end up with the finished boot image.

The only trick for successfully booting is that you need to put the partitions in the right order, as per the above list.

Here is my *bif* file, for reference:
```
//arch = zynqmp; split = false; format = BIN
the_ROM_image:
{
	[fsbl_config]a53_x64
	[bootloader]/home/andrea/project_4/project_4.sdk/fsbl/Debug/fsbl.elf
	[pmufw_image]/home/andrea/project_4/project_4.sdk/pmu_fw/Debug/pmu_fw.elf
	[destination_device = pl]/home/andrea/project_4/project_4.sdk/ZCU102_hw_platform/design_1_wrapper.bit
	[destination_cpu = a53-0, exception_level = el-3]/media/sf_TMPSHARE/bl31.elf
	[destination_cpu = a53-0, exception_level = el-2]/media/sf_TMPSHARE/u-boot.elf
}
```

You only need to place the *BOOT.bin* file on your SD card, alongside the kernel image and the *DTB* file.

Booting with SPL
----------------
In this bootflow, Xilinx *FSBL* is not used.

You need to put on your SD card:
- the *boot.bin* file generated when compiling u-boot/spl
- *u-boot.bin*
- *atf-uboot.ub*
- the kernel image
- the *DTB* file

The FPGA image could be load afterwards from either U-boot proper or Linux.

*NOTE:* Currently this boot method does not work because the PMU configuration object is missing!
Workarounds to make the system successfully boot are descibed [here](atfpmu.md)

In this flow *BOOT.bin* will contain only the PMU firmware (loaded by the boot ROM) and the u-boot *SPL*.

The u-boot *SPL* will load from the SD card the *ATF* and the u-boot proper.

Linux kernel & DTB
------------------
The linux kernel from Xilinx tree has been used.
In order to configure the kernel run
```
make CROSS_COMPILE=<your-toolchain-prefix> ARCH=arm64 xilinx_zynqmp_defconfig
```

Then to compile the kernel image
```
make CROSS_COMPILE=<your-toolchain-prefix> ARCH=arm64 `nproc`
```

And to make the DTB
```
make CROSS_COMPILE=<your-toolchain-prefix> ARCH=arm64 zynqmp-zcu102-rev1.0.dtb
```

*NOTE:* I had to revert commit *sdhci: add support for switching to UHS-I modes on ZynqMP Platform - dcbfca5021bbd5160f0f2e8f42b7bf6aca2d02bd* otherwise the SD card didn't work. This is considered a temporary hack.


Under the hood: ATF and PMU
---------------------------
Further details about how ATF and the PMU firmware work are [here](atfpmu.md)
