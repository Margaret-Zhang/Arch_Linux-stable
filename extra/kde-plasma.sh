#!/bin/bash
## This script will install kde plasma desktop environment.
set -e

pacman -Syu
pacman -S --noconfirm xorg ttf-dejavu wqy-zenhei
pacman -S --noconfirm plasma sddm konsole dolphin kate ark gwenview okular
systemctl enable sddm NetworkManager