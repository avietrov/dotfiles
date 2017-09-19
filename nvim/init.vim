set nocompatible               " Be iMproved

call plug#begin('~/.local/share/nvim/plugged')

  Plug 'benekastah/neomake'
  Plug 'scrooloose/nerdtree'
  Plug 'ctrlpvim/ctrlp.vim'
  Plug 'tomtom/tcomment_vim'

  " Git
  Plug 'tpope/vim-fugitive'
  Plug 'airblade/vim-gitgutter'
  Plug 'Xuyuanp/nerdtree-git-plugin'

  " UI
  Plug 'chriskempson/base16-vim'
  Plug 'bling/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  Plug 'nathanaelkane/vim-indent-guides'

call plug#end()

filetype plugin indent on

""""" LOOK AND FEEL """""
if filereadable(expand("~/.vimrc_background"))
  let base16colorspace=256
  source ~/.vimrc_background
endif

set number 			" Enable line numbers
set cursorline 	" Highlight current line
set gdefault		" Add the g flag to search/replace by default
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

" Start scrolling three lines before the horizontal window border
set scrolloff=3


let g:python_host_prog='/usr/local/bin/python'
let g:python3_host_prog='/usr/local/bin/python3'

""""" KEY MAPPINGS """""
map <C-n> t :NERDTreeToggle<CR>

""""" PLUGIN CONFIG """""

" NERDTree Git Plug Setting
let g:NERDTreeIndicatorMapCustom = {
  \ "Modified"  : "+",
  \ "Staged"    : "∫",
  \ "Untracked" : "*",
  \ "Renamed"   : "→",
  \ "Unmerged"  : "=",
  \ "Deleted"   : "x",
  \ "Dirty"     : "!",
  \ "Clean"     : "√",
  \ 'Ignored'   : '~',
  \ "Unknown"   : "?"
  \ }

