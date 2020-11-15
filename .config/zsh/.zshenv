# Sourced on all invocations of the shell unless -f option is set
# Should not contain commands that produce output or assume a tty

source .profile

# Clean home directory
mkdir -p "$XDG_DATA_HOME"/zsh
export HISTFILE="$XDG_DATA_HOME"/zsh/history
