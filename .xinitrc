[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources

setxkbmap -option ctrl:nocaps

#compton --config ~/.config/compton.conf -b

systemctl --user import-environment DISPLAY
exec i3
