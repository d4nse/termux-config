#!/usr/bin/env bash

SCRIPT_DIR=$PWD
DOTFILES="$SCRIPT_DIR/dotfiles"

main() {
    if ! command -v termux-setup-storage; then
        echo "ERROR: Not running in Termux. Aborting."
        exit 1
    fi

    # Update and install dependencies
    printf "Updating package database...\n"
    apt-get update
    printf "Upgrading packages...\n"
    apt-get -o Dpkg::Options::="--force-confnew" -y upgrade
    printf "Installing requirements...\n"
    pkg update
    xargs pkg install -y <"$SCRIPT_DIR/requirements.txt"

    # Copy configuration files
    printf "Configuring...\n"
    mkdir -p "$HOME/.termux" "$HOME/.config/nvim"
    cp \
        "$DOTFILES/termux.properties" \
        "$DOTFILES/colors.properties" \
        "$DOTFILES/font.ttf" \
        "$HOME/.termux"
    cp "$DOTFILES/init.nvim" "$HOME/.config/nvim/"
    cp \
        "$DOTFILES/.zshrc" \
        "$DOTFILES/.zprofile" \
        "$HOME"
    echo "termux-wake-lock" >"$HOME/.zlogin"
    echo "termux-wake-unlock" >"$HOME/.zlogout"
    touch "$HOME/.hushlogin"

    printf "Setting up phone storage, give permissions when asked"
    if [[ ! -d "$HOME/storage" ]]; then
        termux-setup-storage
    fi

    if [ "$SHELL" != "$PREFIX/bin/zsh" ]; then
        chsh -s zsh
    fi

    termux-reload-settings
    printf "Done.\n"

    exec zsh

    exit 0
}
main
