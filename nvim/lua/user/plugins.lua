packer = require('packer')
packer.init {
  display = {
    open_fn = function()
      return require("packer.util").float { border = "rounded" }
    end,
  },
}

vim.cmd [[packadd packer.nvim]]
return require('packer').startup(function()
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use "nvim-lua/popup.nvim" -- An implementation of the Popup API from vim in Neovim
  use "nvim-lua/plenary.nvim" -- Useful lua functions used ny lots of plugins

  use {
    'kyazdani42/nvim-tree.lua',
    requires = {
      'kyazdani42/nvim-web-devicons', -- optional, for file icon
    }
  }

  use 'ctrlpvim/ctrlp.vim'
  use 'scrooloose/nerdcommenter'
  use 'dag/vim-fish'

  -- Git
  use 'airblade/vim-gitgutter'
  use 'Xuyuanp/nerdtree-git-plugin'

  -- UI
  use 'ryanoasis/vim-devicons'
  use 'itchyny/lightline.vim'
  use 'chriskempson/base16-vim'
  use 'daviesjamie/vim-base16-lightline'

end)
