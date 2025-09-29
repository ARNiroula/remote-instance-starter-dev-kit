#!/bin/bash

# Installing Tmux (For Terminal Multiplexer)
sudo apt update
sudo apt install tmux

# Installing lazygit
sudo apt install lazygit

# Installing Neovim
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim-linux-x86_64.appimage
sudo chmod u+x nvim-linux-x86_64.appimage
sudo mkdir -p /opt/nvim
sudo mv nvim-linux-x86_64.appimage /opt/nvim/nvim

echo 'export PATH="$PATH:/opt/nvim/"' >>~/.bashrc

# Installing fzf, fd, rg
sudo apt install fd-find
sudo apt-get install ripgrep
sudo apt install fzf

# Install lazyvim
git clone https://github.com/LazyVim/starter ~/.config/nvim
rm -rf ~/.config/nvim/.git
# git clone https://github.com/ARNiroula/neovim_config ~/.config/nvim
