local icons = require("builtin.ui.icons")

return {
	{
		"echasnovski/mini.nvim",
		version = "*",
		config = function()
			-- HIGHLIGHT WORD UNDER CURSOR
			require("mini.cursorword").setup()

			-- NOTIFICATIONS
			-- require("mini.notify").setup()

			-- AUTO PAIRS
			require("mini.pairs").setup()

			-- SURROUND
			require("mini.surround").setup()
		end,
	},
}
