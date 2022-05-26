. "$HOME/.cargo/env"
# export GTK_IM_MODULE=fcitx
# export QT_IM_MODULE=fcitx
# export XMODIFIERS="@im=fcitx"
#nohup unclutter -idle 10 &
#nohup keynav &
if [ "$XDG_SESSION_TYPE" = "wayland" ] ; then
    # https://github.com/swaywm/sway/issues/595
    export _JAVA_AWT_WM_NONREPARENTING=1
fi
