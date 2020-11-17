" General settings
autocmd! BufWritePost $MYVIMRC source %  " Automatically source vimrc when it is saved
syntax enable                            " Enable syntax highlighting
"set term=xterm                           " Required for mouse when running vim in alacritty
set mouse=a                              " Enable the mouse
set hidden                               " Key multiple buffers open
set encoding=utf-8                       " Use utf-8
set fileencoding=utf-8                   " Use utf-8 when saving file
set nobackup                             " Don't backup edited files
set nowritebackup                        " Don't backup edited files
set clipboard=unnamedplus                " Copy and paste between vim and the rest of the system


