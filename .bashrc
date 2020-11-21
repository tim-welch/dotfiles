# Order of initialization:
# - Interactive login shell (ssh or local login):
# -- /etc/profile
# -- Then, first of: ~/.bash_profile, ~/.bash_login, ~/.profile
# - Interactive non-login shell (new shell):
# -- ~/.bashrc
# - Non-interactive shell (e.g. to run a shell script)
# -- Source the file in $BASH_ENV


# Quit if not interactive
[[ $- != *i* ]] && return

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# Configure the shell
set -o vi             # Enable vi mode
shopt -s autocd       # cd into a directory
shopt -s checkjobs    # check for stopped or running jobs before exiting shell
shopt -s checkwinsize # Reset LINES and COLUMNS after each command completes
shopt -s dotglob      # Match dotfiles in pathname expansion
shopt -s globstar   # Enable ** in pathnames
shopt -s histappend   # Append to HISTFILE rather than overwrite
shopt -s histverify   # Don't automattically execute history substitution
shopt -s nocaseglob   # Ignore case when performing pathname expansion
shopt -s progcomp_alias # Allow programmable completion through aliases

# Aliases
for f in "$ALIAS_USER_DIR"/*; do source "$f"; done
for f in "$ALIAS_USER_LOCAL_DIR"/*; do source "$f"; done

# Completions
for f in "$BASH_COMPLETION_USER_DIR"/*; do source "$f"; done

# Prompt
source "$XDG_CONFIG_HOME/bash/prompt"
