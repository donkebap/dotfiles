# Ensure that a non-login, non-interactive shell has a defined environment.
if [[ "$SHLVL" -eq 1 && ! -o LOGIN && -s "${ZDOTDIR:-$HOME}/.zprofile" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprofile"
fi

HISTORY_IGNORE="(ls *|exit|cd*|pwd|pass*)"

if [ -d "$HOME/.cargo/bin" ] ; then
    export PATH="$HOME/.cargo/bin:$PATH"
fi

if [ -d "${HOME}/.npm-packages" ] ; then
    NPM_PACKAGES="$HOME/.npm-packages"
    export PATH="$NPM_PACKAGES/bin:$PATH"
    # Unset manpath so we can inherit from /etc/manpath via the `manpath` command
    unset MANPATH # delete if you already modified MANPATH elsewhere in your config
    export MANPATH="$NPM_PACKAGES/share/man:$(manpath)"
fi

RANGER_LOAD_DEFAULT_RC=FALSE

export PATH="/usr/lib/ccache/bin/:$PATH"
export MAKEFLAGS="-j5 -l4"
export _JAVA_OPTIONS='-Dawt.useSystemAAFontSettings=on -Dswing.aatext=true -Dsun.java2d.opengl=true'
# -Dswing.defaultlaf=com.sun.java.swing.plaf.gtk.GTKLookAndFeel'

export GTK_THEME="Arc"
export GTK2_RC_FILES="/usr/share/themes/Arc/gtk-2.0/gtkrc"
