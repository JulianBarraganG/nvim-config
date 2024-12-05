-- This file is loaded by addition of require("griffithai.packer") in ./init.lua

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

  -- markdown preview for running :MarkdownPreview, and :MarkdownPreviewStop
  use {
	"iamcco/markdown-preview.nvim",
	run = "cd app && npm install",
	setup = function() vim.g.mkdp_auto_start = 1 end
  }

  -- vimtex for latex
  use {
  "lervag/vimtex",
  lazy = false,     -- we don't want to lazy load VimTeX
  -- tag = "v2.15", -- uncomment to pin to a specific release
  init = function()
    -- VimTeX configuration goes here, e.g.
    vim.g.vimtex_view_method = "zathura"
  end
  }

  use { "catppuccin/nvim", as = "catppuccin" }
  use { 'nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'}}
  use { 'nvim-treesitter/playground' } 
 end)

