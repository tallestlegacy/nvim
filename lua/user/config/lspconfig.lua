local lspconfig = require("lspconfig")

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
}

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup({})
end
