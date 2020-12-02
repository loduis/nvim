let mapleader=","

" Ctrl + s save file shortcut

nnoremap <c-s> :w<cr>
inoremap <c-s> <esc>:w<cr>a

" Quit
noremap <c-q> <esc>:q<cr>
inoremap <c-q> <esc>:q<cr>

" Sidebar
nnoremap <silent> <F3> :NERDTreeToggle<cr>
inoremap <silent> <F3> <esc>:NERDTreeToggle<cr>
nnoremap <silent> <F2> :NERDTreeFind<cr>

" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use <c-space> to trigger completion.
if &filetype == "javascript" || &filetype == "python"
  inoremap <c-space> <C-x><C-u>
else
  inoremap <silent><expr> <c-space> coc#refresh()
endif


" Select all
" nnoremap <C-a> gg0VG<esc>
" inoremap <C-a> <esc>gg0VG<esc><c-o>a

"Copy to clipboard

" nnoremap <C-c> gg0VG"+y<esc>

" Paste from clipboard
" nnoremap <C-v> "+gP
" inoremap <C-v> "+gP
