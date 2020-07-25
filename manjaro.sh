#!/usr/bin/env bash


# Update system
pamac upgrade -a

mkdir -p ~/downloads/video ~/.local/bin

pamac install --no-confirm bash-completion tmux neovim rtorrent git tmux inkscape telegram-desktop pavucontrol discord

pamac install --no-confirm xscreensaver

# pamac install --no-confirm chromium-vaapi

# tmux plugin manager
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm 2> /dev/null
