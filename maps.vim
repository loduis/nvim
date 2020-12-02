let mapleader=","

" Ctrl + s save file shortcut

nnoremap <c-s> :w<cr>
inoremap <c-s> <esc>:w<cr>a

" Quit
noremap <c-q> <esc>:q<cr>
inoremap <c-q> <esc>:q<cr>

" Sidebar
nnoremap <silent> <F3> :NERDTreeToggle<CR>
nnoremap <silent> <F2> :NERDTreeFind<CR>
