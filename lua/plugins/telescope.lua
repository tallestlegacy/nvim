return {
	-- Telescope
	{
		"nvim-telescope/telescope.nvim",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-telescope/telescope-symbols.nvim",
			{
				"nvim-telescope/telescope-fzf-native.nvim",
				build = "cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build",
			},
			build = "make",
		},

		config = function()
			local telescope = require("telescope")
			local trouble = require("trouble.providers.telescope")

			telescope.setup({
				defaults = {
					sorting_strategy = "ascending",
					layout_strategy = "horizontal",
					layout_config = {
						horizontal = {
							prompt_position = "top",
							preview_width = 0.55,
							results_width = 0.8,
						},
						vertical = {
							mirror = false,
						},
					},
					mappings = {
						i = { ["<C-j>"] = trouble.open_with_trouble },
						n = { ["<C-j>"] = trouble.open_with_trouble },
					},
				},

				path_display = { "truncate" },
				no_ignore = false,
				file_ignore_patterns = { "node_modules", "build", "target" },
				extensions_list = { "themes", "fzf", "lazygit" },
				color_devicons = true,
			})

			pcall(telescope.load_extension, "fzf")
			pcall(telescope.load_extension, "lazygit")
		end,
	},
}
