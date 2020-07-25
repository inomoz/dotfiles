#!/usr/bin/env bash


# Update system
pamac upgrade -a

mkdir -p ~/downloads/video ~/pictures/screenshots ~/.local/bin

pamac install --no-confirm bash-completion xclip maim rofi tmux neovim rtorrent git tmux inkscape telegram-desktop pavucontrol discord

pamac install --no-confirm xscreensaver

# pamac install nerd-fonts-iosevka chromium-vaapi spotif pycharm-professional

# tmux plugin manager
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm 2> /dev/null
sudo gpasswd -a inom docker
sudo systemctl enable docker

