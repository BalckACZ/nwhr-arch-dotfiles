#!/bin/bash

source "$(dirname "$0")/utils.sh"

install_terminal() {
    local packages=(
        alacritty
        zsh
        zsh-autosuggestions
        zsh-syntax-highlighting
        lsd
        bat
        xclip
    )
    install_packages "terminal stuff" "${packages[@]}"

    # Set zsh as default shell for the user
    echo -e "${cyan}==> setting zsh as default shell...${nc}"
    chsh -s /bin/zsh "$SUDO_USER"

    echo -e "${green}==> terminal stuff done${nc}"
}

check_root
install_terminal
