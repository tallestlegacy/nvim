local telescope = require("telescope")

telescope.setup {
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
  },

  path_display = { "truncate" },
  file_ignore_patterns = { "node_modules", "git" },

  extensions_list = { "themes" }, -- "terms", "fzf" },
  color_devicons = true,
}
