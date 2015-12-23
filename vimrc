" Vundle
set nocompatible                    " be iMproved, required
filetype off                        " required
set rtp+=~/.vim/bundle/Vundle.vim   " set the runtime path to include Vundle to initialize
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'       " let Vundle manage Vundle, required
Plugin 'https://github.com/scrooloose/nerdtree.git'
Plugin 'https://github.com/kien/ctrlp.vim'
Plugin 'https://github.com/tpope/vim-fugitive'
Plugin 'https://github.com/bling/vim-airline'

call vundle#end()                   " required
filetype plugin indent on           " required

" General
syntax on
set autoindent      				" Auto-indent new lines
set shiftwidth=4    				" Indents will have a width of 4
set smartindent     				" Enable smart-indent
set smarttab        				" Enable smart-tabs
set tabstop=4       				" The width of a TAB is set to 4.
set softtabstop=4   				" Sets the number of columns for a TAB
set expandtab       				" Expand TABs to space

set number          				" Show line numbers
set numberwidth=3   				" 
set linebreak       				" Break lines at word (requires Wrap lines)
set showbreak=+++   				" Wrap-broken line prefix
set textwidth=500   				" Line wrap (number of cols)
set showmatch       				" Highlight matching braces
"set spell                          " Enable spell-checking
set visualbell      				" Use visual bell (no beeping)

set hlsearch        				" Highlight all search results
set smartcase       				" Enable smart-case search
set ignorecase      				" Always case-insensitive
set incsearch       				" Searches for strings incrementally

" Advanced
set ruler           				" Show row and column ruler information
set cmdheight=2

set undolevels=1000 				" Number of undo levels
set backspace=indent,eol,start 		" Backspace behaviour

" Plugins
map <silent> <C-n> :NERDTreeFocus<CR>

let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'
set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux

let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
set laststatus=2
