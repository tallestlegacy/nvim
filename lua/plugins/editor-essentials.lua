return {

  -- surround

  -- Comments
  {
    "numToStr/Comment.nvim",
    dependencies = { "JoosepAlviste/nvim-ts-context-commentstring" },
    config = function()
      require("ts_context_commentstring").setup({
        enable = true,
        enable_autocmd = false,
      })

      require("Comment").setup({
        pre_hook = require("ts_context_commentstring.integrations.comment_nvim").create_pre_hook(),
      })
    end,
  },

  -- Comment Titles
  { "LudoPinelli/comment-box.nvim" },

  -- relative line numbers
  { "sitiom/nvim-numbertoggle" },

  -- -- Winbar
  {
    "utilyre/barbecue.nvim",
    event = "VeryLazy",
    name = "barbecue",
    version = "*",
    dependencies = {
      "SmiteshP/nvim-navic",
    },
    config = function()
      require("barbecue").setup({})
    end,
  },

  -- markdown
  {
    "OXY2DEV/markview.nvim",
    lazy = false, -- Recommended
    -- ft = "markdown" -- If you decide to lazy-load anyway

    dependencies = {
      -- You will not need this if you installed the
      -- parsers manually
      -- Or if the parsers are in your $RUNTIMEPATH
      "nvim-treesitter/nvim-treesitter",

      "nvim-tree/nvim-web-devicons"
    }
  } }
