source /usr/share/zsh/share/antigen.zsh
antigen use prezto
antigen bundles <<EOBUNDLES
	sorin-ionescu/prezto modules/helper
	sorin-ionescu/prezto modules/editor
	sorin-ionescu/prezto modules/command-not-found
	sorin-ionescu/prezto modules/history-substring-search
	sorin-ionescu/prezto modules/git
	sorin-ionescu/prezto modules/prompt
EOBUNDLES
antigen apply

alias e="$EDITOR"
alias ew="$VISUAL"
alias zshconfig="e ~/.zshrc"
alias i3conf="e ~/.config/i3/config"
alias i3bconf="e ~/.config/i3/i3blocks.conf"
alias l="exa -lagh"
alias ls="exa"
alias vim="nvim"
alias kcd='kubectl config set-context $(kubectl config current-context) --namespace '
