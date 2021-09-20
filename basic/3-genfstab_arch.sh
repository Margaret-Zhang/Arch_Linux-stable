#!/bin/bash
## Use genfstab script to generate /mnt/etc/fstab file and print /mnt/etc/fstab

genfstab -U /mnt >> /mnt/etc/fstab

echo "---------------------------"
cat /mnt/etc/fstab
echo "---------------------------"

echo "bash 4-copy_scripts.sh"