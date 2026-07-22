-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- Plugin specifications
require("lazy").setup({
  -- Core dependencies
  { "nvim-lua/popup.nvim" },
  { "nvim-lua/plenary.nvim" },

  -- Autopairs
  {
    "windwp/nvim-autopairs",
    event = "InsertEnter",
    config = function()
      require("nvim-autopairs").setup({})
    end,
  },

  -- Comments
  {
    "numToStr/Comment.nvim",
    event = { "BufReadPre", "BufNewFile" },
    config = function()
      require("Comment").setup()
    end,
  },

  -- Status line
  {
    "nvim-lualine/lualine.nvim",
    event = "VeryLazy",
    config = function()
      require("lualine").setup({
        options = {
          icons_enabled = true,
          theme = "auto",
          component_separators = { left = "", right = "" },
          section_separators = { left = "", right = "" },
        },
      })
    end,
  },

  -- Indent guides
  {
    "lukas-reineke/indent-blankline.nvim",
    main = "ibl",
    event = { "BufReadPre", "BufNewFile" },
    config = function()
      vim.opt.list = true
      require("ibl").setup()
    end,
  },

  -- Git signs
  {
    "lewis6991/gitsigns.nvim",
    event = { "BufReadPre", "BufNewFile" },
    config = function()
      require("gitsigns").setup()
    end,
  },

  -- Treesitter
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    lazy = false,
    config = function()
      local treesitter = require("nvim-treesitter")
      treesitter.setup()
      treesitter.install { 'java', 'lua', 'vim', 'rust', 'python', 'latex', 'html', 'yaml', 'toml' }
    end,
  },

  -- colorscheme
  {
    "RRethy/base16-nvim",
    config = function () 
      require('base16-colorscheme').setup({
        base00 = '#16161D', base01 = '#2c313c', base02 = '#3e4451', base03 = '#6c7891',
        base04 = '#565c64', base05 = '#abb2bf', base06 = '#9a9bb3', base07 = '#c5c8e6',
        base08 = '#e06c75', base09 = '#d19a66', base0A = '#e5c07b', base0B = '#98c379',
        base0C = '#56b6c2', base0D = '#0184bc', base0E = '#c678dd', base0F = '#a06949',
    })
    end
  },

  -- File explorer
  {
    "kyazdani42/nvim-tree.lua",
    dependencies = { "kyazdani42/nvim-web-devicons" },
    keys = {
      { "<leader>e", "<cmd>NvimTreeToggle<cr>", desc = "Toggle file explorer" },
    },
    config = function()
      require("nvim-tree").setup({
        renderer = {
          icons = {
            glyphs = {
              default = "",
              symlink = "",
              folder = {
                default = "",
                empty = "",
                empty_open = "",
                open = "",
                symlink = "",
                symlink_open = "",
                arrow_open = "",
                arrow_closed = "",
              },
              git = {
                unstaged = "",
                staged = "✓",
                unmerged = "",
                renamed = "➜",
                deleted = "",
                untracked = "★",
                ignored = "◌",
              },
            },
          },
        },
        diagnostics = {
          enable = true,
          icons = {
            hint = "",
            info = "",
            warning = "",
            error = "",
          },
        },
        trash = {
          cmd = "trash",
          require_confirm = true,
        },
        respect_buf_cwd = true,
        update_cwd = true,
        update_focused_file = {
          enable = true,
          update_cwd = true,
        },
      })
    end,
  },
})
