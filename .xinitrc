[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources

setxkbmap -option ctrl:nocaps

systemctl --user import-environment DISPLAY
