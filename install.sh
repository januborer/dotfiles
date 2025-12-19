#!/usr/bin/env sh

set -x

doit() {
  [ -e ~/.config/nvim ] && rm -rf ~/.config/nvim; ln -s ~/.dotfiles/.config/nvim ~/.config/nvim
  [ -e ~/.config/fish ] && rm -rf ~/.config/fish; ln -s ~/.dotfiles/.config/fish ~/.config/fish
  [ -e ~/.config/yazi ] && rm -rf ~/.config/yazi; ln -s ~/.dotfiles/.config/yazi ~/.config/yazi
  [ -e ~/.config/alacritty ] && rm -rf ~/.config/alacritty; ln -s ~/.dotfiles/.config/alacritty ~/.config/alacritty
  [ -e ~/.tmux.conf ] && rm -rf ~/.tmux.conf; ln -s ~/.dotfiles/.config/tmux/.tmux.conf ~/.tmux.conf

  ##Sway
  [ -e ~/.config/sway/config ] && rm -rf ~/.config/sway/config; ln -s ~/.dotfiles/.config/sway/config ~/.config/sway/config
  [ -e ~/.config/sway/swaybar ] && rm -rf ~/.config/sway/swaybar; ln -s ~/.dotfiles/.config/sway/swaybar ~/.config/waybar

  ##FreeBSD
  [ -e ~/.profile ] && rm -rf ~/.profile; ln -s ~/.dotfiles/.config/freebsd/.profile ~/.profile

  ##Other
  [ -e ~/.config/fcitx5 ] && rm -rf ~/.config/fcitx5; ln -s ~/.dotfiles/.config/fcitx5 ~/.config/fcitx5
  [ -e ~/temp/errorlogs ] && rm -rf ~/temp/errorlogs; ln -s ~/.dotfiles/other/errorlogs ~/temp/errorlogs
}

# exec
doit
