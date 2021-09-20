#!/bin/bash
## This script will install gnome desktop environment.

pacman -Syu
pacman -S --noconfirm xorg ttf-dejavu wqy-zenhei
pacman -S --noconfirm gnome chrome-gnome-shell gnome-tweaks
systemctl enable gdm NetworkManager