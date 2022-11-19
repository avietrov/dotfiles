local telescope = require "telescope"

telescope.setup({
  defaults = {
    prompt_prefix = " ",
    selection_caret = " ",
    path_display = { "smart" },
  },

  pickers = {
    buffers = {
      theme = 'dropdown',
      previewer = false
    }
  }
})

telescope.load_extension "projects"

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<C-p>', builtin.find_files, {})
vim.keymap.set('n', '<C-b>', builtin.buffers, {})
