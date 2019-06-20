alias e="$EDITOR"
alias ew="$VISUAL"
alias zshconfig="e ~/.zshrc"
alias swayconf="e ~/.config/sway/config"
alias l="exa -lagh --group-directories-first"
alias ls="exa"
alias vim="nvim"
alias kcd='kubectl config set-context $(kubectl config current-context) --namespace '
alias snip="slurp | xargs -I {} grim -g {}"

# emacs key binding
bindkey -e
bindkey "^[[3~" delete-char
bindkey '^[[1;5D' backward-word
bindkey '^[[1;5C' forward-word

if type "antibody" > /dev/null; then
    if [[ ! -f ~/.zsh_plugins.sh && -f ~/.zsh_plugins.txt ]]; then
        echo "Creating .zsh_plugins.sh"
        antibody bundle < ~/.zsh_plugins.txt > ~/.zsh_plugins.sh
    fi
    source ~/.zsh_plugins.sh
else
    echo "Antibody is not installed."
fi
