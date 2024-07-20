local map = require("builtin.utils").map

require("which-key").add({
  -- close
  { "<leader>bh", "<cmd>BufferCloseLeft<cr>",                  desc = "Close Left" },
  { "<leader>bl", "<cmd>BufferCloseRight<cr>",                 desc = "Close Right" },
  { "<leader>bo", "<cmd>BufferCloseAllButCurrentOrPinned<cr>", desc = "Close Others but pinned" },
  { "<leader>bO", "<cmd>BufferCloseAllButCurrent<cr>",         desc = "Close Other" },
  { "<leader>bc", "<cmd>BufferCloseAllButPinned<cr>",          desc = "Close all but pinned" },
  { "<leader>bC", "<cmd>BufferCloseAll<cr>",                   desc = "Close all" },
  -- sorting
  { "<leader>bd", "<cmd>BufferOrderByDirectory<cr>",           desc = "Sort by Directory" },
  { "<leader>be", "<cmd>BufferOrderByLanguague<cr>",           desc = "Sort by Extension" },
  -- pinning
  { "<leader>bt", "<cmd>BufferPin<cr>",                        desc = "Toggle pin" },
  { "<leader>bp", "<cmd>BufferPick<cr>",                       desc = "Pick" },
})
-- Move to previous/next
map("n", "<A-,>", "<cmd>BufferPrevious<CR>")
map("n", "<A-.>", "<cmd>BufferNext<CR>")
-- Re-order to previous/next
map("n", "<A-<>", "<cmd>BufferMovePrevious<CR>")
map("n", "<A->>", "<cmd>BufferMoveNext<CR>")
