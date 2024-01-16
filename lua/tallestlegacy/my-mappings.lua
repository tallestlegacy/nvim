local manual_trigger = function()
	require("conform").format({ async = true, lsp_fallback = true })
end

require("which-key").register({
	["<leader>lf"] = { manual_trigger, "Format (conform)" },
	["<leader>tR"] = { "<cmd>TransparentToggle<cr>", "Toggle Transparency" },
	["<C-p>"] = { "<esc>:" },
})
