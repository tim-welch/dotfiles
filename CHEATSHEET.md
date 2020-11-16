# Cheatsheet

## Bash
### Fuzzy completion
<details>
<summary>I use [`fzf`](https://github.com/junegunn/fzf#fuzzy-completion-for-bash-and-zsh) for fuzzy completion.</summary>

#### Files and directories

Use `**<tab>` to bring up a list of files and directories to select from:
```
<command> [DIRECTORY/][FUZZY_PATTERN]**<tab>
```

#### Process IDs

Press tab after the `kill` command to bring up a list of processes:
```
kill -9 <tab>
```

#### Host names

Host names are extracted from /etc/hosts and ~/.ssh/config for use with `ssh`. Use `**<tab>` to bring up a list:
```
ssh **<tab>
```

#### Environment variables / aliases
Use `**<tab>` to bring up a list of environment variables and aliaes for use with `unset`, `export`, and `unalias`:
```
unset **<tab>
export **<tab>
unalias **<tab>
```

#### Supported commands
Get a list of commands supporting fuzzy completion:
```
complete | grep _fzf
```

Enable other commands:
```
# usage: _fzf_setup_completion path|dir|var|alias|host COMMANDS...
_fzf_setup_completion path ag git kubectl
_fzf_setup_completion dir tree
```

Custom fuzzy completion is also possible for person scripts and apps:
```
# Custom fuzzy completion for "doge" command
#   e.g. doge **<TAB>
_fzf_complete_doge() {
  _fzf_complete --multi --reverse --prompt="doge> " -- "$@" < <(
    echo very
    echo wow
    echo such
    echo doge
  )
}
```
</details>

