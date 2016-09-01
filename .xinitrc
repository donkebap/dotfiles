[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources

setxkbmap -option caps:swapescape

exec i3
