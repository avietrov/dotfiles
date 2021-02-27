set nocompatible

call plug#begin('~/.local/share/nvim/plugged')

  Plug 'scrooloose/nerdtree'
  Plug 'jistr/vim-nerdtree-tabs'
  Plug 'ctrlpvim/ctrlp.vim'
  Plug 'scrooloose/nerdcommenter'

  " Git
  Plug 'airblade/vim-gitgutter'
  Plug 'Xuyuanp/nerdtree-git-plugin'

  " UI
  Plug 'ryanoasis/vim-devicons'
  Plug 'itchyny/lightline.vim'
  Plug 'chriskempson/base16-vim'
  Plug 'daviesjamie/vim-base16-lightline'
call plug#end()
let g:nerdtree_tabs_open_on_console_startup=1

filetype plugin indent on

""""" LOOK AND FEEL """""
set termguicolors
let base16colorspace=256
let g:lightline = { 'colorscheme': 'base16', }
set background=dark
colorscheme base16-monokai

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

set number relativenumber
augroup numbertoggle
  autocmd!
  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
augroup END

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
let g:NERDTreeGitStatusIndicatorMapCustom = {
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


let g:python3_host_prog = '/Users/antonv/.pyenv/versions/neovim/bin/python'
