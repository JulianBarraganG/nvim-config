function ColorMyPencils(color)
	if color == "help" then
		print("Switch themes with the command")
		print(":lua ColorMyPencils(color)")
		print("Available themes are:")
		print("catpuccin (default) | catpuccin-latte | catppuccin-frappe | catppuccin-macchiato | catppuccin-mocha")
		return
	end
	if color ~= "help" then
		color = color or "catppuccin"
	end
	color = "catppuccin"
	vim.cmd.colorscheme(color)

	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

function ColorMyPencil()
	print("ColorMyPencil is not a function. Did you mean ColorMyPencils()?")
	print("For help, run :lua ColorMyPencils('help')")
end

ColorMyPencils()
