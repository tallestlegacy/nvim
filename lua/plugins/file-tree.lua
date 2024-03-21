-- File Tree
return {
	{
		"nvim-neo-tree/neo-tree.nvim",
		branch = "v3.x",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
			"MunifTanjim/nui.nvim",
			"3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
		},

		config = function()
			require("neo-tree").setup({

				close_if_last_window = true,
				source_selector = {
					winbar = true,
					-- statusline = true,
				},

				filesystem = {
					filtered_items = {
						visible = true,
						hide_dotfiles = false,
						hide_gitignored = false,
						hide_hidden = false,
						hide_by_name = {
							".git",
						},
					},
					follow_current_file = {
						enabled = true,
					},
				},
				buffers = {
					follow_current_file = true,
				},
			})
		end,
	},
}
