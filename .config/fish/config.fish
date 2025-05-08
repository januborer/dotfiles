# set -x DOTFILES $HOME/.dotfiles
#
# set -x PATH \
#     $PATH \
#     $HOME/.cargo/bin \
#     $HOME/dotfiles/bin \
#     $HOME/.local/bin \
#     $DOTFILES/bin \
#     /usr/local/bin \
#     /usr/local/sbin \
#     /usr/bin \
#     /bin \
#     /usr/sbin \
#     /sbin
#
# set -x GOPATH $HOME/GoWork
# set -x PATH $PATH $GOPATH/bin
#
# set -x PATH $PATH /opt/local/bin
#
# set -x FLYCTL_INSTALL $HOME/.fly
# set -x PATH $PATH $FLYCTL_INSTALL/bin
#
# if type -q -f nvim
#     set -x EDITOR nvim
#     set -x VISUAL nvim
# end
#
# if status is-interactive
#     # Key bindings.
#     bind --mode insert \cP up-or-search
#     bind --mode insert \cN down-or-search
#     bind --mode insert \cE accept-autosuggestion
#     bind --mode insert \cR history-pager
#
#
#     function proxy_on --argument proxy
#         if not string match -r '^(http|https|socks5)://[^/]+:[0-9]+$' $proxy > /dev/null
#             echo "Invalid proxy address. Please provide a valid http or https proxy address."
#             return 1
#         end
#
#         set -xg http_proxy $proxy
#         set -xg https_proxy $proxy
#         set -xg ftp_proxy $proxy
#         set -xg HTTP_PROXY $proxy
#         set -xg HTTPS_PROXY $proxy
#         set -xg FTP_PROXY $proxy
#         set -xg no_proxy "localhost, 127.0.0.1, ::1"
#         echo "Proxy environment variable set to $proxy"
#     end
#
#     function proxy_off
#         set -e http_proxy
#         set -e https_proxy
#         set -e ftp_proxy
#         set -e HTTP_PROXY
#         set -e HTTPS_PROXY
#         set -e FTP_PROXY
#         set -e no_proxy
#         echo "Proxy environment variables unset"
#     end
#
#     function generate_random --argument length
#         if not string match -r '^[0-9]+$' $length > /dev/null
#             echo "Invalid length. Please provide a valid length."
#             return 1
#         end
#
#         openssl rand -base64 $length | cut -c1-$length | tr -d '\n'
#     end
#
#     function fish_greeting
#         # If has fortune installed, display a random fortune.
#         if type -q -f fortune
#             fortune freebsd-tips
#         end
#     end
#
#     # Aliases.
#     alias df 'df -h'
#     alias dl 'cd ~/Downloads'
#     alias doc 'cd ~/Documents'
#     alias dt 'cd ~/Desktop'
#     alias ssh 'env TERM=xterm-256color ssh'
#     alias sudo 'sudo -E'
# end
#
# if status is-login
#     # If running in Wayland, set environment variables.
#     if test -n "$WAYLAND_DISPLAY"
#         set -xg XDG_RUNTIME_DIR /var/run/user/$(id -u)
#         set -xg WLR_NO_HARDWARE_CURSORS 1
#         set -xg QT_QPA_PLATFORM wayland
#         set -xg QT_WAYLAND_DISABLE_WINDOWDECORATION 1
#         set -xg GDK_DPI_SCALE 0.5
#
#         set -xg QT_IM_MODULE fcitx
#         set -xg GTK_IM_MODULE fcitx/xim
#         set -xg XMODIFIERS @im=fcitx
#     end
# end
#
# fish_config prompt choose informative_vcs
#
# alias assume="source /usr/local/bin/assume.fish"

#################################################
#################################################
#
if status is-interactive
    # Commands to run in interactive sessions can go here

    ############ Export #############
    # #@###fcitx5
    export GTK_IM_MODULE=fcitx5
    export QT_IM_MODULE=fcitx5
    export XMODIFIERS="@im=fcitx5"
    export GTK_IM_MODULE DEFAULT=fcitx5
    export QT_IM_MODULE DEFAULT=fcitx5
    export XMODIFIERS DEFAULT=@im=fcitx5

    ########## Aliases ##########
    # my-recent-study-book
    alias tnew="tmux new -s"
    alias tto="tmux attach -t"
    alias vim="nvim"
    alias man="vimman"
    alias ls="exa"
    # alias yay="trizen"
    # alias trans="trans :zh"
    export PATH="$HOME/.cargo/bin:$HOME/dotfiles/bin:$PATH:/usr/local/go/bin:/var/lib/snapd/snap/bin"
    ######alias command########
    alias my_audio=pulsemixer

    #############################


    ###########Changes##########
    # 交换ctrl和caps
    # /usr/bin/setxkbmap -option "ctrl:swapcaps"
    # setxkbmap -option "ctrl:swapcaps"
    # 还原所有键设置
    # /usr/bin/setxkbmap -option ""
    # exec nohup fcitx5 &
    ####tapping#####
    # xinput set-prop 13 304 1
    # xinput set-prop 13 283 1
    # source $HOME/dotfile/leftwm/up

    ########Source#########
    if  test -f "/home/borer/.config/broot/launcher/bash/br"
      # source  /home/borer/.config/broot/launcher/bash/br
    end
    # if [ -f ~/.fzf.zsh ]; then
        # source ~/.fzf.zsh
    # fi

    # if [ -f /usr/share/fzf/key-bindings.zsh ]; then
        # source /usr/share/fzf/key-bindings.zsh
    # fi
end

if status is-login
    # Commands to run in login sessions can go here

    ##############Desktop################
    #Leftwm
    ##export WAYLAND_DISPLAY=alacritty
    if [ "$(tty)" = "/dev/tty1" ] && [ "$USER" = "borer" ]
      # exec sway
      #exec startxfce4
      exec slwm
      # exec nxss
      exit 0
    end

    #Xfce4
    # if [ "$(tty)" = "/dev/tty2" ] && [ "$USER" = "borer" ]; then
      # export QT_QPA_PLATFORM=xcb
      # exec startxfce4
      # exit 0
      # end
end
