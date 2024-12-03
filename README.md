# My Neovim Configuration

## About
This is my Neovim configuration, heavily inspired by [ThePrimeagen](https://github.com/theprimeagen)'s configuration.
The setup is more minimalistic, and uses the Catpuccin coloscheme. 
Once the configuration is complete, different catpuccin schemes can be found by running 'lua ColorMyPencils("help")' in the command line.

## Installation
1. Remove your current Neovim configuration. Make sure to back up any files you want to keep.
2. Clone this repository into your Neovim configuration directory.
$ rm -rf ~/.config/nvim
$ git clone MISSING URL ~/.config/nvim

## Installing Copilot
1. Install `packer.nvim` (see [packer.nvim](https://github.com/wbthomason/packer.nvim)).
2. Add the following to your `init.lua`:
   ```lua
   use 'github/copilot.vim'

-- GriffithAI
