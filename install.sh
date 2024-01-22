#/bin/sh
#pre install
SCRIPTPATH="$( cd "$(dirname "$0")" || exit; pwd -P )"

if [ ! -d "$HOME/temp" ]; then
  mkdir -p $HOME/temp
fi

#if [ ! -d "$HOME/temp/nerd-fonts" ]; then
#  git clone https://github.com/ryanoasis/nerd-fonts.git $HOME/temp/
#  $HOME/temp/nerd-fonts/install.sh
#fi
# nvim
if [ ! -d "$HOME/.config/nvim/plugged" ]; then
       	mkdir -p $HOME/.config/nvim/plugged
fi

if [ ! -d "$HOME/.config/spotify-tui" ]; then
       	mkdir -p $HOME/.config/spotify-tui
fi

if [ ! -d "$HOME/.config/nvim/autoload" ]; then
       	mkdir -p $HOME/.config/nvim/autoload
fi

if [ ! -d "$HOME/.config/nvim/edges" ]; then
       	mkdir -p $HOME/.config/nvim/edges
fi

if [ ! -d "$HOME/my-practices" ]; then
       	mkdir $HOME/my-practices
fi

if [ ! -d "$HOME/bin" ]; then
	mkdir $HOME/bin
fi

######nvim tmux zsh :: configs#####
# nvim
ln -sr ./.vimrc $HOME/.config/nvim/init.vim
ln -sr ./.nvimconfigs/.custom_vimrc $HOME/.config/nvim/.custom_vimrc
ln -sr ./.nvimconfigs/.plug_vimrc $HOME/.config/nvim/.plug_vimrc
ln -sr ./.nvimconfigs/.other_vimrc $HOME/.config/nvim/.other_vimrc
ln -sr ./.nvimconfigs/autoload/plug.vim $HOME/.config/nvim/autoload/plug.vim
ln -sr ./.nvimconfigs/edges/snippets $HOME/.config/nvim/edges/
# zsh
ln -sr ./.zshrc $HOME/.zshrc
ln -sr ./.other_zshrc $HOME/.other_zshrc
# keynav
ln -sr ./.keynavrc $HOME/.keynavrc
# tmux
ln -sr ./.tmux.conf $HOME/.tmux.conf
# profile
ln -sr ./.profile $HOME/.profile
ln -sr ./.profile $HOME/.bash_profile
ln -sr ./.xprofile $HOME/.xprofile
# others
ln -sr ./shell_bins/vimman.sh $HOME/bin/vimman
ln -sr ./shell_bins/ctrlcaps $HOME/bin/ctrlcaps
ln -sr ./shell_bins/nomachine-bore $HOME/bin/nomachine-bore
ln -sr ./shell_bins/install-rust $HOME/bin/install-rust
ln -sr ./shell_bins/evince-open.sh $HOME/bin/evince-open
ln -sr ./shell_bins/slwm $HOME/bin/slwm
ln -sr ./shell_bins/nxss $HOME/bin/nxss
ln -sr ./shell_bins/sdautoxrandr $HOME/bin/sdautoxrandr
ln -sr $HOME/qks/qks $HOME/bin/qks
ln -sr $HOME/qks/qks-client $HOME/bin/qks-client
ln -sr ./xfce4-terminal/terminalrc $HOME/.config/xfce4/terminal/terminalrc
ln -sr ./.config/starship.toml $HOME/.config/starship.toml

#####leftwm####

if [ ! -d "$HOME/.config/leftwm" ]; then
	mkdir -p $HOME/.config/leftwm
fi

if [ ! -d "$HOME/.config/leftwm/themes" ]; then
	mkdir -p $HOME/.config/leftwm/themes
fi
## install amber theme
ln -s ./leftwm/themes/jb-simple $HOME/.config/leftwm/themes/current
# if [ ! -d "$HOME/.config/leftwm/themes/current" ]; then
  # git clone https://github.com/di-effe/amber.git $HOME/.config/leftwm/themes/amber
  # ln -s $HOME/.config/leftwm/themes/amber $HOME/.config/leftwm/themes/current
# fi
##
# ln -sr ./leftwm/config.toml $HOME/.config/leftwm/config.toml
ln -sr ./leftwm/config.ron $HOME/.config/leftwm/config.ron
# ln -sr ./leftwm/themes.toml $HOME/.config/leftwm/themes.toml

#############################################################

#####sway######
# if [ ! -d "$HOME/.config/sway" ]; then
	# mkdir $HOME/.config/sway
# fi
# ln -sr ./swayconfigs/sway_config $HOME/.config/sway/config
# ln -sr ./swayconfigs/sway_run.sh $HOME/.config/sway/sway_run.sh

# if [ ! -d "$HOME/.config/waybar" ]; then
	# mkdir $HOME/.config/waybar
# fi
# ln -sr ./swayconfigs/waybarconfigs/config $HOME/.config/waybar/config
# ln -sr ./swayconfigs/waybarconfigs/style.css $HOME/.config/waybar/style.css
#############################################################

##################alacritty##################################
ln -sr ./alacritty/.alacritty.yml $HOME/.alacritty.yml
#############################################################

######spotify-tui#######
ln -sr ./spotify_configs/client.yml $HOME/.config/spotify-tui/client.yml
#############################################################
#
######clash#######
ln -sr $HOME/borer-git/secret_resources/clash.yml $HOME/.config/clash/config.yaml
#############################################################
