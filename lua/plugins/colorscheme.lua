return {
	"ellisonleao/gruvbox.nvim",
	"sainnhe/gruvbox-material",
	"olimorris/onedarkpro.nvim",
	"LunarVim/darkplus.nvim",
	-- Install without configuration
	"projekt0n/github-nvim-theme",
	{
		"loctvl842/monokai-pro.nvim",
		config = function()
			require("monokai-pro").setup({
				-- transparent_background = true,
			})
		end,
	},
	{
		"catppuccin/nvim",
		config = function()
			require("catppuccin").setup({
				flavour = "mocha", -- latte, frappe, macchiato, mocha
				transparent_background = true,
				integrations = {
					neotree = true,
					indent_blankline = {
						enabled = true,
						scope_color = "lavender", -- catppuccin color (eg. `lavender`) Default: text
						colored_indent_levels = true,
					},
					lsp_trouble = true,
					treesitter_context = true,
				},
				custom_highlights = require("config.colors").custom_highlights,
			})
		end,
	},
}
