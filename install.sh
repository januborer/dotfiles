#!/usr/bin/env sh

set -x

##Tui
ln -s ~/.dotfiles/.config/nvim ~/.config/nvim
ln -s ~/.dotfiles/.config/fish ~/.config/fish
ln -s ~/.dotfiles/.config/yazi ~/.config/yazi
ln -s ~/.dotfiles/.config/alacritty ~/.config/alacritty
ln -s ~/.dotfiles/.config/tmux/.tmux.conf ~/.tmux.conf

##Sway
ln -s ~/.dotfiles/.config/sway/config ~/.config/sway/config
ln -s ~/.dotfiles/.config/sway/swaybar ~/.config/waybar

##FreeBSD
ln -s ~/.dotfiles/.config/freebsd/.profile ~/.profile

##Other
ln -s ~/.dotfiles/.config/fcitx5 ~/.config/fcitx5

#############################################################
