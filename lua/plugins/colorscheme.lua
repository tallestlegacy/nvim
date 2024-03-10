return {
	-- "ellisonleao/gruvbox.nvim",
	"sainnhe/gruvbox-material",
	"olimorris/onedarkpro.nvim",
	"LunarVim/darkplus.nvim",
	-- Install without configuration
	"projekt0n/github-nvim-theme",
	{
		"loctvl842/monokai-pro.nvim",
		config = function()
			require("monokai-pro").setup({
				transparent_background = true,
			})
		end,
	},
}
