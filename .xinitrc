[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources

setxkbmap -option ctrl:nocaps

compton --config ~/.config/compton.conf -b

exec awesome
