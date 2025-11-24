#
# .profile - Bourne Shell startup script for login shells
#
# see also sh(1), environ(7).
#

# These are normally set through /etc/login.conf.  You may override them here
# if wanted.
# PATH=/sbin:/bin:/usr/sbin:/usr/bin:/usr/local/sbin:/usr/local/bin:$HOME/bin; export PATH

# Setting TERM is normally done through /etc/ttys.  Do only override
# if you're sure that you'll never log in via telnet or xterm or a
# serial line.
# TERM=xterm; 	export TERM

EDITOR=vi;   	export EDITOR
PAGER=less;  	export PAGER

# set ENV to a file invoked each time sh is started for interactive use.
ENV=$HOME/.shrc; export ENV

# Let sh(1) know it's at home, despite /home being a symlink.
if [ "$PWD" != "$HOME" ] && [ "$PWD" -ef "$HOME" ] ; then cd ; fi

# Query terminal size; useful for serial lines.
if [ -x /usr/bin/resizewin ] ; then /usr/bin/resizewin -z ; fi

# Display a random cookie on each login.
if [ -x /usr/bin/fortune ] ; then /usr/bin/fortune freebsd-tips ; fi

#. "$HOME/.cargo/env"
if [ -f ~/$HOME/.cargo/env ] ; then . "$HOME/.cargo/env" ; fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then PATH="$HOME/bin:$PATH" ; fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/.local/bin" ] ; then PATH="$HOME/.local/bin:$PATH" ; fi
PATH="/usr/local/bin:/usr/local/sbin:$PATH:/hhhhh"
#####input method framework
#export GTK_IM_MODULE=fcitx5
#export QT_IM_MODULE=fcitx5
#export XMODIFIERS="@im=fcitx5"
#export GTK_IM_MODULE DEFAULT=fcitx5
#export QT_IM_MODULE DEFAULT=fcitx5
#export XMODIFIERS DEFAULT=@im=fcitx5

export TERM=xterm-color

eval "$($HOME/.homebrew/bin/brew shellenv)"
