local icons = require("builtin.ui.icons")

return {
  {
    "echasnovski/mini.nvim",
    version = "*",
    config = function()
      -- HIGHLIGHT WORD UNDER CURSOR
      require("mini.cursorword").setup()


      -- AUTOPAIRS
      require('mini.pairs').setup()

      -- COMPLETIONS
      require("mini.completion").setup()


      -- NOTIFICATIONS
      -- require("mini.notify").setup()


      -- SURROUND
      require("mini.surround").setup()
    end,
  },
}
