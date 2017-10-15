source /usr/share/zsh/share/antigen.zsh
antigen use prezto
antigen bundles <<EOBUNDLES
	sorin-ionescu/prezto modules/helper
	sorin-ionescu/prezto modules/editor
	sorin-ionescu/prezto modules/command-not-found
	sorin-ionescu/prezto modules/autosuggestions
	sorin-ionescu/prezto modules/history-substring-search
	sorin-ionescu/prezto modules/git
	sorin-ionescu/prezto modules/syntax-highlighting
	sorin-ionescu/prezto modules/prompt
EOBUNDLES
antigen apply

alias e="$EDITOR"
alias ew="emacsclient -n -c"
alias zshconfig="$EDITOR ~/.zshrc"
alias i3conf="$EDITOR ~/.i3/config"
alias i3bconf="$EDITOR ~/.i3/i3blocks.conf"
alias l="ls -lah"
alias le="exa -la"
