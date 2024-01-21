-- None-essential plugins that I like to use

local plugins = {
	-- Flutter tools
	{
		"akinsho/flutter-tools.nvim",
		event = "VeryLazy",
		lazy = false,
		dependencies = {
			"nvim-lua/plenary.nvim",
			"stevearc/dressing.nvim", -- optional for vim.ui.select
		},
		config = function()
			require("flutter-tools").setup({})

			require("which-key").register({
				f = {
					l = {
						d = { "<cmd>FlutterDevices<cr>", "Devices" },
						s = { "<cmd>FlutterRun<cr>", "Start (Run)" },
						r = { "<cmd>FlutterReload<cr>", "Reload" },
						R = { "<cmd>FlutterRestart<cr>", "Restart" },
						q = { "<cmd>FlutterQuit<cr>", "Quit" },
						"Flutter tools",
					},
				},
			}, { prefix = "<leader>" })
		end,
	},

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
		opts = {
			diagnostic = { -- set diagnostic to false to disable vim.diagnostic setup
				hdlr = false, -- hook lsp diag handler and send diag to quickfix
				underline = true,
				-- virtual text setup
				virtual_text = { spacing = 0, prefix = "■" },
				signs = true,
				update_in_insert = true,
			},
			lsp_inlay_hints = {
				enable = true,
			},
		},

		event = { "CmdlineEnter" },
		ft = { "go", "gomod" },
		build = ':lua require("go.install").update_all_sync()', -- if you need to install/update all binaries,
	},

	-- Rest Client
	{
		"rest-nvim/rest.nvim",
		dependencies = { { "nvim-lua/plenary.nvim" } },
		config = function()
			require("rest-nvim").setup({})
		end,
	},

	"alec-gibson/nvim-tetris",

  'Mofiqul/vscode.nvim',
}

return plugins