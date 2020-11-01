# XDG Base Directories
export XDG_DATA_HOME=${XDG_DATA_HOME:="$HOME/.local/share"}
export XDG_CACHE_HOME=${XDG_CACHE_HOME:="$HOME/.cache"}
export XDG_CONFIG_HOME=${XDG_CONFIG_HOME:="$HOME/.config"}

# Clean home directory
export ZDOTDIR="$XDG_CONFIG_HOME"/zsh
export HISTFILE="$XDG_DATA_HOME"/zsh/history
export CARGO_HOME="$XDG_DATA_HOME"/cargo
#export LESSKEY="$XDG_CONFIG_HOME"/less/lesskey
export LESSHISTFILE="$XDG_CACHE_HOME"/less/history
export XINITRC="$XDG_CONFIG_HOME"/X11/xinitrc
export VIMINIT='source "$XDG_CONFIG_HOME/vim/vimrc"'
mkdir -p "$XDG_DATA_HOME"/vim/undo
mkdir -p "$XDG_DATA_HOME"/vim/swap
mkdir -p "$XDG_DATA_HOME"/vim/backup
mkdir -p "$XDG_DATA_HOME"/vim/view

# History
HISTSIZE=1000
SAVEHIST=1000
