return {
	-- "morhetz/gruvbox",
	{
		"sainnhe/gruvbox-material",
		-- "f4z3r/gruvbox-material.nvim",
		config = function()
			vim.g.gruvbox_material_background = "hard"
			vim.g.gruvbox_material_foreground = "mix"
			vim.g.gruvbox_material_better_performance = 1
		end,
	},
	"LunarVim/darkplus.nvim",
}
