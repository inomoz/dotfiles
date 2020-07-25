#!/usr/bin/env bash


# Update system
pamac upgrade -a

mkdir -p ~/downloads/video ~/pictures/screenshots ~/.local/bin

pamac install --no-confirm bash-completion fcitx fcitx-configtool barrier jq xclip maim rofi tmux neovim rtorrent git tmux gimp inkscape telegram-desktop pavucontrol discord steam blender openscad neomutt isync msmtp pass lynx
pamac install --no-confirm xscreensaver

# pamac install nerd-fonts-iosevka chromium-vaapi spotif pycharm-professional i3-resurrect anydesk-bin mutt-wizard-git

# tmux plugin manager
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm 2> /dev/null
sudo gpasswd -a inom docker
sudo systemctl enable docker

