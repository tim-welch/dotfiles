# XDG Base Directories
export XDG_DATA_HOME=${XDG_DATA_HOME:="$HOME/.local/share"}
export XDG_CACHE_HOME=${XDG_CACHE_HOME:="$HOME/.cache"}
export XDG_CONFIG_HOME=${XDG_CONFIG_HOME:="$HOME/.config"}

# Clean home directory
mkdir -p "$XDG_DATA_HOME"/vim/undo
mkdir -p "$XDG_DATA_HOME"/vim/swap
mkdir -p "$XDG_DATA_HOME"/vim/backup
mkdir -p "$XDG_DATA_HOME"/vim/view
mkdir -p "$XDG_DATA_HOME"/bash
mkdir -p "$XDG_DATA_HOME"/bash/completions
export ZDOTDIR="$XDG_CONFIG_HOME"/zsh
export CARGO_HOME="$XDG_DATA_HOME"/cargo
#export LESSKEY="$XDG_CONFIG_HOME"/less/lesskey
export LESSHISTFILE="$XDG_CACHE_HOME"/less/history
export XINITRC="$XDG_CONFIG_HOME"/X11/xinitrc
export ALIAS_USER_DIR="$XDG_CONFIG_HOME"/aliases
export ALIAS_USER_LOCAL_DIR="$HOME"/.local/aliases
mkdir -p "$XDG_DATA_HOME"/vim/undo
mkdir -p "$XDG_DATA_HOME"/vim/swap
mkdir -p "$XDG_DATA_HOME"/vim/backup
mkdir -p "$XDG_DATA_HOME"/vim/view
mkdir -p "$ALIAS_USER_DIR"
mkdir -p "$ALIAS_USER_LOCAL_DIR"
[ -f "$ALIAS_USER_LOCAL_DIR" ] || echo "" > "$ALIAS_USER_LOCAL_DIR"/empty_aliases

# History
HISTSIZE=1000
SAVEHIST=1000
HISTCONTROL=ignoreboth # don't save duplicates or commands starting with space

# Default applications
export EDITOR=vim
export GIT_EDITOR=$EDITOR
export VISUAL=$EDITOR
export TERMINAL=terminator
export BROWSER=brave-browser

# Configure TeX Live
PATH="$PATH:/usr/local/texlive/2020/bin/x86_64-linux"
MANPATH="$MANPATH:/usr/local/texlive/2020/texmf-dist/doc/man"
INFOPATH="$INFOPATH:/usr/local/texlive/2020/texmf-dist/doc/info"

# Make sure user bin directories are at the beginning of PATH
PATH="/bin:${PATH#*/bin}"
PATH="/usr/bin:${PATH#*/usr/bin}"
PATH="/usr/local/bin:${PATH#*/usr/local/bin}"
PATH="$HOME/bin:${PATH#*$HOME/bin}" # Remove $HOME/bin and add it to the front of PATH
PATH="$HOME/.local/bin:${PATH#*$HOME/.local/bin}" # Remove $HOME/.local/bin and add it to the front of PATH
export PATH
