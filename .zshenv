# Ensure that a non-login, non-interactive shell has a defined environment.
if [[ "$SHLVL" -eq 1 && ! -o LOGIN && -s "${ZDOTDIR:-$HOME}/.zprofile" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprofile"
fi

export HISTORY_IGNORE="(ls *|l *|exit|cd *|pwd|pass*|mpv *|ranger *|sxiv *)"

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

export RANGER_LOAD_DEFAULT_RC=FALSE
# Needed to launch alacritty in ranger with :terminal
export TERMCMD=alacritty
export PATH="/usr/lib/ccache/bin/:$PATH"
export MAKEFLAGS="-j5 -l4"
export _JAVA_OPTIONS='-Dawt.useSystemAAFontSettings=on -Dswing.aatext=true -Dsun.java2d.opengl=true'

# intel-media-driver hardware acceleration
export LIBVA_DRIVERS_PATH=/usr/lib/dri
export LIBVA_DRIVER_NAME=iHD

# For swaywm
# export GDK_BACKEND=wayland
# export CLUTTER_BACKEND=wayland
# export QT_QPA_PLATFORM=wayland-egl
# export SDL_VIDEODRIVER=wayland
export _JAVA_AWT_WM_NONREPARENTING=1

systemctl --user import-environment DISPLAY WAYLAND_DISPLAY

