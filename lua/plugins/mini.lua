local icons = require("builtin.ui.icons")

return {
	{
		"echasnovski/mini.nvim",
		version = "*",
		config = function()
			-- Scope highlighting
			require("mini.indentscope").setup({
				draw = {
					-- animation = require("mini.indentscope").gen_animation.none(),
				},
				symbol = icons.ui.LineMiddleDashed,
			})
		end,
	},
}
