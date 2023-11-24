local plugins = {
  -- AI Completions
  {
    "Exafunction/codeium.vim",
    event = "BufEnter",
  },

  -- Linting
  {
    "nvimtools/none-ls.nvim",
    config = function()
      return require("user.config.null-ls")
    end,
  },
  -- {
  --   "mfussenegger/nvim-lint",
  --   config = function()
  --     return require "user.config.linting"
  --   end,
  -- },
  -- -- Formatting
  -- {
  --   'stevearc/conform.nvim',
  --   config = function()
  --     return require "user.config.formatting"
  --   end
  -- },

  -- lspconfig
  {
    "neovim/nvim-lspconfig",
    config = function()
      return require("user.config.lspconfig")
    end,
  },

  -- LSP
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = require("user.config.defaults").mason_lsp,
    },
  },

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
  "RRethy/nvim-base16",
}

return plugins
