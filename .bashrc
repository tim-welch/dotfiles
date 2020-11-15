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

# Enable vi mode
set -o vi

# Completions
for f in "$BASH_COMPLETION_USER_DIR"/*; do source "$f"; done

# Aliases
for f in "$ALIAS_USER_DIR"/*; do source "$f"; done
for f in "$ALIAS_USER_LOCAL_DIR"/*; do source "$f"; done
