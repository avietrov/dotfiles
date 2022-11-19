local opts = { noremap = true, silent = true }

local keymap = vim.api.nvim_set_keymap

-- use space key as a leader
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- window navigation
keymap("n", "<C-j>", "<C-W>j", opts)
keymap("n", "<C-k>", "<C-W>k", opts)
keymap("n", "<C-h>", "<C-W>h", opts)
keymap("n", "<C-l>", "<C-W>l", opts)

-- Navigate buffers
keymap("n", "<S-l>", ":bnext<CR>", opts)
keymap("n", "<S-h>", ":bprevious<CR>", opts)

-- nvim-tree
keymap("n", "<leader>e", ":NvimTreeToggle<cr>", opts)

-- trouble
keymap("n", "<leader>xx", "<cmd>TroubleToggle<CR>", opts)
keymap("n", "<leader>xw", "<cmd>TroubleToggle workspace_diagnostics<CR>", opts)
keymap("n", "<leader>xd", "<cmd>TroubleToggle document_diagnostics<CR>", opts)
keymap("n", "<leader>xq", "<cmd>TroubleToggle quickfix<CR>", opts)
keymap("n", "<leader>xl", "<cmd>TroubleToggle loclist<CR>", opts)
