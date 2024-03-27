local lspconfig = require("lspconfig")

local markup_files = {
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
}

local servers = {
	"gopls",
	"rust_analyzer",
	"tsserver",
	-- "pyright",
	-- "dartls",
	"volar",
	"svelte",
	"clangd",
	"astro",
	"intelephense",
	-- "lua_ls",
	"taplo", -- toml
	"cssls",
	-- "zls",
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
		-- "svelte", -- svelte has its own language server
		"vue",
		"php",
		"astro",
	},
})

lspconfig.tailwindcss.setup({
	filetypes = markup_files,
	root_dir = lspconfig.util.root_pattern(
		"tailwind.config.js",
		"postcss.config.js",
		"tailwind.config.cjs",
		"tailwind.config.mjs"
	),
})

-- lspconfig.cssls.setup({
-- 	filetypes = markup_files,
-- })
--

lspconfig.lua_ls.setup({
	filetypes = { "lua" },
	cmd = { "lua-language-server" },
})

-- lspconfig.eslint.setup({
-- 	filetypes = { "javascript", "javascriptreact", "typescript", "typescriptreact", "vue", "astro" },
-- })

lspconfig.elixirls.setup({
	cmd = { "elixir-ls" },
})
