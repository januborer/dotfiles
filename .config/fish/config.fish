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
    export PATH="$HOME/.cargo/bin:$HOME/bin:$PATH:/usr/local/go/bin:/var/lib/snapd/snap/bin"
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
