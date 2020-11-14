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

# History
mkdir -p $XDG_DATA_HOME/zsh
HISTFILE=$XDG_DATA_HOME/zsh/histfile
HISTSIZE=1000
SAVEHIST=1000

# vi mode
bindkey -v

# powerlevel10k theme

