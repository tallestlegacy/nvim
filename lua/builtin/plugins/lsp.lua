local lspconfig = require("lspconfig")

--- Mason

require("mason").setup({})
require("mason-lspconfig").setup {
  automatic_installation = false,
}


lspconfig.lua_ls.setup({})
lspconfig.gopls.setup({})
lspconfig.rust_analyzer.setup({})
lspconfig.tsserver.setup({})
lspconfig.volar.setup({})
lspconfig.pyright.setup({})
