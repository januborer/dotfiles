#/bin/bash
vimman="man "
for i in "$*"; do
    vimman="$vimman"$i
done
$vimman | nvim -R +":set ft=man" -
