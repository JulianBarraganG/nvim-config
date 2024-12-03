# My Neovim Configuration

## About
This is my Neovim configuration, heavily inspired by [ThePrimeagen](https://github.com/theprimeagen)'s configuration.
The setup is more minimalistic, and uses the Catppuccin colorscheme. 
Once the configuration is complete, different Catppuccin schemes can be found by running `lua ColorMyPencils("help")` in the command line.

## Installation
This configuration has been tested on **Linux Mint** and **Ubuntu**. It should work on other Linux distributions with minimal changes. Adjustments may be required for macOS or Windows.

### Standard Installation
1. Remove your current Neovim configuration. **Make sure to back up** any files you want to keep. This can be done by running:
```bash
mv ~/.config/nvim ~/.config/nvim_backup
```
If your configs are in a different directory, replace `~/.config/nvim` with the correct path.
2. Clone this repository into your Neovim configuration directory:
```bash
rm -rf ~/.config/nvim && git clone https://github.com/JulianBarraganG/nvim-config ~/.config/nvim
```
### Alternative Installation
If you'd like to test the configuration without permanently removing your existing setup, you can use a symbolic link to point Neovim to this repository:
1. Backup your existing Neovim configuration:
```bash
mv ~/.config/nvim ~/.config/nvim_backup
```
2. Clone this repository into a directory of your choice (e.g., `~/projects/nvim-config`)
```bash
git clone https://github.com/JulianBarraganG/nvim-config ~/<your-dir>/nvim-config
```
3. Create a symbolic link from your Neovim configuration directory to the cloned repository:
```bash
ln -s ~/<your-dir>/nvim-config ~/.config/nvim
```

This method ensures that you can test the new configuration while preserving your old setup.

## Installing Copilot
I personally use Copilot for coding, but it is not included in this public repo.  
To install Copilot, follow the instructions at [copilot.vim](https://github.com/github/copilot.vim).  
Make sure to have Node.js and the required version of Neovim installed.

<div style="text-align": right">-- GriffithAI </div>


