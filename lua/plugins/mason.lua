return {
  -- Mason
  {
    "williamboman/mason.nvim",
    opts = {},
  },
  -- Mason lspconfig
  {
    "williamboman/mason-lspconfig",
    lazy = true,
    event = "User FileOpened",
    dependencies = "mason.nvim",
  },

  -- Mason tool installer
  {
    "WhoIsSethDaniel/mason-tool-installer.nvim",
    config = function()
      -- Mason tool installer for custom lsps and formatters
      local status_ok, opts = pcall(require, "config.mason-lsp")
      if status_ok and opts.ensure_installed then
        require("mason-tool-installer").setup({
          ensure_installed = opts.ensure_installed,
        })
      end
    end
  },
}
