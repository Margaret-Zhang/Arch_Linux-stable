#!/bin/bash
## Install packages to /mnt. You can append packages at line 18.
## Necessary: base base-devel linux-firmware
## Kernel: linux linux-headers (linux-lts, linux-lts-haeders for long time support)
## Network: dhcpcd wpa_supplicant
## Bootloader: grub os-prober efibootmgr(UEFI need)
## Other: ...

## Create directory and mount $PKG
mkdir -v /data
mount -v /dev/sda1 /data

## Setup mirror server to local directory
cat > /etc/pacman.d/mirrorlist << "EOF"
Server = file:///data/archlinux/$repo/os/$arch
EOF

pacstrap /mnt base base-devel linux-lts linux-lts-headers linux-firmware neofetch vim nano grub ntfs-3g dhcpcd wpa_supplicant os-prober net-tools wget openssh dhcpcd efibootmgr

echo "bash 3-genfstab_arch.sh"