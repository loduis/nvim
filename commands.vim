" Rg
command! -nargs=* -bang Find call RipgrepFzf(<q-args>, <bang>0)

"Set default php space
autocmd FileType php setl cc=120 sw=4 ts=4

" coc
autocmd FileType python let b:coc_suggest_disable = 1
autocmd FileType javascript let b:coc_suggest_disable = 1
autocmd FileType scss setl iskeyword+=@-@

augroup THE_TERMINAL | au!
    autocmd TermOpen * nnoremap <buffer><LeftRelease> <LeftRelease>i
    " more stuff
augroup end

augroup THE_CLEAN
    autocmd!
    autocmd BufWritePre * :call TrimWhitespace()
augroup end
