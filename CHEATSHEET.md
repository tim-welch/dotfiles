# Cheatsheet

## Bash
### search history
<details>
<summary>ctrl-r to search history</summary>
As normal for bash `<ctrl>-r` is used to search history. Mine is configured as a fuzzy search.
</details>

### vi mode
<details>
<summary>Press escape to enter vi mode</summary>
  The command line defaults to insert mode. In insert mode, the cursor is a vertical line which changes to a solid box in command mode.

  The following keys can be used to edit the command:
  
  - `<esc>` - enter normal mode
  - `a,i,A,I` - reenter insert mode
  - `h,j,k,l` - movement keys
  - `b,w,e` - move between words
  - `^,$` - move to start and end of line
  - `d,y,p` - delete, yank, paste
  - `v` - bring up the current command line in vim for editing; command is executed upon exiting vim

  
</details>

### fuzzy completion
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

