local plugins = {
	-- AI Completions
	{
		"Exafunction/codeium.vim",
		event = "BufEnter",
	},

	-- Linting
	-- {
	--   "nvimtools/none-ls.nvim",
	--   config = function()
	--     return require("user.config.null-ls")
	--   end,
	-- },
	--

	{
		"mfussenegger/nvim-lint",
		config = function()
			return require("user.config.linting")
		end,
	},

	-- Formatting
	{
		"stevearc/conform.nvim",
		event = "VeryLazy",
		config = function()
			return require("user.config.formatting")
		end,
	},

	-- lspconfig
	{
		"neovim/nvim-lspconfig",
		event = "BufEnter",
		config = function()
			return require("user.config.lspconfig")
		end,
	},

	-- Flutter tools
	{
		"akinsho/flutter-tools.nvim",
		event = "VeryLazy",
		lazy = false,
		dependencies = {
			"nvim-lua/plenary.nvim",
			"stevearc/dressing.nvim", -- optional for vim.ui.select
		},
		config = true,
	},

	-- Custom theme
	--	"sainnhe/gruvbox-material",
	"wittyjudge/gruvbox-material.nvim",

	-- Multiple cursors
	-- "mg979/vim-visual-multi",

	-- Go
	{
		"ray-x/go.nvim",
		dependencies = { -- optional packages
			"ray-x/guihua.lua",
			"neovim/nvim-lspconfig",
			"nvim-treesitter/nvim-treesitter",
		},
		config = function()
			require("user.config.plugins.go")
		end,
		event = { "CmdlineEnter" },
		ft = { "go", "gomod" },
		build = ':lua require("go.install").update_all_sync()', -- if you need to install/update all binaries
	},
}

return plugins
