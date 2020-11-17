" Key maps
" backup
let g:mapleader = " "        " Set leader key to space bar

" Disable arrow keys to force use of vim keys for navigation
noremap <Down> <Nop>
noremap <Up> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>
inoremap <Down> <Nop>
inoremap <Up> <Nop>
inoremap <Left> <Nop>
inoremap <Right> <Nop>


" Copy and paste like a terminal
map <silent> <S-Insert> "*p
imap <silent> <S-Insert> <Esc>"*pa
map <silent> <C-V> "+p
imap <silent> <C-V> <Esc>"+pa
map <silent> <C-C> "+y
imap <silent> <C-C> <Esc>"+y

" Use Ctrl hjkl to move between windows
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
"
" Tab between buffers
nnoremap <TAB> :bnext<CR>
nnoremap <S-TAB> :bprevious<CR>

" Better indent shifting
vnoremap < <gv
vnoremap > >gv

" Manage todo lists
nnoremap <F9> :e ~/todo/todo.md<CR>
nnoremap <S-F9> :call win_gotoid(bufwinid('todo.md'))<CR>
nnoremap <C-F9> :Files ~/todo/<CR>
nnoremap <M-F9> :e ~/todo/<CR>

" Manage my vim configuration
nnoremap <F12> :e $MYVIMRC<CR>

" clang-format
map <C-A> :pyf ~/.local/share/clang/clang-format.py<cr>
imap <C-A> <c-o>:pyf ~/.local/share/clang/clang-format.py<cr>
