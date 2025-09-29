#!/bin/bash

# Installing Tmux (For Terminal Multiplexer)
sudo apt update
sudo apt install tmux

# Installing lazygit (For Ubuntu 25.04 and older)
# sudo apt install lazygit
LAZYGIT_VERSION=$(curl -s "https://api.github.com/repos/jesseduffield/lazygit/releases/latest" | \grep -Po '"tag_name": *"v\K[^"]*')
curl -Lo lazygit.tar.gz "https://github.com/jesseduffield/lazygit/releases/download/v${LAZYGIT_VERSION}/lazygit_${LAZYGIT_VERSION}_Linux_x86_64.tar.gz"
tar xf lazygit.tar.gz lazygit
sudo install lazygit -D -t /usr/local/bin/
# Remove the installation file
rm lazygit.tar.gz
rm lazygit

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
git clone https://github.com/ARNiroula/neovim_config-v2 ~/.config/nvim

source ~/.bashrc
