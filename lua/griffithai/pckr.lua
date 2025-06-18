local function bootstrap_pckr()
  local pckr_path = vim.fn.stdpath("data") .. "/pckr/pckr.nvim"

  if not (vim.uv or vim.loop).fs_stat(pckr_path) then
    vim.fn.system({
      'git',
      'clone',
      "--filter=blob:none",
      'https://github.com/lewis6991/pckr.nvim',
      pckr_path
    })
  end

  vim.opt.rtp:prepend(pckr_path)
end

bootstrap_pckr()


require('pckr').add{

  -- Copilot (for loading only, must be cloned)
  'github/copilot.vim';

  -- Telescope
  {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.8',
    requires = { {'nvim-lua/plenary.nvim'} }
  };

  -- VimTeX
  {
    "lervag/vimtex",
    lazy = false,
    init = function()
      vim.g.vimtex_view_method = "xreader"
      vim.g.vimtex_quickfix_open_on_warning = 0
    end
  };

  -- Colorschemes
  { "NLKNguyen/papercolor-theme", as = "papercolor" };
  { "catppuccin/nvim", as = "catppuccin" };

  -- Other Plugins
  { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' };
  'nvim-treesitter/playground';
  'nvim-lua/plenary.nvim';
  'ThePrimeagen/harpoon';
  'mbbill/undotree';
  'tpope/vim-fugitive'; -- git

  -- LSP
  'neovim/nvim-lspconfig';
  'hrsh7th/nvim-cmp';
  'hrsh7th/cmp-nvim-lsp';
  "hrsh7th/cmp-buffer";
  "hrsh7th/cmp-path";
  "hrsh7th/cmp-cmdline";
  'williamboman/mason.nvim';
  'williamboman/mason-lspconfig.nvim';
}

