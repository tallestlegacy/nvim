local M = require("telescope.builtin")

local find = {
  r = { M.resume, "Resume search" },
  n = { M.notify, "Notifications" },
  F = { "<cmd>lua require('telescope.builtin').find_files({ no_ignore = true })<cr>", "All Files" },
  f = { M.find_files, "Find Files" },
  w = { M.live_grep, "Live Grep" },
  z = { M.current_buffer_fuzzy_find, "Current Buffer" },
  b = { M.buffers, "Buffer" },
  -- Other
  s = { M.colorscheme, "Colorscheme" },
  h = { M.help_tags, "Help Tags" },
  d = { M.diagnostics, "Diagnostics" },
  c = { M.commands, "Commands" },
  m = { M.man_pages, "Man Pages" },
  k = { M.keymaps, "Keymaps" },
  e = { M.symbols, "Emoji" },
  -- l = {
  -- 	s = { M.lsp_document_symbols, "Document Symbols" },
  -- 	S = { M.lsp_workspace_symbols, "Workspace Symbols" },
  -- 	"LSP",
  -- },
  -- git stuff
  g = {
    s = { M.git_status, "Git Status" },
    b = { M.git_branches, "Git Branches" },
    c = { M.git_commits, "Git Commits" },
    C = { M.git_bcommits, "Git File Commits" },
    f = { M.git_files, "Git Files" },
  },
}

return find
