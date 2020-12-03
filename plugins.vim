call plug#begin('~/.config/nvim/plugged')

" Themes
Plug 'morhetz/gruvbox'
" Plug 'shinchu/lightline-gruvbox.vim'

" syntax
Plug 'sheerun/vim-polyglot'

" status bar
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Plug 'maximbaz/lightline-ale'
" Plug 'itchyny/lightline.vim'
" Plug 'mengelbrecht/lightline-bufferline'

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
let NERDTreeMapOpenInTab='\t'
let g:nerdtree_tabs_focus_on_files=1
let g:NERDTreeChDirMode=2

" Airline configuration
let g:airline_theme='gruvbox'
let g:airline#extensions#whitespace#enabled = 1
let g:airline_skip_empty_sections = 1
let g:airline#extensions#tabline#enabled = 1

" kite
let g:kite_supported_languages = ['javascript', 'python']

" coc
autocmd FileType python let b:coc_suggest_disable = 1
autocmd FileType javascript let b:coc_suggest_disable = 1
autocmd FileType scss setl iskeyword+=@-@

