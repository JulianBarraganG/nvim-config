-- Function to switch between themes
function ColorMyPencils(color)

	if color == "help" then
		print("Switch themes with the command")
		print("lua ColorMyPencils(color)")
		print("Available themes are")
		print("catpuccin-mocha (default) | catpuccin-latte | PaperColor")
		return

    	elseif color ~= "help" then 
		vim.cmd.colorscheme("catppuccin")
	else 
		vim.cmd.colorscheme(color)
	end
	
	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

ColorMyPencils("catpuccin")
