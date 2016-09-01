# Ensure that a non-login, non-interactive shell has a defined environment.
if [[ "$SHLVL" -eq 1 && ! -o LOGIN && -s "${ZDOTDIR:-$HOME}/.zprofile" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprofile"
fi

if [ -d "$HOME/.cargo/bin" ] ; then
    export PATH="$HOME/.cargo/bin:$PATH"
fi

HISTORY_IGNORE="(ls *|exit|cd*|pwd|pass*)"
