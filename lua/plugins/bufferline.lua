return {
	-- {
	-- 	-- Bufferline
	-- 	"akinsho/bufferline.nvim",
	-- 	version = "*",
	-- 	dependencies = "nvim-tree/nvim-web-devicons",
	-- 	opts = {
	-- 		-- highlights = require("catppuccin.groups.integrations.bufferline").get(),
	-- 		options = {
	-- 			separator_style = "slope",
	-- 			diagnostics = "nvim-lsp",
	-- 		},
	-- 	},
	-- },
	{
		"romgrk/barbar.nvim",
		dependencies = { "nvim-tree/nvim-web-devicons", "lewis6991/gitsigns.nvim" },
		init = function()
			vim.g.barbar_auto_setup = false
		end,
		opts = {
			animation = true,
			sidebar_filetypes = {
				-- ["neo-tree"] = true,
			},
			icons = {
				pinned = { button = require("builtin.ui.icons").ui.Pinned, filename = true },
				separator_at_end = false,
			},
		},
	},
}
