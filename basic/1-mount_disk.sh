#############################################################
#                                                           #
#     !!!!! THIS SCIRPT IS NOT RECOMMAND TO USE !!!!!       #
#                                                           #
#############################################################

## Use cfdisk to depart disks, and mount them at the right mountpoints.
## Default mountpoints: /

read -p "THIS SCRIPT IS NOT RECOMMANDED TO USE. DO YOU WANT TO EXECUTE IT? [YES/NO]" CHOICE
if [ "${CHOICE}" != "YES" ]; then
  exit
fi

echo "Start parted disks."
echo "Now select disk. Example: /dev/nvme0n1 or /dev/sda"
read -p "Disk: " DISK
cfdisk $DISK

echo "Start mount disks."
read -p "Point / disk: " ROOT

# mkfs
mkfs.ext4 -v $ROOT

# mount
mount -v $ROOT /mnt

# prompt
echo "If your computer is UEFI + GPT, please run: mkdir -pv /mnt/boot/efi && mount /dev/sd?x(ESP) /mnt/boot/efi."

echo "bash 2-pacstrap_arch.sh"