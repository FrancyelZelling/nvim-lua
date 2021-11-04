vim.g.nvim_tree_quit_on_open = 1
vim.g.nvim_tree_view_side = 'right'

require'nvim-tree'.setup {
  disable_netrw = true,
  hijack_netrw = true,
  auto_close = true,
  open_on_setup = true,
  view = {
    width = 30,
    height = 30,
    side = 'right'
  },
}

