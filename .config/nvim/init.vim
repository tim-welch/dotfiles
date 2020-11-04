" General settings
autocmd! BufWritePost $MYVIMRC source %  " Automatically source vimrc when it is saved
syntax enable                            " Enable syntax highlighting
set mouse=a                              " Enable the mouse
set hidden                               " Key multiple buffers open
set encoding=utf-8                       " Use utf-8
set fileencoding=utf-8                   " Use utf-8 when saving file
set nobackup                             " Don't backup edited files
set nowritebackup                        " Don't backup edited files
set clipboard=unnamedplus                " Copy and paste between vim and the rest of the system

" Line numbers
set number             " Display current line number
set relativenumber     " Display relative line numbers from current line

" Tab settings
set tabstop=4      " Tabs are 4 chars wide
set shiftwidth=4   " Indent at 4 chars
set smarttab       " Let tab figure out 2 vs 4 tabs
set expandtab      " Convert tabs to spaces
set smartindent    " Let vim figure out indenting
set autoindent     " Automattically indent

" Colors
set cursorline                                   " Highlight the current line
set t_Co=256                                     " Use 256 colors
set background=dark                              " Dark background
autocmd vimenter * ++nested colorscheme gruvbox  " Use gruvbox color scheme

" Key maps
" backup
let g:mapleader = "\<Space>"        " Set leader key to space bar

" Use Ctrl hjkl to move between windows
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Use Alt hjkl to resize windows
nnoremap <M-j> :resize -2<CR>
nnoremap <M-k> :resize +2<CR>
nnoremap <M-h> :vertical resize -2<CR>
nnoremap <M-l> :vertical resize +2<CR>

" Tab between buffers
nnoremap <TAB> :bnext<CR>
nnoremap <S-TAB> :bprevious<CR>

" Better indent shifting
vnoremap < <gv
vnoremap > >gv
