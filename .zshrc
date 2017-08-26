# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

alias e="$EDITOR"
alias ew="emacsclient -n -c"
alias zshconfig="$EDITOR ~/.zshrc"
alias i3conf="$EDITOR ~/.i3/config"
alias i3bconf="$EDITOR ~/.i3/i3blocks.conf"
alias appendn='function _appendn(){echo "\n$(cat $1)" >> $2;};_appendn'
alias l="ls -lah"
alias toogle-equalizer="/usr/bin/pulseaudio-equalizer toggle"
alias le="exa -la"
alias yxcv="shutdown now"

[[ -z "$TMUX" ]] && (tmux attach || tmux new-session)
