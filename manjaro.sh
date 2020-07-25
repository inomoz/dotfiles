#!/usr/bin/env bash


# Update system
pamac upgrade -a

mkdir -p ~/downloads/video ~/.local/bin

pamac install --no-confirm bash-completion tmux neovim rtorrent git

pamac install --no-confirm xscreensaver

# tmux plugin manager
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
