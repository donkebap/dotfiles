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
alias zshconfig="ew ~/.zshrc"
alias i3conf="ew ~/.config/i3/config"
alias i3bconf="ew ~/.config/i3/i3blocks.conf"
alias l="exa -lgah"
alias ls="exa"
alias vim="nvim"
