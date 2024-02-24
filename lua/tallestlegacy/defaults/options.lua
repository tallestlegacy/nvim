local options = {
	-- numberline
	number = true,
	numberwidth = 4,
	relativenumber = true,

	-- editor
	shiftwidth = 2,
	tabstop = 2,
	expandtab = true,
	smartcase = true,
	smartindent = true,
	cursorline = true,
	clipboard = "unnamedplus",
	-- guicursor = "i:blinkon",
	wrap = false,

	-- statusline
	showmode = true,
	showtabline = 2,

	-- window
	splitbelow = true,
	splitright = true,
	scrolloff = 8,
	sidescrolloff = 8,
	termguicolors = true,

	-- other
	timeoutlen = 1000,
	undofile = true,
	updatetime = 300,
	writebackup = false,
	spell = true,

	--search
	hlsearch = true,
	incsearch = true,
}

-- update options
for k, v in pairs(options) do
	vim.opt[k] = v
end

-- Other setting
local icons = require("builtin.ui.icons")

local default_diagnostic_config = {
	signs = {
		active = true,
		values = {
			{ name = "DiagnosticSignError", text = icons.diagnostics.Error },
			{ name = "DiagnosticSignWarn", text = icons.diagnostics.Warning },
			{ name = "DiagnosticSignHint", text = icons.diagnostics.Hint },
			{ name = "DiagnosticSignInfo", text = icons.diagnostics.Information },
		},
	},
	virtual_text = true,
	update_in_insert = false,
	underline = true,
	severity_sort = true,
	float = {
		focusable = true,
		style = "minimal",
		border = "rounded",
		source = "always",
		header = "",
		prefix = "",
	},
}

vim.diagnostic.config(default_diagnostic_config)

local icons = require("builtin.ui.icons")

-- diagnostics icons
vim.fn.sign_define("DiagnosticSignError", { text = icons.diagnostics.BoldError, texthl = "DiagnosticSignError" })
vim.fn.sign_define("DiagnosticSignWarn", { text = "", texthl = "DiagnosticSignWarn" })
vim.fn.sign_define("DiagnosticSignInfo", { text = "", texthl = "DiagnosticSignInfo" })
vim.fn.sign_define("DiagnosticSignHint", { text = "", texthl = "DiagnosticSignHint" })
