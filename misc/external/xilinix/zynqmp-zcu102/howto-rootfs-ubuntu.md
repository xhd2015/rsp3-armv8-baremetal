Preparing a minimal Ubuntu rootfs
=================================

These are my random notes on how to get started with a minimal ubuntu rootfs that allows you to log from the serial port and use *apt-get install* to install other stuff.

For example to install a full ubuntu desktop you may run:

```
apt-get install ubuntu-desktop
```
.. It will take a lot of time..

*NOTE:* You are supposed to configure properly users and passwords later on, **otherwise your system will be insecure**.

Ubuntu 16.04
------------

Get the 'ubuntu base image'
```
wget http://cdimage.ubuntu.com/ubuntu-base/releases/16.04/release/ubuntu-base-16.04.3-base-arm64.tar.gz
```
Uncompress it on your SD card root partition.
*NOTE:* since file permissions and owners need to be preservated, you need to do this as root

Get the net-tool package (for *ifconfig*, *route*)
```
wget http://launchpadlibrarian.net/178999027/net-tools_1.60-26ubuntu1_arm64.deb
```
And copy it on the SD root partition.

*NOTE*: This is enough to set a *static* IP addess. Installing packages for DHCP is also possible, but due to several dependancies of *isc-dhcp-client_4.3.3-5ubuntu12_arm64.deb* you'll need to download several other packages.

You may need the following hack to enable login on the serial console
```
sudo ln -s lib/systemd/system/getty@.service etc/systemd/system/getty.target.wants/getty@ttyPS0.service
```

*NOTE*: for unknown reasons after a while, maybe after istalling more packages, it started to have two overlapping getty started on the serial port, and I had to remove the above symlink.

Then add an user to the rootfs, I used 'ubuntu' user
```
sudo useradd --root <your SD root> -m -s /bin/bash ubuntu
```

Set a password for both the new user and root: edit *etc/shadow* and put an hash from a password you know.. (look at */etc/shadow* on your desktop)

Boot the target and, as root, run:
```
dpkg -i /net-tools_1.60-26ubuntu1_arm64.deb
```


Ubuntu 14.04
------------

Get the 'ubuntu base image'
```
wget http://cdimage.ubuntu.com/ubuntu-base/releases/14.04/release/ubuntu-base-14.04.5-base-arm64.tar.gz
```

create *etc/init/ttyPS0.conf* with the following contents


```
# ttyPS0 - getty
#
# This service maintains a getty on ttyPS0 from the point the system is
# started until it is shut down again.

start on runlevel [2345] and (
            not-container or
            container CONTAINER=lxc or
            container CONTAINER=lxc-libvirt)

stop on runlevel [!2345]

respawn
exec /sbin/getty -8 115200 --autologin root ttyPS0

```
This will enable a root console on the serial terminal

You can create other users from there later.

Create *etc/network/interfaces* and fill with your network configuration.
For example for dhcp:

```
auto lo
iface lo inet loopback

auto eth0
iface eth0 inet dhcp
```

Settings for both Ubuntu versions
---------------------------------

Create /etc/hosts with the following contents (otherwise *ssh -X* wouldn't work, among other things)

```
localhost 127.0.0.1
```

Now you can use *apt-get* to install stuff :)


Multi FS
--------

It is possible to partition the SD card in order to keep multiple alternate FS on it.
To choose which one to boot just set proper u-boot environment variables.

U-boot defines the following environment variable:
```
sdroot0=setenv bootargs $bootargs root=/dev/mmcblk0p2 rw rootwait
```

To boot from another partition, just override it:

```
setenv sdroot0 setenv bootargs $bootargs root=/dev/mmcblk0p3 rw rootwait
```
