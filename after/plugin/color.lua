-- Function to switch between themes
local default = "tokyonight-moon"
local rose =  "#f7768e"
local violet ="#7aa2f7"

function ColorMyPencils(color)

	if color == "help" then
		print("Switch themes with the command")
		print("lua ColorMyPencils(color)")
		print("Available themes are")
		print("catppuccin | tokyonight")
		return

    	elseif color == "catppuccin" then
		vim.cmd.colorscheme("catppuccin-")
	elseif color == "tokyonight" then
		vim.cmd.colorscheme("tokyonight-moon")
	else
		vim.cmd.colorscheme(default)
	end

	-- See through background 
	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })

	-- Customize line numbers
	vim.api.nvim_set_hl(0, "LineNrAbove", { fg = violet })
	vim.api.nvim_set_hl(0, "LineNr", { fg = rose })
	vim.api.nvim_set_hl(0, "LineNrBelow", { fg = violet })
end

ColorMyPencils(default)

