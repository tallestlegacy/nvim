local M = {}

M.ts_languages = {
	"javascript",
	"typescript",
	"tsx",

	"go",
	"rust",
	"lua",
	"dart",

	"svelte",
	"vue",
	"astro",

	"php",

	"css",
	"scss",
	"pug",

	"sql",
	"json",
	"toml",
	"yaml",

	"markdown",
}

M.mason_lsp = {
	"gopls",
	"golines",
	"gofumpt",
	"goimports-reviser",

	"rust-analyzer",

	"tailwindcss-language-server",
	"emmet-language-server",
	"eslint-lsp",
	"eslint_d",
	"typescript-language-server",
	"svelte-language-server",
	"vue-language-server",
	"astro-language-server",

	"clangd",

	"intelephense",

	"pyright",

	-- formatters
	"prettierd",
	"stylua",
	"gofumpt",
	"golines",
	"goimports-reviser",
}

return M
