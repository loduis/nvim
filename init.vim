" https://neovim.io/doc/user/vim_diff.html#vim-differences

" Quick variable for fzf ignore files
let FZF_IGNORE = stdpath('config') . '/.ignore'

" Active mouse
set mouse=a

set noshowmode

" Set 8 lines to the cursor - when moving vertically using j/k
set so=8

" Set number lines and relative numbers
set nu
set rnu

" A buffer becomes hidden when it is abandoned
set hid

" Indent options
set smartindent
set tabstop=2 softtabstop=2
set shiftwidth=2
set expandtab

" Search text on file
set ignorecase
set smartcase
set nohls

" Text format
set nowrap

" Turn backup off, since most stuff is in SVN, git etc. anyway...
set nobk
set nowb
set noswf

" Undo file
set undofile

" No annoying sound on errors
set noerrorbells
set visualbell
set t_vb=
set notimeout ttimeout ttimeoutlen=200

" You will have bad experience for diagnostic messages when it's default 4000.
set updatetime=300

" don't give |ins-completion-menu| messages.
set shortmess+=c

" Display vertical rule
set colorcolumn=80

highlight ColorColumn ctermbg=0 guibg=grey
highlight Normal guibg=none

" Set the terminal colors
set guicursor=
set termguicolors

" Command message height
set cmdheight=2

" Active clipboard
set clipboard=unnamed

" Split to right
set splitright

" Show the tab line
set showtabline=2

" always show signcolumns
set signcolumn=yes

" Paint ruler bar for sign on the left of editor
" set signcolumn=yes
highlight SignColumn guibg=darkgrey

" Willcard Menu
set path+=**
set wildignore+=**/node_modules/**,**/vendor/**

so ~/.config/nvim/install.vim
so ~/.config/nvim/plugins.vim
so ~/.config/nvim/functions.vim
so ~/.config/nvim/maps.vim
so ~/.config/nvim/commands.vim
