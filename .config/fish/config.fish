set -x DOTFILES $HOME/.dotfiles
#
set -x PATH \
    $PATH \
    $HOME/.cargo/bin \
    $HOME/.yarn/bin \
    $HOME/.npm-global/bin \
    $HOME/bin \
    $HOME/.local/bin \
    $DOTFILES/bin \
    /usr/local/bin \
    /usr/local/sbin \
    /usr/bin \
    /bin \
    /usr/sbin \
    /sbin
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
if status is-login
    # If running in Wayland, set environment variables.
    if test -n "$WAYLAND_DISPLAY"
        # set -xg XDG_RUNTIME_DIR /var/run/user/$(id -u)
        set -xg WLR_NO_HARDWARE_CURSORS 1
        set -xg QT_QPA_PLATFORM wayland
        set -xg QT_WAYLAND_DISABLE_WINDOWDECORATION 1
        # set -xg GDK_DPI_SCALE 0.5

        set -gx SDL_IM_MODULE fcitx5
        set -xg QT_IM_MODULE fcitx5
        set -xg GTK_IM_MODULE fcitx5
        set -xg XMODIFIERS @im=fcitx5
    end
end
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

  export EDITOR=nvim
  export PAGER=less

  ########## Aliases ##########
  alias tnew="tmux new -s"
  alias tto="tmux attach -t"
  alias vim="nvim"
  alias trans="trans -b -t zh"
  alias pdfr="zathura"
  #alias man="vimman"
  alias ls="exa"
  alias my_audio=pulsemixer
  # alias yay="trizen"
  # alias trans="trans :zh"
  ######alias command########

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

# if status is-login
  # Commands to run in login sessions can go here

  ##############WM################
  ##export WAYLAND_DISPLAY=alacritty
  #  if [ "$(tty)" = "/dev/tty1" ] && [ "$USER" = "borer" ]
    # exec sway
    #exec startxfce4
    #  exec sway -c ~/.config/sway/config
    # exec nxss
    #exit 0
    #end

# end


###########FUNCTIONS##########
set PROXY_IP "192.168.2.14"
#set PROXY_IP "192.168.68.236"
#set PROXY_IP "10.47.182.136"
set PROXY_SOCKS_PORT "1080"
#set PROXY_HTTP_PORT "8080"
set PROXY_SOCKS_TYPE "socks5h"
#set PROXY_HTTP_TYPE "http"
set PROXY_VALUE "$PROXY_SOCKS_TYPE://$PROXY_IP:$PROXY_SOCKS_PORT"
#set PROXY_VALUE "$PROXY_HTTP_TYPE://$PROXY_IP:$PROXY_HTTP_PORT"
function proxy_on
  #set NO_PROXY "localhost,127.0.0.1,10.0.0.0/8,172.16.0.0/12,192.168.0.0/16,.local,$PROXY_IP"
  set NO_PROXY "localhost,127.0.0.1"
  #set -l gateway (ip route | string match -r 'default via [0-9.]+' | string replace -r '.*via ' '' | string trim)
  #or set -l gateway "$PROXY_IP"
  set -gx http_proxy "$PROXY_VALUE"
  set -gx HTTP_PROXY "$PROXY_VALUE"
  set -gx https_proxy "$PROXY_VALUE"
  set -gx HTTPS_PROXY "$PROXY_VALUE"
  set -gx ALL_PROXY "$PROXY_VALUE"
  set -gx all_proxy "$PROXY_VALUE"
  set -gx NO_PROXY "$NO_PROXY"
  set -gx no_proxy "$NO_PROXY"
  #########git proxy#############
  #git config --global http.proxy "$HTTP_PROXY_VALUE" 2>/dev/null || true
  #git config --global https.proxy "$HTTP_PROXY_VALUE" 2>/dev/null || true
  #git config --global http.proxy "$PROXY_VALUE" 2>/dev/null || true
  #git config --global https.proxy "$PROXY_VALUE" 2>/dev/null || true
  #set -gx GIT_PROXY_COMMAND 'sh -c "exec socat - \"PROXY:192.168.68.236:\$1:\$2,proxyport=1080\"" - $1 $2'
  #set -gx GIT_PROXY_COMMAND "ncat --proxy $PROXY_VALUE $1 $2"
  echo -e "Proxy on"
end

function check_hotspot
  if not curl --connect-timeout 5 --proxy "$proxy" http://httpbin.org/ip >/dev/null 2>&1
    echo "Socks5 cant use."
    return 1
  else
    echo "Socks5 can use."
    return 1
  end
end
function proxy_off
  set -e http_proxy https_proxy HTTP_PROXY HTTPS_PROXY NO_PROXY no_proxy
  #git config --global --unset http.proxy
  #git config --global --unset https.proxy
  echo -e "\nProxy off"
end

###yazi####
function y
  set tmp (mktemp -t "yazi-cwd.XXXXXX")
  yazi $argv --cwd-file="$tmp"
  if read -z cwd < "$tmp"; and [ -n "$cwd" ]; and [ "$cwd" != "$PWD" ]
  builtin cd -- "$cwd"
  end
  rm -f -- "$tmp"
end

#if string match -q "$TTY" "/dev/tty1" && string match -q "USER" "borer"
#  exec sway -c .config/sway/config
#end

## prevent create *.core
ulimit -c 0

#############################
