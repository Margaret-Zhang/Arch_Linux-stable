#/bin/bash
#This Script will help you install virtualbox and extra packages.
set -e

pacman -Syu
pacman -S --noconfirm virtualbox virtualbox-host-dkms virtualbox-guest-iso
echo ">>> You must restart computer to use virtualbox <<<"