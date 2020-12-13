let mapleader=","

" Ctrl + s save file shortcut

nnoremap <c-s> :w<cr>
inoremap <c-s> <esc>:w<cr>a

" Quit
noremap <c-q> :call Kwbd(1)<cr>
inoremap <c-q> <esc>:call Kwbd(1)<cr>

" Copy to clipboard
nnoremap Y gg0VGy<esc><c-o>
vnoremap <c-c> "+y
nnoremap <c-a> gg0VG
inoremap <c-a> <esc>gg0VG

" Paste from clipboard
nnoremap <c-v> "+gP
inoremap <c-v> "+gP

" Sidebar NerdTree
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
  inoremap <c-space> <c-x><c-u>
else
  inoremap <silent><expr> <c-space> coc#refresh()
endif

" Terminal handle
nnoremap <c-t> :vsp term://bash<cr>

" Find filename
nnoremap <silent> <c-p> :call NerdTreeTabKeep(':FZF')<cr>
inoremap <c-p> <esc>:call NerdTreeTabKeep(':FZF')<cr>

" Find content
nnoremap <c-f> :call NerdTreeTabKeep(':Find')<cr>
inoremap <c-f> <esc>:call NerdTreeTabKeep(':Find')<cr>


" Reload configuration

nnoremap <leader>vs :source $MYVIMRC<cr>

nnoremap <Home> :call Home()<cr>
inoremap <Home> <c-O>:call Home()<cr>

nnoremap <leader>h :History<cr>

" Quick switch to ts 2
nnoremap <leader>t2 :setl ts=2 sw=2 cc=80<cr>
