-- local status_ok, lint = pcall(require("lint"))
-- if not status_ok then
--   vim.notify("lint plugin not found")
--   return
-- end

require("lint").linters_by_ft = {
	javascript = { "eslint_d" },
	typescript = { "eslint_d" },
	typescriptreact = { "eslint_d" },
	vue = { "eslint_d" },
	--lua = { "luacheck" },
}

local lint_callback = function()
	require("lint").try_lint()
end

local lint_events = { "BufWritePost", "InsertLeave", "TextChanged", "TextChangedI" }

vim.api.nvim_create_autocmd(lint_events, {
	callback = lint_callback,
})
