local lspconfig = require("lspconfig")

local capabilities = require("cmp_nvim_lsp").default_capabilities()

local servers = {
	"gopls",
	"rust_analyzer",
	"tsserver",
	"pyright",
	"dartls",
	"volar",
	"svelte",
	"clangd",
	"astro",
	"tailwindcss",
	"intelephense",
	--  "luals",
}

for _, lsp in ipairs(servers) do
	lspconfig[lsp].setup({
		capabilities = capabilities,
	})
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
	},
})
