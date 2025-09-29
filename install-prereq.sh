#!/bin/bash

# Installing Tmux (For Terminal Multiplexer)
sudo apt update
sudo apt install tmux

# Installing lazygit
sudo apt install lazygit

# Installing Neovim
sudo apt install neovim

# Installing fzf, fd, rg
sudo apt install fd-find
sudo apt-get install ripgrep
sudo apt install fzf

# Install lazyvim
git clone https://github.com/LazyVim/starter ~/.config/nvim
rm -rf ~/.config/nvim/.git
# git clone https://github.com/ARNiroula/neovim_config ~/.config/nvim
