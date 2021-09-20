#!/bin/bash
set -e

pacman -Syu
pacman -S --noconfirm firefox firefox-i18n-zh-cn
pacman -S --noconfirm gdb cmake clang git valgrind rsync mplayer
pacman -S --noconfirm fcitx-im fcitx fcitx-configtool fcitx-googlepinyin