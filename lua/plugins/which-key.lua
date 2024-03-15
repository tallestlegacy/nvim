return {
	-- mappings
	{
		"folke/which-key.nvim",
		priority = 1000,
		config = function()
			vim.o.timeout = true
			vim.o.timeoutlen = 300

			require("which-key").setup({
				window = {
					border = "single",
					winblend = 10,
				},
			})
		end,
	},
}
