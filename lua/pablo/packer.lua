-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd.packadd('packer.nvim')

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.1',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }


  -- Install colorschemes
  use ({ 'folke/tokyonight.nvim', as = 'tokyonight' })

  -- Telekasten for personal notes and journaling
  use {
    'renerocksai/telekasten.nvim',
    requires = {'nvim-telescope/telescope.nvim'}
  }

  use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
  use('nvim-treesitter/playground')
  use('ThePrimeagen/harpoon')
  use('mbbill/undotree')
  use('tpope/vim-fugitive')

  -- Lua
  use {
	  "folke/zen-mode.nvim",
	  config = function()
		  require("zen-mode").setup {
			  -- your configuration comes here
			  -- or leave it empty to use the default settings
			  -- refer to the configuration section below
		  }
	  end
  	}
end )
