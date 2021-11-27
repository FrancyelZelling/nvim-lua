vim.cmd('filetype plugin indent on')
vim.o.shortmess = vim.o.shortmess .. 'c'
vim.o.hidden = true
vim.o.whichwrap = 'b,s,<,>,[,],h,l'
vim.o.pumheight = 10
vim.o.fileencoding = 'utf-8'
vim.o.cmdheight = 2
vim.o.splitbelow = true
vim.o.splitright = true
vim.opt.termguicolors = true
vim.o.conceallevel = 0
vim.o.showtabline = 2
vim.o.showmode = false
vim.o.backup = false
vim.o.writebackup = false
vim.o.updatetime = 300
vim.o.timeoutlen = 500
vim.o.clipboard = "unnamedplus"
vim.o.hlsearch = false
vim.o.ignorecase = true
vim.o.scrolloff = 3
vim.o.sidescrolloff = 5
vim.o.mouse = "a"
vim.wo.wrap = false
vim.wo.number = true
vim.o.cursorline = true
vim.wo.signcolumn = "yes"
vim.o.tabstop = 2
vim.bo.tabstop = 2
vim.o.softtabstop = 2
vim.o.shiftwidth = 2
vim.bo.shiftwidth = 2
vim.o.autoindent = true
vim.bo.autoindent = true
vim.o.expandtab = true
vim.bo.expandtab = true
vim.g.completeopt="menu,menuone,noselect,noinsert"

-- set colorscheme
vim.o.background = "dark"
vim.g.nvcode_termcolors=256
vim.cmd('syntax on')
vim.cmd('colorscheme aurora')

-- abreviations
vim.cmd[[
cnoreabbrev W! w!
cnoreabbrev Q! q!
cnoreabbrev Qall! qall!
cnoreabbrev Wq wq
cnoreabbrev Wa wa
cnoreabbrev wQ wq
cnoreabbrev WQ wq
cnoreabbrev W w
cnoreabbrev w w!
cnoreabbrev Q q
cnoreabbrev Qall qall
]]

-- WSL yank
vim.cmd[[
if has ("win32")
  " WSL yank support
  let s:clip = '/mnt/c/Windows/System32/clip.exe'  " change this path according to your mount point
  if executable(s:clip)
      augroup WSLYank
          autocmd!
          autocmd TextYankPost * if v:event.operator ==# 'y' | call system(s:clip, @0) | endif
      augroup END
  endif
endif
]]
