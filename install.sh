#/bin/sh
# nvim
if [ ! -d "$HOME/.config/nvim/plugged" ]; then
       	mkdir -p $HOME/.config/nvim/plugged
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
# others
ln -sr ./shell_bins/vimman.sh $HOME/bin/vimman
ln -sr ./shell_bins/evince-open.sh $HOME/bin/evince-open

#####sway######
if [ ! -d "$HOME/.config/sway" ]; then
	mkdir $HOME/.config/sway
fi
ln -sr ./swayconfigs/sway_config $HOME/.config/sway/config
ln -sr ./swayconfigs/sway_run.sh $HOME/.config/sway/sway_run.sh

if [ ! -d "$HOME/.config/waybar" ]; then
	mkdir $HOME/.config/waybar
fi
ln -sr ./swayconfigs/waybarconfigs/config $HOME/.config/waybar/config
ln -sr ./swayconfigs/waybarconfigs/style.css $HOME/.config/waybar/style.css

ln -sr ./.alacritty.yml $HOME/.alacritty.yml
