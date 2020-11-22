### Cheatsheet: Vim

:Help

| key mapping          | command          | description                                                               |
| -------------------- | ---------------- | ------------------------------------------------------------------------- |
|                      | :h <topic>       | Display help                                                              |
|                      | :Helptags        | List help tags                                                            |

:Quit

| key mapping          | command          | description                                                               |
| -------------------- | ---------------- | ------------------------------------------------------------------------- |
|                      | :q               | Quit without saving                                                       |
| QZ                   | :q!              | Quit without saving, even if there are unwritten changes                  |
|                      | :wq              | Save and quit                                                             |
| ZZ                   | :x, :exit        | Quit, saving only if there are unsaved changed                            |
|                      | :qa, :quitall    | Quit all                                                                  |

:Files

| key mapping          | command          | description                                                               |
| -------------------- | ---------------- | ------------------------------------------------------------------------- |
|                      | :e <path>        | Open file <path>                                                          |
| `\<leader>E`         | :Files           | List[^fzf] files in current working directory                             |
| `\<leader>e`         | :GFiles          | List files in current git worktree                                        |
| `\<leader><enter>`   | :Buffers         | List open buffers                                                         |
|                      | :GFiles?         | List files from git status                                                |
|                      | :w               | Write current buffer                                                      |
|                      | :w <path>        | Write current buffer to <path>                                            |
|                      | :bd              | Close current buffer                                                      |

:Motion

| key mapping          | command          | description                                                               |
| -------------------- | ---------------- | ------------------------------------------------------------------------- |
| `h`,`j`,`k`,`l`      |                  | Move left, down, up, right                                                |
| `b`,`w`,`B`,`W`      |                  | Move by word                                                              |
| `e`                  |                  | Move to end of word                                                       |
| `gg`, `G`            |                  | Move to begining/end of buffer                                            |
| `Ctrl-d`             |                  | Move down 1/2 screen                                                      |
| `Ctrl-f`             |                  | Move down one full screen                                                 |
| `Ctrl-u`             |                  | Move up 1/2 screen                                                        |
| `Ctrl-b`             |                  | Move up one full screen                                                   |
| `}`, `{`             |                  | Jump to next/previous paragraph/function/block                            |
| `%`                  |                  | Jump to matching punctuation ({},(),[], etc.)                             |
| `fx`                 |                  | Jump to next occurrence of x                                              |
| `Fx`                 |                  | Jump to previous occurrence of x                                          |
| `tx`                 |                  | Jump to before next occurrence of x                                       |
| `Tx`                 |                  | Jump to after previous occurrence of x                                    |

:Scrolling

| key mapping          | command          | description                                                               |
| -------------------- | ---------------- | ------------------------------------------------------------------------- |
| `zz`                 |                  | Center cursor on screen                                                   |

:Searching

| key mapping          | command          | description                                                               |
| -------------------- | ---------------- | ------------------------------------------------------------------------- |
|                      | :Lines           | List (and fuzzy find) lines in loaded buffers                             |
|                      | :BLines          | List (and fuzzy find) lines in current buffer                             |
|                      | :Ag [pattern]    | List ag[^ag] search result (Alt-A to select all, Alt-D to deselect all)   |
|                      | :Rg [pattern]    | List rg[^rg] search result (Alt-A to select all, Alt-D to deselect all)   |

:Marks

| key mapping          | command          | description                                                               |
| -------------------- | ---------------- | ------------------------------------------------------------------------- |
|                      | :Marks           | List marks                                                                |
| `ma`                 |                  | Set mark a (can be any letter a-z)                                        |
| `` `a``              |                  | jump to mark a                                                            |
| 2 backticks          |                  | jump to position before the last jump                                     |

:Text editing

| key mapping          | command          | description                                                               |
| -------------------- | ---------------- | ------------------------------------------------------------------------- |

:Copy and paste

| key mapping          | command          | description                                                               |
| -------------------- | ---------------- | ------------------------------------------------------------------------- |
| `y<motion>`          |                  | Copy text based on motion                                                 |
| `y`                  |                  | Copy highlighted text                                                     |
| ``y`a``              |                  | yank text to position of mark a                                           |

:Tables[^table-mode]

| key mapping          | command          | description                                                               |
| -------------------- | ---------------- | ------------------------------------------------------------------------- |
| `\<leader>tm`        | :TableModeToggle | Table mode allows for nicely formatted markdown tables                    |
|                      | :TableRealign    | Reformat the current table                                                |

:Coding

| key mapping          | command          | description                                                               |
| -------------------- | ---------------- | ------------------------------------------------------------------------- |
| `Ctrl-]`             |                  | Jump to tag under cursor                                                  |
| `gcc`                | :CommentaryLine  | Toggle comment current line                                               |
| `gc<motion>`         | :Commentary      | Toggle comment lines based on motion                                      |
| `gc`                 | :Commentary      | Toggle comment highlighted lines                                          |
|                      | :Tags            | List tags in the project                                                  |
|                      | :BTags           | List tags in the current buffer                                           |
|                      | :Commits         | List git[^fugitive] commits                                               |
|                      | :BCommits        | List commits for current buffer                                           |
|                      | :Snippets        | List snippets[^UltiSnips]                                                 |
| `ysiw)`              |                  | Surround[^surround] the inner word (iw) with )                            |
| `ysW)`               |                  | Surround to end of WORD                                                   |
| `cs"'`               |                  | Changing the text surrounded by " with '                                  |

:Wikis[^vimwiki]

| key mapping          | command          | description                                                               |
| -------------------- | ---------------- | ------------------------------------------------------------------------- |
| `\<leader>wt`        |                  | Open wiki index                                                           |
| `\<leader>ws`        | :VimwikiUISelect | List wikis and select one to enter                                        |

:Repeating

| key mapping          | command          | description                                                               |
| -------------------- | ---------------- | ------------------------------------------------------------------------- |
| `.`                  |                  | Repeat last command                                                       |
| `;`                  |                  | Repeat last f,t,F,T movement                                              |
| `,`                  |                  | Repeat last f,t,F,T movement backwards                                    |


[^vimwiki]: Wikis are powered by [VimWiki](https://github.com/vimwiki/vimwiki)
[^fzf]: Lists are powered by [fzf.vim](https://github.com/junegunn/fzf.vim)
[^fugitive]: Git is powered by [vim-fugitive](https://github.com/tpope/vim-fugitive)
[^surround]: Surrounds are powered by [vim-surround](https://github.com/tpope/vim-surround)
[^table-mode]: Tables are powered by [vim-table-mode](htts://github.com/dhruvasagar/vim-table-mode)
