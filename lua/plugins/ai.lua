return {
	-- AI Completions
	{
		"Exafunction/codeium.vim",
		event = "BufEnter",
		config = function()
			-- require("codeium").setup({})
			vim.keymap.set("i", "<Tab>", vim.fn["codeium#Accept"], { expr = true, silent = true })
		end,
	},
}
