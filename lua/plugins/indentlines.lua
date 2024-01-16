return {
	{
		-- Indent blank line
		"lukas-reineke/indent-blankline.nvim",
		main = "ibl",
		config = function()
			local icons = require("builtin.ui.icons")

			local hooks = require("ibl.hooks")

			require("ibl").setup({
				indent = {
					char = icons.ui.LineMiddleDashed,
				},
				scope = {
					enabled = false,
				},
			})
			hooks.register(hooks.type.SCOPE_HIGHLIGHT, hooks.builtin.scope_highlight_from_extmark)
		end,
	},
}
