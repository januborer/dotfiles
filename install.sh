#!/usr/bin/env sh

set -x

ln -s ~/dotfiles/.config/nvim ~/.config/nvim
ln -s ~/dotfiles/.config/fish ~/.config/fish
# ln -s ~/dotfiles/.config/leftwm ~/.config/leftwm
ln -s ~/dotfiles/.config/alacritty ~/.confg/alacritty
ln -sr ~dotfiles/.tmux.conf ~/.tmux.conf
ln -sr ~dotfiles/.profile ~/.profile
ln -s ~/dotfiles/bin ~/bin

########leftwm#############
if [ ! -d "$HOME/.config/leftwm" ]; then
	mkdir -p $HOME/.config/leftwm
fi

if [ ! -d "$HOME/.config/leftwm/themes" ]; then
	mkdir -p $HOME/.config/leftwm/themes
fi
## install amber theme
ln -s ~/dotfiles/.config/leftwm/themes/jb-simple ~/.config/leftwm/themes/current
# if [ ! -d "$HOME/.config/leftwm/themes/current" ]; then
  # git clone https://github.com/di-effe/amber.git $HOME/.config/leftwm/themes/amber
  # ln -s $HOME/.config/leftwm/themes/amber $HOME/.config/leftwm/themes/current
# fi
##
# ln -sr ./leftwm/config.toml $HOME/.config/leftwm/config.toml
ln -sr ~/dotfiles/.config/leftwm/config.ron ~/.config/leftwm/config.ron
# ln -sr ./leftwm/themes.toml $HOME/.config/leftwm/themes.toml

#############################################################
