
" Rg
command! -bang -nargs=* Find call fzf#vim#grep('rg --column --line-number --no-heading -w  --fixed-strings -S --hidden --follow --ignore-file ' . stdpath('config') . '/fzfignore.txt --color "always" '.shellescape(<q-args>).'| tr -d "\017"', 1,  { 'options': '-e' }, <bang>0)

" Set default php space
autocmd FileType php setl cc=120 sw=4 ts=4

" coc
autocmd FileType python let b:coc_suggest_disable = 1
autocmd FileType javascript let b:coc_suggest_disable = 1
autocmd FileType scss setl iskeyword+=@-@

augroup THE_CLEAN
    autocmd!
    autocmd BufWritePre * :call TrimWhitespace()
augroup END

" Reload config on save vimrc
autocmd BufWritePost *.vim :so $MYVIMRC
