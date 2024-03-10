return {
	map = function(mode, keymap, command)
		vim.api.nvim_set_keymap(mode, keymap, command, { noremap = true, silent = true })
	end,
}
