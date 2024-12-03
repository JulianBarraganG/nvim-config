-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {
 	'nvim-telescope/telescope.nvim', tag = '0.1.8',
	-- or                            , branch = '0.1.x',
	requires = { {'nvim-lua/plenary.nvim'} }
  }

  use({
	"iamcco/markdown-preview.nvim",
	run = "cd app && npm install",
	setup = function() vim.g.mkdp_auto_start = 1 end
})
  use { "catppuccin/nvim", as = "catppuccin" }
  use ( 'nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
  use ( 'nvim-treesitter/playground') 
 end)

