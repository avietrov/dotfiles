local telescope = require "telescope"

telescope.setup({
  prompt_prefix = " ",
  selection_caret = " ",
  path_display = { "smart" },
})

telescope.load_extension "projects"
