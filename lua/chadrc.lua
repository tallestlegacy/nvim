local icons = require("builtin.ui.icons")

vim.api.nvim_set_hl(0, "Comment", {
  fg = "#ffffff",
  italic = true,
  bold = true,
})

local M = {
  ui = {
    -- Completion highlights
    cmp = {
      lspkind_text = true,
      format_colors = {
        tailwind = true
      }
    },

    -- Finder
    telescope = { style = "bordered" },

    -- Status line
    statusline = {
      separator_style = "round",
    },

    -- Highlight colors
    colorify = { enabled = true, mode = "bg" },
  },


  -- Dashboard
  nvdash = {
    load_on_startup = true,
    header = require("builtin.ui.adventure-time").bemo,
    buttons = {
      { txt = icons.ui.Search .. " Find File",   keys = "f", cmd = "Telescope find_files" },
      { txt = icons.ui.Gear .. " Configuration", keys = "c", cmd = ":cd ~/.config/nvim <cr> :e ~/.config/nvim/lua/tallestlegacy/init.lua <cr>" },
      { txt = icons.ui.Fire .. " Quit",          keys = "q", cmd = ":qa<cr>" },
    },


    lsp = { signature = true },
  },

  -- Base 64 customisation
  base46 = {
    transparency = true,
    hl_override = {
      Comment = { italic = true },
      ["@comment"] = { italic = true },
    }
  },

}

return M
