require("conform").setup({
	formatters_by_ft = {
		lua = { "stylua" },
		-- Use a sub-list to run only the first available formatter
		javascript = { { "prettierd", "prettier" } },
		typescript = { { "prettierd", "prettier" } },
		vue = { { "prettierd", "prettier" } },
		go = { "gofumpt", "goimports-reviser", "golines" },
		rust = { "rustfmt" },
	},
})

vim.api.nvim_create_autocmd("BufWritePre", {
	pattern = { "*.ts", "*.go", "*.lua", "*.tsx", "*.html", "*.vue" },
	callback = function(args)
		require("conform").format({ bufnr = args.buf })
	end,
})
