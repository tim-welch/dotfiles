source $HOME/.profile

# Clean home directory
mkdir -p "$XDG_DATA_HOME"/bash
export HISTFILE="$XDG_DATA_HOME"/bash/history
export BASH_COMPLETION_USER_DIR="$XDG_DATA_HOME"/bash/completions

# Completions
[ -f /usr/share/bash-completion/bash-completion ] && source /usr/share/bash-completion/bash-completion

# Configure nix
[ -f $HOME/.nix-profile/etc/profile.d/nix.sh ] && . $HOME/.nix-profile/etc/profile.d/nix.sh

# Run bashrc
[ -f $HOME/.bashrc ] && source $HOME/.bashrc

# Add cargo bin
PATH="$HOME/.local/share/cargo/bin:${PATH#*$HOME/.local/share/cargo/bin}"

if [ -e /build/.nix-profile/etc/profile.d/nix.sh ]; then . /build/.nix-profile/etc/profile.d/nix.sh; fi # added by Nix installer
