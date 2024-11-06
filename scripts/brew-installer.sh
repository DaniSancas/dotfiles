#!/bin/bash

# Brew packages installer

# Function to display the confirmation prompt
function confirm() {
    while true; do
        read -p "Do you want to proceed? (Y/N) " yn
        case $yn in
            [Yy]* ) return 0;;
            [Nn]* ) return 1;;
            * ) echo "Please answer [Y]es or [N]o";;
        esac
    done
}

# First of all, make sure brew is installed
if ! type "brew" > /dev/null; then
    echo "Brew not installed. Follow the instructions in https://brew.sh/"
    if confirm; then
        /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    else
        echo "Installation aborted."
        return 1
    fi
else
    echo "Brew installed, installing packages..."
fi

# Then, update brew
#brew update

# Lastly, install all the desired packages
# NOTE: 
# Node: needed for:
# - pyright
# Packages needed for Neovim:
# - ripgrep
# - tree-sitter
# - lazygit
# - fzf
# - fd
# Packages needed for Tmux:
# - tmux-mem-cpu-load
# Others:
# - bat
# - lsd
# - starship
brew install \
    node \
nvim \
    ripgrep \
    tree-sitter \
    fzf \
    fd \
    jesseduffield/lazygit/lazygit \
    tmux \
    tmux-mem-cpu-load \
    antigen \
    bat \
    lsd \
    starship \

