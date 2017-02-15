"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=/Users/avietrov/.config/nvim/dein/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('$HOME/.config/nvim/dein')
  call dein#begin('$HOME/.config/nvim/dein')

  " Let dein manage dein
  " Required:
  call dein#add('$HOME/.config/nvim/dein/repos/github.com/Shougo/dein.vim')

  " Add or remove your plugins here:
  call dein#add('Shougo/neosnippet.vim')
  call dein#add('Shougo/neosnippet-snippets')
  call dein#add('benekastah/neomake')
  call dein#add('scrooloose/nerdtree')
  call dein#add('Shougo/deoplete.nvim')

  " Git
  call dein#add('tpope/vim-fugitive')
  call dein#add('airblade/vim-gitgutter')
  call dein#add('Xuyuanp/nerdtree-git-plugin')


  " UI
  call dein#add('chriskempson/base16-vim')
  call dein#add('mhartington/oceanic-next')
  call dein#add('bling/vim-airline')
  call dein#add('vim-airline/vim-airline-themes')

  " Required:
  call dein#end()
  call dein#save_state()
endif

" Required:
filetype plugin indent on
syntax enable

"End dein Scripts-------------------------

filetype plugin indent on

""""" LOOK AND FEEL """""
set termguicolors
colorscheme OceanicNext
let g:airline_theme='oceanicnext'

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
map <c-n>t :NERDTreeToggle<CR>
inoremap <silent><expr> <TAB>
    \ pumvisible() ? "\<C-n>" :
    \ <SID>check_back_space() ? "\<TAB>" :
    \ deoplete#mappings#manual_complete()
    function! s:check_back_space() abort "{{{
    let col = col('.') - 1
    return !col || getline('.')[col - 1]  =~ '\s'
    endfunction"}}}

""""" CONFIG """""
autocmd Filetype gitcommit setlocal spell textwidth=80

