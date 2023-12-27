local status_ok, wk = pcall(require, "which-key")
if not status_ok then
  print("which-key is not installed")
  return
end

wk.setup({})

local explorer = { "<cmd>NvimTreeFocus<cr>", "Explorer" }
local explorer_toggle = { "<cmd>NvimTreeToggle<cr>", "Explorer" }
wk.register({ n = explorer_toggle }, { mod = "A" })

local dashboard = { "<cmd>Alpha<cr>", "Dashboard" }

-- custom telescope search mappings
local find = require("builtin.config.mappings.telescope_mappings")


local lsp = {
  a = { vim.lsp.buf.code_action, "Code Action" },
  r = { vim.lsp.buf.rename, "Rename" },
  f = { vim.lsp.buf.format, "Format" },
  d = { vim.lsp.buf.definition, "Definition" },
}

local buffer = {
  -- cycle
  n = { "<cmd>BufferLineCycleNext<cr>", "Next" },
  p = { "<cmd>BufferLineCyclePrev<cr>", "Prev" },
  -- close
  h = { "<cmd>BufferLineCloseLeft<cr>", "Close Left" },
  l = { "<cmd>BufferLineCloseRight<cr>", "Close Right" },
  o = { "<cmd>BufferLineCloseLeft<cr><cmd>BufferLineCloseRight<cr>", "Close Other" },
  c = { "<cmd>BufferLineCloseLeft<cr><cmd>BufferLineCloseRight<cr><cmd>BufferLineCloseRight<cr>", "Close All" },
  -- sorting
  d = { "<cmd>BufferLineSortByDirectory<cr>", "Sort by Directory" },
  e = { "<cmd>BufferLineSortByExtension<cr>", "Sort by Extension" },
}

local toggle = {
  --  terminal
  h = { "<cmd>ToggleTerm direction=horizontal<cr>", "Horizontal term" },
  v = { "<cmd>ToggleTerm direction=vertical<cr>", "Vertical term" },
  f = { "<cmd>ToggleTerm direction=float<cr>", "Floating term" },

  --trouble
  t = { "<cmd>TroubleToggle<cr>", "Toggle Trouble" },
  w = { "<cmd>TroubleToggle workspace_diagnostics<cr>", "Workspace Diagnostics" },
  d = { "<cmd>TroubleToggle document_diagnostics<cr>", "Document Diagnostics" },
  q = { "<cmd>TroubleToggle quickfix<cr>", "Quickfix" },
  r = { "<cmd>TroubleToggle lsp_references<cr>", "LSP References" },
}

local mod_terminal = {
  ["1"] = { "<cmd>ToggleTerm direction=horizontal<cr>", "Horizontal term" },
  ["2"] = { "<cmd>ToggleTerm direction=vertical<cr>", "Vertical term" },
  ["3"] = { "<cmd>ToggleTerm direction=float<cr>", "Floating term" },
}
wk.register(mod_terminal, { mod = "A" })

-- plugin management
local pm = {
  l = { "<cmd>Lazy<cr>", "Lazy plugin manager" },
  c = { "<cmd>Lazy clean<cr>", "Clean unused plugins" },
  u = { "<cmd>Lazy update<cr>", "Update plugins" },
}

-- Git stuff
local git = {
  -- diff view
  d = { "<cmd>DiffviewOpen<cr>", "Diffview Open" },
  c = { "<cmd>DiffviewClose<cr>", "Diffview Close" },
  r = { "<cmd>DiffviewRefresh<cr>", "Diffview Refresh" },
  h = { "<cmd>DiffviewFileHistory<cr>", "Diffview File History" },
  g = { "<cmd>LazyGit<cr>", "LazyGit" },
}

-- Diagnostics
local diagnostics = {
  n = { vim.diagnostic.goto_next, "Next Diagnostic" },
  p = { vim.diagnostic.goto_prev, "Prev Diagnostic" },
  f = { vim.diagnostic.open_float, "Float Diagnostic" },
}


-------------------------------------------------
----------------- REGISTER ----------------------
-------------------------------------------------

wk.register({
  a = dashboard,
  e = explorer,
  f = { find, "Find" },
  l = { lsp, "LSP" },
  b = { buffer, "Buffer" },
  t = { toggle, "Toggle" },
  p = { pm, "Plugin Management" },
  g = { git, "Git" },
  d = { diagnostics, "Diagnostics" },
}, { prefix = "<leader>" })

-------------------------------------------------
------------------ OVERRIDES --------------------
-------------------------------------------------
pcall(require, "user.config.mappings")
