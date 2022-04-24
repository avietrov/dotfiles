local configs = require("nvim-treesitter.configs")
configs.setup {
  ensure_installed = { "lua", "rust", "python" },
  sync_install = false,
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = true,
  },
  indent = { enable = true },
}
