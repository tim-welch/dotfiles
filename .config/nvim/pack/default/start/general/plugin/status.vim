" https://kadekillary.work/post/statusline-vim/
" Dictionary: take mode() input -> longer notation of current mode
" mode() is defined by Vim
let g:currentmode={ 'n' : 'Normal', 'no' : 'N·Operator Pending', 'v' : 'Visual', 'V' : 'V·Line', '^V' : 'V·Block', 's' : 'Select', 'S': 'S·Line', '^S' : 'S·Block', 'i' : 'Insert', 'R' : 'Replace', 'Rv' : 'V·Replace', 'c' : 'Command', 'cv' : 'Vim Ex', 'ce' : 'Ex', 'r' : 'Prompt', 'rm' : 'More', 'r?' : 'Confirm', '!' : 'Shell', 't' : 'Terminal'}


" Function: return current mode
" abort -> function will abort soon as error detected
function! ModeCurrent() abort
    let l:modecurrent = mode()
    " use get() -> fails safely, since ^V doesn't seem to register
    " 3rd arg is used when return of mode() == 0, which is case with ^V
    " thus, ^V fails -> returns 0 -> replaced with 'V Block'
    let l:modelist = toupper(get(g:currentmode, l:modecurrent, 'V·Block '))
    let l:current_status_mode = l:modelist
    return l:current_status_mode
endfunction

hi User1 ctermbg=green ctermfg=black
hi User2 ctermbg=blue ctermfg=black


set laststatus=2
set statusline=
" left side
set statusline+=%1*[%{ModeCurrent()}]%*
set statusline+=%2*\ %n\ %*
set statusline+=%f
set statusline+=%r
set statusline+=%m
" right side
set statusline+=%=
set statusline+=%2*\ %l/%c\ %*
set statusline+=%1*[%p%%]%*
