#!/bin/bash

source "$(dirname "$0")/utils.sh"

install_apps() {
    local packages=(
        rofi
        picom
        feh
        dunst
        scrot
        brightnessctl
        playerctl
    )
    install_packages "apps" "${packages[@]}"
}

check_root
install_apps
