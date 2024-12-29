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

  --[[ Colorschemes ]] --
  use { "NLKNguyen/papercolor-theme", as = "papercolor" }
  use { "catppuccin/nvim", as = "catppuccin" }
  --[[ Other Plugins ]] --
  use ( 'nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
  use ( 'nvim-treesitter/playground' )
  use ( 'nvim-lua/plenary.nvim' )
  use ( 'ThePrimeagen/harpoon' )
  use ( 'mbbill/undotree' )
  use ( 'tpope/vim-fugitive' ) -- git
  --[[ LSP ]] --
  use( 'neovim/nvim-lspconfig' )
  use( 'hrsh7th/nvim-cmp' )
  use( 'hrsh7th/cmp-nvim-lsp' )
  use( "hrsh7th/cmp-buffer" )
  use( "hrsh7th/cmp-path" )
  use( "hrsh7th/cmp-cmdline" )
  use( 'williamboman/mason.nvim' )
  use( 'williamboman/mason-lspconfig.nvim' )
 end )

