# Setup fzf
# ---------
if [[ ! "$PATH" == */home/twelch/.local/src/fzf/bin* ]]; then
  export PATH="${PATH:+${PATH}:}/home/twelch/.local/src/fzf/bin"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "/home/twelch/.local/src/fzf/shell/completion.bash" 2> /dev/null

# Key bindings
# ------------
source "/home/twelch/.local/src/fzf/shell/key-bindings.bash"
