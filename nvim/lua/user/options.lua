vim.opt.compatible = false

-- LOOK AND FEEL
vim.opt.termguicolors = true
vim.opt.background = "dark"
-- let base16colorspace=256
-- let g:lightline = { 'colorscheme': 'base16', }
-- colorscheme base16-monokai

vim.opt.number = true       -- Enable line numbers
vim.opt.cursorline  = true  -- Highlight current line
vim.opt.gdefault = true     -- Add the g flag to search/replace by default
vim.opt.showmode  = false  -- Replaced by lightline
vim.opt.backspace = {"indent","eol","start"} -- Allow backspace in insert mode

-- BEHAVIOR
vim.opt.tabstop=2			-- Make tabs as wide as two spaces
vim.opt.shiftwidth=2
vim.opt.hlsearch=true 			-- Highlight searches
vim.opt.ignorecase=true 		-- Ignore case of searches
vim.opt.incsearch=true 		-- Highlight dynamically as pattern is typed
vim.opt.laststatus=2 	-- Always show status line
vim.opt.errorbells=false 	-- Disable error bells
vim.opt.ruler=true 				-- Show the cursor position
vim.opt.showcmd=true 			-- Show incomplete commands
vim.opt.expandtab=true
vim.opt.backup=false      -- no backups, vcs ftw
vim.opt.wb=false
vim.opt.swapfile= false

vim.opt.relativenumber=true
