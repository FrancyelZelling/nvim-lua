vim.g.mapleader = ','

local map = vim.api.nvim_set_keymap

-- Movement
map('n', '<C-h>', '<C-w>h', {noremap = true, silent = false})
map('n', '<C-l>', '<C-w>l', {noremap = true, silent = false})
map('n', '<C-j>', '<C-w>j', {noremap = true, silent = false})
map('n', '<C-k>', '<C-w>k', {noremap = true, silent = false})

-- Rebind ESC to leave insert mode
map('i', 'kj', '<ESC>', {noremap = true, silent = false})

-- Nvim-tree keybindings
map('n', '<leader>e', ':NvimTreeToggle<CR>', {noremap = true, silent = false})
map('n', '<C-r>', ':NvimTreeRefresh<CR>', {noremap = true, silent = false})
map('n', '<C-f>', ':NvimTreeFindFile<CR>', {noremap = true, silent = false})

-- Change indent level and maintain previous highlight
map('v', '<', '<gv', {noremap = true, silent = false})
map('v', '>', '>gv', {noremap = true, silent = false})

-- Testing lsp stuff
map('i', '<C-k>', '<cmd>:lua vim.lsp.buf.signature_help()<CR>', {noremap = true, silent = true})

