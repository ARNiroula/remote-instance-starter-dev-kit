#!/bin/bash

# Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Install basic packages and tools
# Brew, wget, GCC, G++, Bash, Luarocks, Tmux, fd-find, ripgrep, fzf, lazygit, docker, neovim
brew install bash wget gcc luarocks tmux ripgrep fzf fd lazygit docker neovim

# Languages
# Install go, node, npm, python3
brew install go node python

# Install rust
curl https://sh.rustup.rs -sSf | sh

# Development environment (terminals, editors, etc.)
brew install --cask iterm2

# Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Install oh-my-posh
brew install jandedobbeleer/oh-my-posh/oh-my-posh

# Configure path
echo 'export PATH="$PATH:/opt/nvim/"' >>~/.zshrc

# Configure Couple of aliases
echo 'alias python="python3"' >>~/.zshrc
echo 'alias py="python3"' >>~/.zshrc

# Configure oh-my-posh
mkdir -p ~/.oh-my-posh/config/
curl 'https://raw.githubusercontent.com/JanDeDobbeleer/oh-my-posh/main/themes/tokyonight_storm.omp.json' >>~/.oh-my-posh/config/tokyonight_storm.omp.json
echo 'eval "$(oh-my-posh init zsh --config ~/.oh-my-posh/config/tokyonight_storm.omp.json)"' >>~/.zshrc

# Install lazyvim
git clone https://github.com/ARNiroula/neovim-config-v2.git ~/.config/nvim

# Configure zsh
exec .zsh
