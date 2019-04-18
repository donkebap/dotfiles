[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources

setxkbmap -option caps:swapescape

systemctl --user import-environment DISPLAY

exec i3
