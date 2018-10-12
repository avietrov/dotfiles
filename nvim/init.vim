set nocompatible

call plug#begin('~/.local/share/nvim/plugged')

  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
  Plug 'zchee/deoplete-jedi'

  Plug 'scrooloose/nerdtree'
  Plug 'ctrlpvim/ctrlp.vim'
  Plug 'tpope/vim-commentary'

  " Git
  Plug 'airblade/vim-gitgutter'
  Plug 'Xuyuanp/nerdtree-git-plugin'

  " UI
  Plug 'itchyny/lightline.vim'
  Plug 'altercation/vim-colors-solarized'
call plug#end()
let g:deoplete#enable_at_startup = 1

filetype plugin indent on

""""" LOOK AND FEEL """""
" Lightline
let g:lightline = { 'colorscheme': 'solarized', }
set background=dark
colorscheme solarized

set number 			" Enable line numbers
set cursorline 	" Highlight current line
set gdefault		" Add the g flag to search/replace by default
set noshowmode  " Replaced by lightline
set backspace=indent,eol,start " Allow backspace in insert mode

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
set nobackup      " no backups, vcs ftw
set nowb
set noswapfile

" WILD MENU
set wildmenu
set wildignore=*.o,*~,*.pyc
set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/.DS_Store

" Set to auto read when a file is changed from the outside
set autoread

" Start scrolling three lines before the horizontal window border
set scrolloff=3

" With a map leader it's possible to do extra key combinations
" like <leader>w saves the current file
let mapleader = ","
let g:mapleader = ","

""""" KEY MAPPINGS """""
map <leader>w :w!<cr>
map <leader>t :NERDTreeToggle<CR>
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

""""" PLUGIN CONFIG """""

" NERDTree Git Plug Setting
let g:NERDTreeIndicatorMapCustom = {
  \ "Modified"  : "+",
  \ "Staged"    : "s",
  \ "Untracked" : "*",
  \ "Renamed"   : "→",
  \ "Unmerged"  : "=",
  \ "Deleted"   : "x",
  \ "Dirty"     : "!",
  \ "Clean"     : "√",
  \ 'Ignored'   : '~',
  \ "Unknown"   : "?"
  \ }

