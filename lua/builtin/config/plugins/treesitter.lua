require("nvim-treesitter").setup({
	build = ":TSUpdate",
})

require("nvim-treesitter.install").compilers = { "clang", "gcc" }

local parsers_path = "~/.local/share/nvim"
vim.opt.runtimepath:append(parsers_path)

local _, user = pcall(require, "user")
local opts = user.options.treesitter

require("nvim-treesitter.configs").setup({
	parser_install_dir = parsers_path,
	ensure_installed = opts.ensure_installed,

	highlight = {
		enable = true,
		use_languagetree = true,
	},
	indent = { enable = true },
	rainbow = {
		enable = true,
		extended_mode = true,
		max_file_lines = nil,
	},
})
