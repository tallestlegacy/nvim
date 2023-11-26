local M = {}

-- user plugins
M.plugins = require("user.plugins")

-- options
local defaults = require("user.config.defaults")

M.options = {
	mason = { ensure_installed = defaults.mason_lsp },
	treesitter = { ensure_installed = defaults.ts_languages },
}

-- ui
M.colorscheme = "base16-onedark"
vim.o.termguicolors = true

-- configs

return M
