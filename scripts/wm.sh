#!/bin/bash

source "$(dirname "$0")/utils.sh"

install_wm() {
    local packages=(
        bspwm
        sxhkd
    )
    install_packages "window manager" "${packages[@]}"
}

check_root
install_wm
