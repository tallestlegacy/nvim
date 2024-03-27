return {
	{ -- TreeSitter
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",

		config = function()
			require("nvim-treesitter").setup({
				build = ":TSUpdate",
			})

			require("nvim-treesitter.install").compilers = { "clang", "gcc" }

			-- ensure the nvim treesitter directory is ok
			local parsers_path = "~/.local/share/nvim"
			vim.opt.runtimepath:append(parsers_path)

			-- load treesitter langagues from configs
			local status_ok, opts = pcall(require, "config.treesitter")
			if not status_ok then
				opts = { ensure_installed = { "lua" } }
			end

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
		end,
	},
	{
		"nvim-treesitter/nvim-treesitter-context",
		config = function()
			require("treesitter-context").setup({
				enable = true,
				mode = "cursor",
				zindex = 20,
				trim_sope = "outer",
			})
		end,
	},

	{
		"windwp/nvim-ts-autotag",
		ft = {
			"html",
			"css",
			"scss",
			"javascript",
			"javascriptreact",
			"typescript",
			"typescriptreact",
			"svelte",
			"vue",
			"astro",
		},
		config = function()
			-- require("nvim-ts-autotag").setup()
		end,
	},
}
