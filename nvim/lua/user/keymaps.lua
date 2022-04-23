local opts = { noremap = true, silent = true }

local keymap = vim.api.nvim_set_keymap

-- With a map leader it's possible to do extra key combinations
-- like <leader>w saves the current file
vim.g.mapleader = ","

-- KEY MAPPINGS
keymap("n", "<leader>w", ":w!<cr>", opts)
keymap("n", "<leader>t", ":NERDTreeToggle<CR>", opts)
keymap("n", "<C-j>", "<C-W>j", opts)
keymap("n", "<C-k>", "<C-W>k", opts)
keymap("n", "<C-h>", "<C-W>h", opts)
keymap("n", "<C-l>", "<C-W>l", opts)
