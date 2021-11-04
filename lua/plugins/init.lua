return require('packer').startup(function()
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {'nvim-treesitter/nvim-treesitter',  run = ":TSUpdate"}

  use 'windwp/nvim-ts-autotag'

  use 'p00f/nvim-ts-rainbow'

  use 'windwp/nvim-autopairs'

  use {
    'nvim-lualine/lualine.nvim',
    requires = {'kyazdani42/nvim-web-devicons', opt = true}
  }

  use {'akinsho/bufferline.nvim', requires = 'kyazdani42/nvim-web-devicons'}

  use {
    'kyazdani42/nvim-tree.lua',
    requires = 'kyazdani42/nvim-web-devicons',
  }

  use 'folke/which-key.nvim'

  use 'christianchiarulli/nvcode-color-schemes.vim'
end)
