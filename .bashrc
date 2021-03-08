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
#shopt -s progcomp_alias # Allow programmable completion through aliases

[ "$TERM" = "alacritty" ] && export TERM=xterm-256color

# Aliases
for f in "$ALIAS_USER_DIR"/*; do source "$f"; done
for f in "$ALIAS_USER_LOCAL_DIR"/*; do source "$f"; done

# Completions
[ -d $BASH_COMPLETION_USER_DIR ] && for f in "$BASH_COMPLETION_USER_DIR"/*; do source "$f"; done

# Prompt
source "$XDG_CONFIG_HOME/bash/prompt"
source "/home/twelch/.local/share/cargo/env"

#GWSL_EXPORT_DISPLAY
ipconfig_exec=$(wslpath "C:\\Windows\\System32\\ipconfig.exe")
if [ -x $(which ipconfig.exe) ]
then
    ipconfig_exec=$(which ipconfig.exe)
fi

wsl2_d_tmp=$($ipconfig_exec | grep -n -m 1 "Default Gateway.*: [0-9a-z]" | cut -d : -f 1)
if [ -n $wsl2_d_tmp ]
then
    first_line=$(expr $wsl2_d_tmp - 4)
    wsl2_d_tmp=$($ipconfig_exec | sed $first_line,$wsl2_d_tmp!d | grep IPv4 | cut -d : -f 2 | sed -e "s|\s||g" -e "s|\r||g")
    export DISPLAY="$wsl2_d_tmp:0"
else
    export DISPLAY=$(cat /etc/resolv.conf | grep nameserver | awk "{print $2}"):0
fi
