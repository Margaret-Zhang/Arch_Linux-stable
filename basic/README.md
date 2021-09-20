## This script is for computer with GPT and UEFI mode
## Version 1.3
## Date 09.20.2021
## Install archlinux basic system(target mounted on /mnt, stable local mirror 20210327)

1. bash 1-mount_disk.sh
2. bash 2-pacstrap_arch.sh
3. bash 3-genfstab_arch.sh
4. bash 4-copy_scripts.sh
5. arch-chroot /mnt
6. cd  ~/root/Arch_Linux-stable/basic && bash 5-new_arch.sh