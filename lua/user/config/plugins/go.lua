require("go").setup({
	diagnostic = { -- set diagnostic to false to disable vim.diagnostic setup
		hdlr = false, -- hook lsp diag handler and send diag to quickfix
		underline = true,
		-- virtual text setup
		virtual_text = { spacing = 0, prefix = "■" },
		signs = true,
		update_in_insert = true,
	},
	lsp_inlay_hints = {
		enable = true,
	},
})
