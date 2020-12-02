" https://neovim.io/doc/user/vim_diff.html#vim-differences

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
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab

" Search text on file
set ignorecase
set smartcase

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

" Display vertical rule
set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=lightgrey

" Set the terminal colors
set guicursor=
set termguicolors

" Command message height
set cmdheight=2

" Paint ruler bar for sign on the left of editor
" set signcolumn=yes
highlight SignColumn guibg=darkgrey

" Willcard Menu
set path+=**
set wildignore+=**/node_modules/**,**/vendor/**

" Load the pluggins
so ~/.config/nvim/plugins.vim

" Load the mappings
so ~/.config/nvim/maps.vim

" Reload config on save vimrc
autocmd BufWritePost *.vim :so $MYVIMRC
