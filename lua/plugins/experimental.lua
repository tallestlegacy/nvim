-- None-essential plugins that I like to use

local plugins = {
  -- tmux
  { "christoomey/vim-tmux-navigator", lazy = false },

  -- find and replace
  {
    "nvim-pack/nvim-spectre",
    event = "VeryLazy",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      require("spectre").setup()
    end,
  },
}

return plugins
