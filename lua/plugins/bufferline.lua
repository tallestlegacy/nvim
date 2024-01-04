return {
	-- Bufferline
	"akinsho/bufferline.nvim",
	version = "*",
	dependencies = "nvim-tree/nvim-web-devicons",
	opts = {
		options = {
			separator_style = "slope",
			diagnostics = "nvim-lsp",
		},
	},
}
