local M = {}

-- user plugins
M.plugins = require("user.plugins")

-- ui
M.colorscheme = "gruvbox-material"
vim.o.termguicolors = true

-- configs
pcall(require, "user.config")

return M
