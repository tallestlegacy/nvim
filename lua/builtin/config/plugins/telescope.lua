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
	no_ignore = true,
	file_ignore_patterns = { "node_modules" },

	extensions_list = { "themes", "fzf", "lazygit" },
	color_devicons = true,
})

pcall(telescope.load_extension, "fzf")
pcall(telescope.load_extension, "lazygit")
