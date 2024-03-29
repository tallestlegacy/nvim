return {
	{
		"santos-gabriel-dario/darcula-solid.nvim",
		dependencies = { "rktjmp/lush.nvim" },
	},
	"morhetz/gruvbox",
	-- "ellisonleao/gruvbox.nvim",
	{
		"murtaza-u/gruvqueen",
		config = function()
			require("gruvqueen").setup({
				config = {
					style = "mix",
					disable_bold = true,
				},
			})
		end,
	},
	{
		"sainnhe/gruvbox-material",
		-- "f4z3r/gruvbox-material.nvim",
	},
	"LunarVim/darkplus.nvim",
	{
		"loctvl842/monokai-pro.nvim",
		config = function()
			require("monokai-pro").setup({
				filter = "machine",
			})
		end,
	},

	--- why I keep coming back to catpuccin
	-- "catppuccin/nvim",
}
