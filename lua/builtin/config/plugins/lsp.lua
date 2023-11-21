local lspconfig = require("lspconfig")

--- Mason

--- local _, user = pcall(require, "user")

require("mason").setup({
--  opts = { ensure_installed = user.options.mason.ensure_installed },
})

require("mason-lspconfig").setup {
  automatic_installation = false,
}


lspconfig.lua_ls.setup({})
