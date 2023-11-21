--- Mason
require("mason").setup({
--  opts = { ensure_installed = user.options.mason.ensure_installed },
})

require("mason-lspconfig").setup {
  automatic_installation = false,
}

require("lspconfig").lua_ls.setup {}
