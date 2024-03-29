return {
	-- LSP
	{
		"neovim/nvim-lspconfig",
		config = function()
			---@diagnostic disable-next-line: different-requires
			require("lspconfig").lua_ls.setup({})
		end,
	},

	-- Diagnostics
	"folke/trouble.nvim",
}
