return {
	{
		"epwalsh/obsidian.nvim",
		version = "*",
		dependencies = {
			"nvim-lua/plenary.nvim",
		},
		config = function()
			require("obsidian").setup({
				workspaces = {
					{
						name = "notes",
						path = "~/Documents/Notes",
					},
				},
			})
		end,
	},
}
