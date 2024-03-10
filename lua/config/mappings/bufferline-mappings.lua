local map = require("builtin.utils").map

local buffer = {
	-- close
	h = { "<cmd>BufferCloseLeft<cr>", "Close Left" },
	l = { "<cmd>BufferCloseRight<cr>", "Close Right" },
	o = { "<cmd>BufferCloseAllButCurrentOrPinned<cr>", "Close Others but pinned" },
	O = { "<cmd>BufferCloseAllButCurrent<cr>", "Close Other" },
	c = { "<cmd>BufferCloseAllButPinned<cr>", "Close all but pinned" },
	C = { "<cmd>BufferCloseAll<cr>", "Close all" },
	-- sorting
	d = { "<cmd>BufferOrderByDirectory<cr>", "Sort by Directory" },
	e = { "<cmd>BufferOrderByLanguague<cr>", "Sort by Extension" },
	-- pinning
	t = { "<cmd>BufferPin<cr>", "Toggle pin" },
	p = { "<cmd>BufferPick<cr>", "Pick" },
}
-- Move to previous/next
map("n", "<A-,>", "<cmd>BufferPrevious<CR>")
map("n", "<A-.>", "<cmd>BufferNext<CR>")
-- Re-order to previous/next
map("n", "<A-<>", "<cmd>BufferMovePrevious<CR>")
map("n", "<A->>", "<cmd>BufferMoveNext<CR>")

return buffer
