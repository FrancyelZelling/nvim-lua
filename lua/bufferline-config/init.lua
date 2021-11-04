require("bufferline").setup{}

vim.cmd[[
  nnoremap <silent><C-p> :BufferLineCycleNext<CR>
  nnoremap <silent><C-o> :BufferLineCyclePrev<CR>
]]
