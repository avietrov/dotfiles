local opts = { noremap = true, silent = true }

local keymap = vim.api.nvim_set_keymap

-- use space key as a leader
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "


-- KEY MAPPINGS
keymap("n", "<leader>w", ":w!<cr>", opts)
keymap("n", "<leader>t", ":NERDTreeToggle<CR>", opts)
keymap("n", "<C-j>", "<C-W>j", opts)
keymap("n", "<C-k>", "<C-W>k", opts)
keymap("n", "<C-h>", "<C-W>h", opts)
keymap("n", "<C-l>", "<C-W>l", opts)
