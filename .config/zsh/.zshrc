# Sourced in interactive shells

# Quit if not interactive
[[ $- != *i* ]] && return

# Auto Completion
fpath+=${ZDOTDIR:-~}/.zsh_functions
zstyle ':completion:*' completer _complete _ignored
zstyle :compinstall filename '/home/twelch/.zshrc'
autoload -Uz compinit
mkdir -p $XDG_CACHE_HOME/zsh
compinit -d $XDG_CACHE_HOME/zsh/zcompdump-$ZSH_VERSION

# No beep on error
unsetopt beep

# vi mode
bindkey -v
fpath+=${ZDOTDIR}/.zsh_functions

# Aliases
for f in "$ALIAS_USER_DIR"/*; do source "$f"; done
for f in "$ALIAS_USER_LOCAL_DIR"/*; do source "$f"; done
