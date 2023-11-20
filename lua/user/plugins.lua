local plugins = {
  -- AI Completions
  {
    "Exafunction/codeium.vim",
    event = "BufEnter",
  },

  -- Linting
  "nvimtools/none-ls.nvim",

  -- Flutter tools
  {
    "akinsho/flutter-tools.nvim",
    lazy = false,
    dependencies = {
      "nvim-lua/plenary.nvim",
      "stevearc/dressing.nvim", -- optional for vim.ui.select
    },
    config = true,
  },

  -- Custom theme
  "sainnhe/gruvbox-material",
}

return plugins
