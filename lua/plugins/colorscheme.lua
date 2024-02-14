return {
	"ellisonleao/gruvbox.nvim",
	{
		"wittyjudge/gruvbox-material.nvim",
		config = function()
			-- vim.cmd("colorscheme gruvbox-material")
		end,
	},

	-- {
	-- 	"xiyaowong/transparent.nvim",
	-- 	config = function()
	-- 		require("transparent").setup({ -- Optional, you don't have to run setup.
	-- 			groups = { -- table: default groups
	-- 				"Normal",
	-- 				"NormalNC",
	-- 				"Comment",
	-- 				"Constant",
	-- 				"Special",
	-- 				"Identifier",
	-- 				"Statement",
	-- 				"PreProc",
	-- 				"Type",
	-- 				"Underlined",
	-- 				"Todo",
	-- 				"String",
	-- 				"Function",
	-- 				"Conditional",
	-- 				"Repeat",
	-- 				"Operator",
	-- 				"Structure",
	-- 				"LineNr",
	-- 				"NonText",
	-- 				"SignColumn",
	-- 				-- "CursorLine",
	-- 				-- "CursorLineNr",
	-- 				-- "StatusLine",
	-- 				-- "StatusLineNC",
	-- 				"EndOfBuffer",
	-- 			},
	-- 			extra_groups = {}, -- table: additional groups that should be cleared
	-- 			exclude_groups = {}, -- table: groups you don't want to clear
	-- 		})
	-- 	end,
	-- },

	-- {
	-- 	"RRethy/nvim-base16",
	-- 	config = function()
	-- 		require("base16-colorscheme").with_config({
	-- 			telescope = true,
	-- 			cmp = false,
	-- 			git_signs = false,
	-- 		})
	-- 	end,
	-- },

	{
		"catppuccin/nvim",
		config = function()
			require("catppuccin").setup({
				flavor = "mocha",
				transparent_background = false,
				term_colors = true,
				dim_inactive = {
					enabled = true,
					shade = "dark",
					percentage = 0.2,
				},
				styles = {
					comments = { "italic" },
					conditionals = { "italic" },
					-- variables = { "bold" },
				},
				integrations = {
					treesitter = true,
				},
			})
		end,
	},
}
