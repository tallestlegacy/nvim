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
	--  "luals",
}

for _, lsp in ipairs(servers) do
	lspconfig[lsp].setup({
		capabilities = capabilities,
	})
end
