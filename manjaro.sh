#!/usr/bin/env bash


# Update system
pamac upgrade -a

mkdir -p ~/downloads/video ~/.local/bin

pamac install --no-confirm bash-completion neovim rtorrent 

pamac install --no-confirm xscreensaver
