source "${HOME}/.zgen/zgen.zsh"
if ! zgen saved; then
    zgen prezto * color 'yes'
    zgen prezto prompt theme 'sorin'
    zgen prezto
    zgen prezto completion
    zgen save
fi

alias e="$EDITOR"
alias ew="$VISUAL"
alias zshconfig="e ~/.zshrc"
alias i3conf="e ~/.config/i3/config"
alias i3bconf="e ~/.config/i3/i3blocks.conf"
alias l="exa -lagh --group-directories-first"
alias ls="exa"
alias vim="nvim"
alias kcd='kubectl config set-context $(kubectl config current-context) --namespace '
alias snip="slurp | xargs -I {} grim -g {}"
