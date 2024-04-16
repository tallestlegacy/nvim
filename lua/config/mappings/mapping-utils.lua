local Terminal = require("toggleterm.terminal").Terminal
local lazygit = Terminal:new({
	cmd = "lazygit",
	hidden = true,
	direction = "float",
})

return {
	lazygit_toggle = function()
		lazygit:toggle()
	end,
}
