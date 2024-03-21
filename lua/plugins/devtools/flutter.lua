return {
	-- Flutter tools
	{
		"akinsho/flutter-tools.nvim",
		event = "VeryLazy",
		lazy = false,
		dependencies = {
			"nvim-lua/plenary.nvim",
			"stevearc/dressing.nvim", -- optional for vim.ui.select
		},
		config = function()
			require("flutter-tools").setup({
				ui = {
					border = "rounded",
				},
				widget_guides = {
					enabled = true,
				},
			})

			require("which-key").register({
				f = {
					l = {
						"<cmd>lua require('telescope').extensions.flutter.commands()<cr>",
						"Flutter Tools",
					},
				},
			}, { prefix = "<leader>" })
		end,
	},
}
