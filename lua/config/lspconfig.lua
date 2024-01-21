local lspconfig = require("lspconfig")

local servers = {
	"gopls",
	"rust_analyzer",
	"tsserver",
	"pyright",
	-- "dartls",
	"volar",
	"svelte",
	"clangd",
	"astro",
	"intelephense",
	-- "lua_ls",
}

for _, lsp in ipairs(servers) do
	lspconfig[lsp].setup({})
end

lspconfig.emmet_language_server.setup({
	filetypes = {
		"css",
		"html",
		"javascript",
		"javascriptreact",
		"typescript",
		"typescriptreact",
		"svelte",
		"vue",
		"php",
		"astro",
	},
})

lspconfig.tailwindcss.setup({
	filetypes = {
		"html",
		"css",
		"scss",
		"javascript",
		"javascriptreact",
		"typescript",
		"typescriptreact",
		"vue",
		"astro",
	},
	root_dir = lspconfig.util.root_pattern("tailwind.config.js", "postcss.config.js", "tailwind.config.mjs"),
})

lspconfig.lua_ls.setup({
	filetypes = { "lua" },
	cmd = { "lua-language-server" },
})
