" Key maps
" backup
let g:mapleader = "\<Space>"        " Set leader key to space bar

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
