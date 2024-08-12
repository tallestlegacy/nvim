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
  {
    "folke/trouble.nvim",
    opt = {},
    cmd = "Trouble",
  },


  -- Code actions
  {
    "rachartier/tiny-code-action.nvim",
    dependencies = {
      { "nvim-lua/plenary.nvim" },
      { "nvim-telescope/telescope.nvim" },
    },
    event = "LspAttach",
    config = function()
      require('tiny-code-action').setup()
    end
  }
}
