set nocompatible
filetype off                  " required for Vundle

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Vundle manage Vundle
Plugin 'VundleVim/Vundle.vim'

" Vundle plugins
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'altercation/vim-colors-solarized'
Plugin 'mattn/emmet-vim'
Plugin 'kien/ctrlp.vim'
Plugin 'maksimr/vim-jsbeautify'
Plugin 'kchmck/vim-coffee-script'
Plugin 'groenewege/vim-less'
Plugin 'derekwyatt/vim-scala'

call vundle#end()
filetype plugin indent on

""""" LOOK AND FEEL """""

" Use the Solarized Dark theme
set background=dark
colorscheme solarized
let g:solarized_termtrans=1

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

" Automatic commands
if has("autocmd")
  " Enable file type detection
  filetype on
  " Treat .json files as .js
  autocmd BufNewFile,BufRead *.json setfiletype json syntax=javascript
  " Treat .md files as Markdown
  autocmd BufNewFile,BufRead *.md setlocal filetype=markdown
endif

" Centralize backups, swapfiles and undo history
set backupdir=~/.vim/backups
set directory=~/.vim/swaps
if exists("&undodir")
  set undodir=~/.vim/undo
endif

""""" KEY MAPPINGS """""
map <c-n>t :NERDTreeToggle<CR>

""""" CONFIG """""
autocmd Filetype gitcommit setlocal spell textwidth=80


autocmd FileType javascript noremap <buffer>  <c-f> :call JsBeautify()<cr>
autocmd FileType html noremap <buffer> <c-f> :call HtmlBeautify()<cr>
autocmd FileType css noremap <buffer> <c-f> :call CSSBeautify()<cr>