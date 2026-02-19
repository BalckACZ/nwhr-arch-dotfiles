#!/bin/bash

source "$(dirname "$0")/utils.sh"

fix_system() {
    echo -e "${cyan}==> fixing clock...${nc}"
    timedatectl set-ntp true
    hwclock --systohc

    echo -e "${cyan}==> updating system...${nc}"
    pacman -Sy --noconfirm
    pacman -S --noconfirm archlinux-keyring
    pacman -Syu --noconfirm --overwrite '/usr/lib/libgcc*' --overwrite '/usr/share/licenses/gcc-libs/*'

    echo -e "${green}==> system ready${nc}"
}

check_root
fix_system
