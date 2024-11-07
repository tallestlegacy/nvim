return {
  {
    -- Dashboard
    "goolord/alpha-nvim",
    event = "VimEnter",

    config = function()
      -- require 'alpha'.setup(require 'alpha.themes.startify'.config)
      local alpha = require("alpha")
      local dashboard = require("alpha.themes.dashboard")

      -- go to https://textkool.com/en/ascii-art-generator

      local vim_dos_rebel = {
        [[]],
        [[]],
        [[              ███                 ]],
        [[             ░░░                  ]],
        [[ █████ █████ ████  █████████████  ]],
        [[░░███ ░░███ ░░███ ░░███░░███░░███ ]],
        [[ ░███  ░███  ░███  ░███ ░███ ░███ ]],
        [[ ░░███ ███   ░███  ░███ ░███ ░███ ]],
        [[  ░░█████    █████ █████░███ █████]],
        [[   ░░░░░    ░░░░░ ░░░░░ ░░░ ░░░░░ ]],
        [[]],
        [[]],
      }

      -- local avatar = vim_dos_rebel
      local avatar = require("builtin.ui.anya")[1]
      local icons = require("builtin.ui.icons")

      dashboard.section.header.val = avatar

      dashboard.section.buttons.val = {
        dashboard.button("t", icons.ui.Telescope .. "  Telescope", ":Telescope<cr>"),
        dashboard.button("f", icons.ui.Files .. "  Files", ":Telescope find_files<cr>"),
        dashboard.button("p", icons.ui.Folder .. "  Projects", ":Telescope project<cr>"),
        dashboard.button(
          "c",
          icons.ui.Gear .. "  Configuration",
          ":cd ~/.config/nvim <cr> :e ~/.config/nvim/lua/tallestlegacy/init.lua <cr>"
        ),
        dashboard.button("q", icons.ui.Fire .. "  Quit", ":qa<cr>"),
      }

      dashboard.section.buttons.opts = {
        spacing = 0,
        position = "top",
      }

      local function footer()
        return "happy hacking"
      end

      dashboard.section.footer.val = footer()

      dashboard.section.footer.opts.hl = "Type"
      dashboard.section.header.opts.hl = "Include"
      dashboard.section.buttons.opts.hl = "Keyword"

      dashboard.opts.opts.noautocmd = true
      alpha.setup(dashboard.opts)
    end,
  },
}
