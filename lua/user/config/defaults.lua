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

	"css",
	"scss",
	"pug",

	"sql",
	"json",
}

M.mason_lsp = {
	"gopls",
	"golines",
	"gofumpt",
	"goimports-reviser",

	"rust-analyzer",

	"eslint-lsp",
	"eslint_d",
	"typescript-language-server",
	"svelte-language-server",
	"vue-language-server",
	"astro-language-server",

	"clangd",

	-- formatters
	"prettierd",
	"stylua",
}

return M
