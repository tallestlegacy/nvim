local lspconfig = require("lspconfig")

--- Mason

require("mason").setup({})
require("mason-lspconfig").setup {
  automatic_installation = false,
}


lspconfig.lua_ls.setup({})
