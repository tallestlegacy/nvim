--- Mason
require("mason").setup({})

-- Mason tool installer for custom lsps and formatters
local status_ok, user_config = pcall(require, "user")
if status_ok and user_config.options.mason then
	require("mason-tool-installer").setup({
		ensure_installed = user_config.options.mason.ensure_installed,
	})
end

require("lspconfig").lua_ls.setup({})
