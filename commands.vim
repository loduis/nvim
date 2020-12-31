" Rg
command! -nargs=* -bang Find call RipgrepFzf(<q-args>, <bang>0)

"Set default php space
au FileType php setl cc=120 sw=4 ts=4
au BufWinEnter,WinEnter **/views/**/*.php setl cc=80 sw=2 ts=2

" coc
" au FileType python let b:coc_suggest_disable = 1
" au FileType javascript let b:coc_suggest_disable = 1
au FileType scss setl iskeyword+=@-@
au FileType php set iskeyword+=$

" https://github.com/neovim/neovim/issues/9483#issuecomment-569417862
" https://stackoverflow.com/questions/63906439/how-to-disable-line-numbers-in-neovim-terminal
aug THE_TERMINAL | au!
    " Enter Terminal-mode (insert) automatically

    au TermOpen * startinsert!

    au TermLeave <buffer> stopinsert!

    " Need when type <c-w+l>
    au BufWinEnter,TermEnter,WinEnter term://* startinsert!

    " Disables number lines on terminal buffers
    au TermOpen * :set nonumber norelativenumber

    " allows you to use Ctrl-c on terminal window
    au TermOpen * nnoremap <buffer> <C-c> i<C-c>

    " Switch to terminal mode in left click
    au TermOpen * nnoremap <buffer><LeftRelease> <LeftRelease><esc>i
    " Go to left buffer
    au TermOpen * tnoremap <buffer> <C-h> <C-\><C-n><C-w><C-h>

    " Toggle buffer no close
    au TermOpen * tnoremap <buffer> <C-t> <C-\><C-n>:q<CR>

    " Close the buffer
    au TermOpen * tnoremap <buffer> <C-q> <C-\><C-n>:bd!<cr>
aug end

augroup THE_CLEAN
    au!
    au BufWritePre * :call TrimWhitespace()
augroup end
