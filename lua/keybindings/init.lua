vim.g.mapleader = ","

local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = false }

-- Movement
map("n", "<C-h>", "<C-w>h", opts)
map("n", "<C-l>", "<C-w>l", opts)
map("n", "<C-j>", "<C-w>j", opts)
map("n", "<C-k>", "<C-w>k", opts)

-- Rebind ESC to leave insert mode
map("i", "kj", "<ESC>", opts)

-- Nvim-tree keybindings
map("n", "<leader>e", ":NvimTreeToggle<CR>", opts)
map("n", "<C-r>", ":NvimTreeRefresh<CR>", opts)
map("n", "<C-f>", ":NvimTreeFindFile<CR>", opts)

-- Change indent level and maintain previous highlight
map("v", "<", "<gv", opts)
map("v", ">", ">gv", opts)

-- Lspsaga keybindings
-- smart scroll
map("n", "<C-f>", ':lua require("lspsaga.action").smart_scroll_with_saga(1)<CR>', opts)
map("n", "<C-b>", ':lua require("lspsaga.action").smart_scroll_with_saga(-1)<CR>', opts)

-- Code Action
map("n", "<leader>ca", ":Lspsaga code_action<CR>", opts)
map("v", "<leader>ca", "<C-U>Lspsaga range_code_action<CR>", opts)

-- hover_doc
map("n", "K", ":Lspsaga hover_doc<CR>", opts)

-- rename
map("n", "gr", ":Lspsaga rename<CR>", opts)

-- jump between diagnostics
map("n", "[e", ":Lspsaga diagnostic_jump_next<CR>", opts)
map("n", "]e", ":Lspsaga diagnostic_jump_prev<CR>", opts)
