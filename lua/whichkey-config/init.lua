local wk = require("which-key")

local mappings = {
  q = {":q<CR>", "Quit Neovim"},
  w = {":w!<CR>", "Save Changes"},
  s = {":so %<CR>", "Save Changes"},
  c = {":bdelete<CR>", "Delete the current buffer"},
  t = {":Telescope find_files<CR>", "Find files using telescope"},
  T = {":Telescope live_grep<CR>", "Live grep to find files using telescope"},
  l = {
    name = "LSP",
    i = {":LspInfo<cr>", "Connected Language Servers"},
    A = {'<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>', "Add workspace folder"},
    R = {'<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>', "Remove workspace folder"},
    l = {'<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>', "List workspace folder"},
    D = {'<cmd>lua vim.lsp.buf.type_definition()<CR>', "Type definition"},
    r = {'<cmd>lua vim.lsp.buf.rename()<CR>', "Rename"},
    a = {'<cmd>lua vim.lsp.buf.code_action()<CR>', "Code actions"},
    e = {'<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>', "Show line diagnostics"},
    q = {'<cmd>lua vim.lsp.diagnostic.set_loclist()<CR>', "Show loclist"},
    f = {'<cmd>lua vim.diagnostic.open_float()<CR>', "Show Float Diagnostics"},
    F = {'<cmd>lua vim.lsp.buf.formatting_sync()<CR>', "Show Float Diagnostics"},
    -- s = {'<cmd>lua vim.lsp.buf.signature_help<CR>', "Show Signature Help"}
  },
}

local opts = {prefix = '<leader>'}

wk.register(mappings, opts)
