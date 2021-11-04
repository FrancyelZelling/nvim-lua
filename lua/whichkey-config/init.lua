local wk = require("which-key")

local mappings = {
  q = {":q<CR>", "Quit Neovim"},
  w = {":w!<CR>", "Save Changes"},
  c = {":bdelete<CR>", "Delete the current buffer"},
}

local opts = {prefix = '<leader>'}

wk.register(mappings, opts)
