local status_ok, lint = pcall(require("lint"))
if not status_ok then
	vim.notify("lint plugin not found")
	return
end

lint.linters_by_ft = {
	javascript = { "eslint" },
	typescript = { "eslint" },
	typescriptreact = { "eslint" },
}

local lint_callback = function()
	lint.try_lint()
end

local lint_events = { "BufEnter", "BufWritePost", "InsertLeave", "TextChanged", "TextChangedI" }

vim.api.nvim_create_autocmd(lint_events, {
	callback = lint_callback,
})
