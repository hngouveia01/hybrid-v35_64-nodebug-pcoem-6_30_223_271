#/usr/bin/env bash

# install packages to compile the BCM4331 driver
sudo dnf install gcc kernel-devel -y

# install driver
sudo make install

# update available drivers
sudo depmod -a

# unload conflict drivers
sudo rmmod b43 ssb bcma

# load driver
sudo modprobe wl

# blacklist conflict drivers
printf 'blacklist b43\nblacklist ssb\nblacklist bcma\n' | sudo tee /etc/modprobe.d/wl.conf

# load driver wl at boot
echo 'wl' | sudo tee /etc/modules-load.d/wl.conf
