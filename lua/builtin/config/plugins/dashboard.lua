-- require 'alpha'.setup(require 'alpha.themes.startify'.config)
local alpha = require("alpha")
local dashboard = require("alpha.themes.dashboard")



-- go to https://textkool.com/en/ascii-art-generator

local vim_dos_rebel = {
  "",
  "",
  "              ███                 ",
  "             ░░░                  ",
  " █████ █████ ████  █████████████  ",
  "░░███ ░░███ ░░███ ░░███░░███░░███ ",
  " ░███  ░███  ░███  ░███ ░███ ░███ ",
  " ░░███ ███   ░███  ░███ ░███ ░███ ",
  "  ░░█████    █████ █████░███ █████",
  "   ░░░░░    ░░░░░ ░░░░░ ░░░ ░░░░░ ",
  "",
  "",

}

local anya = require "builtin.ui.anya"

dashboard.section.header.val = anya[1]

dashboard.section.buttons.val = {
  dashboard.button("f", "> find file", ":Telescope find_files <CR>"),
  dashboard.button("p", "> find project", ":lua require('telescope').extensions.projects.projects()<CR>"),
  dashboard.button("r", "> recent files", ":Telescope oldfiles <CR>"),
  dashboard.button("s", "> scratchpad", ":e ~/documents/scratchpad <CR>"),
  dashboard.button("t", "> todolist", ":e ~/documents/todolist <CR>"),
  dashboard.button("c", "> config", ":cd ~/.config/nvim <CR> :e ~/.config/nvim/lua/user/init.lua <CR>"),
  dashboard.button("q", "> quit", ":qa<CR>"),
}

dashboard.section.buttons.opts = {
  spacing = 0,
  position = "bottom"
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
