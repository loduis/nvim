" highlight ColorColumn ctermbg=0 guibg=lightgrey
autocmd FileType php setl cc=120 sw=4 ts=4

augroup THE_CLEAN
    autocmd!
    autocmd BufWritePre * :call TrimWhitespace()
augroup END

" Reload config on save vimrc
autocmd BufWritePost *.vim :so $MYVIMRC
