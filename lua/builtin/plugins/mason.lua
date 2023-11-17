require("mason").setup({
    opts = {
      ensure_installed = { "lua_language_server" },
    },
    ui = {
        icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗"
        }
    }
})
