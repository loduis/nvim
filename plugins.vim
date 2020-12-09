" https://github.com/kiteco/vim-plugin/blob/master/DEVELOPMENT.md

call plug#begin('~/.config/nvim/plugged')

" Themes
Plug 'morhetz/gruvbox'
Plug 'shinchu/lightline-gruvbox.vim'

" syntax
Plug 'sheerun/vim-polyglot'

" status bar
" Plug 'vim-airline/vim-airline'
" Plug 'vim-airline/vim-airline-themes'

Plug 'maximbaz/lightline-ale'
Plug 'itchyny/lightline.vim'

" Tree
Plug 'preservim/nerdtree'

" autocomplete
Plug 'sirver/ultisnips'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" typing
Plug 'jiangmiao/auto-pairs'
Plug 'alvan/vim-closetag'
Plug 'tpope/vim-surround'

" IDE
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'terryma/vim-multiple-cursors'
Plug 'mhinz/vim-signify'
Plug 'yggdroot/indentline'

" git
Plug 'tpope/vim-fugitive'

" Buffer tabs

Plug 'ap/vim-buftabline'

call plug#end()

" Themes
colorscheme gruvbox
let g:gruvbox_contrast_dark = 'hard'

" nerdtree
let NERDTreeShowHidden=1
let NERDTreeAutoDeleteBuffer=1
let NERDTreeMinimalUI=1
let NERDTreeDirArrows=1
let NERDTreeShowLineNumbers=1
" let NERDTreeMapOpenInTab='<ENTER>'
let g:nerdtree_tabs_focus_on_files=1
" let g:NERDTreeChDirMode=2
" let NERDTreeQuitOnOpen=1

" Airline configuration
" let g:airline_theme='gruvbox'
" let g:airline#extensions#whitespace#enabled = 1
" let g:airline_skip_empty_sections = 1

let g:lightline = {
      \ 'active': {
      \   'left': [['mode', 'paste'], [], ['relativepath', 'modified']],
      \   'right': [['kitestatus'], ['filetype', 'percent', 'lineinfo'], ['gitbranch']]
      \ },
      \ 'inactive': {
      \   'left': [['inactive'], ['relativepath']],
      \   'right': [['bufnum']]
      \ },
      \ 'component': {
      \   'bufnum': '%n',
      \   'inactive': 'inactive'
      \ },
      \ 'component_function': {
      \   'gitbranch': 'fugitive#head',
      \   'kitestatus': 'kite#statusline'
      \ },
      \ 'colorscheme': 'gruvbox',
      \ 'subseparator': {
      \   'left': '',
      \   'right': ''
      \ }
      \}

" kite config
let g:kite_supported_languages = ['javascript', 'python']

" fzf
" You can create one file in ~/.ignore for global ignore files
" https://dev.to/matrixersp/how-to-use-fzf-with-ripgrep-to-selectively-ignore-vcs-files-4e27
" See the comments y this post
let $FZF_DEFAULT_COMMAND = 'rg --files --hidden --follow -g "!{.gitignore}" --ignore-file ' . g:FZF_IGNORE
let $FZF_DEFAULT_OPTS='--reverse -e'
set grepprg=rg\ --vimgrep

" Can open files in new tab
" let g:fzf_action = { 'enter': 'tabedit' }

" fugitive always vertical diffing
set diffopt+=vertical

