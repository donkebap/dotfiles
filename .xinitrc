[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources

setxkbmap -option ctrl:escape

systemctl --user import-environment DISPLAY

exec i3
