source .profile

# Clean home directory
mkdir -p "$XDG_DATA_HOME"/bash
export HISTFILE="$XDG_DATA_HOME"/bash/history
export BASH_COMPLETION_USER_DIR="$XDG_DATA_HOME"/bash/completions

# Completions
[ -f /usr/share/bash-completion/bash-completion ] && source /usr/share/bash-completion/bash-completion

# Run bashrc
[ -f ~/.bashrc ] && source ~/.bashrc
