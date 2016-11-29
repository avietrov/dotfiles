set nocompatible

" Plugins
call plug#begin('~/.config/nvim/plugged')

Plug 'tpope/vim-fugitive'
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/syntastic'
Plug 'bling/vim-airline'
Plug 'romainl/flattened'
Plug 'vim-airline/vim-airline-themes'
Plug 'kien/ctrlp.vim'
Plug 'derekwyatt/vim-scala'

call plug#end()

filetype plugin indent on

""""" LOOK AND FEEL """""

" Use the Solarized Dark theme
set termguicolors
set background=dark
colorscheme flattened_dark
let g:airline_theme='solarized'

syntax on 			" Enable syntax highlighting
set number 			" Enable line numbers
set cursorline 	" Highlight current line
set gdefault		" Add the g flag to search/replace by default
set backspace=indent,eol,start " Allow backspace in insert mode

set binary		 	" Don’t add empty newlines at the end of files
set noeol


""""" BEHAVIOR """""

set tabstop=2			" Make tabs as wide as two spaces
set shiftwidth=2
set hlsearch 			" Highlight searches
set ignorecase 		" Ignore case of searches
set incsearch 		" Highlight dynamically as pattern is typed
set laststatus=2 	" Always show status line
set noerrorbells 	" Disable error bells
set ruler 				" Show the cursor position
set showcmd 			" Show incomplete commands
set expandtab

" Start scrolling three lines before the horizontal window border
set scrolloff=3


let g:python_host_prog='/usr/local/bin/python'
let g:python3_host_prog='/usr/local/bin/python3'

""""" KEY MAPPINGS """""
map <c-n>t :NERDTreeToggle<CR>

""""" CONFIG """""
autocmd Filetype gitcommit setlocal spell textwidth=80

