local status_ok, wk = pcall(require, "which-key")
if not status_ok then
	print("which-key is not installed")
	return
end

wk.setup({
	window = {
		border = "shadow",
	},
})

local explorer = { "<cmd>NvimTreeFocus<cr>", "Explorer" }
local explorer_toggle = { "<cmd>NvimTreeToggle<cr>", "Explorer" }
wk.register({ n = explorer_toggle }, { prefix = "<leader>" })

local dashboard = { "<cmd>Alpha<cr>", "Dashboard" }

-- custom telescope search mappings
local find = require("config.mappings.telescope_mappings")

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
	-- pinning
	t = { "<cmd>BufferLineTogglePin<cr>", "Toggle pin buffer" },
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

-- only register mod_terminal bindings using Alt key
wk.register(mod_terminal, { prefix = "<leader>" })

-- package management
local pm = {
	-- Lazy
	l = { "<cmd>Lazy<cr>", "Lazy plugin manager" },
	c = { "<cmd>Lazy clean<cr>", "Clean unused plugins" },
	u = { "<cmd>Lazy update<cr>", "Update plugins" },
	a = { "<cmd>Lazy load all<cr>", "Load all plugins" },
	i = { "<cmd>Lazy install all<cr>", "Install all plugins" },

	-- Mason
	m = { "<cmd>Mason<cr>", "Mason" },
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

-- Window management
local split = {
	h = { "<cmd>split<cr>", "Horizontsl Split window" },
	v = { "<cmd>vsplit<cr>", "Vertical Split window" },
	-- q = { "<cmd>close<cr>", "Close window" },
	-- o = { "<cmd>only<cr>", "Only window" },
}

local harpoon = {
	m = { require("harpoon.ui").add_file, "Add file to harpoon" },
	t = { require("harpoon.ui").toggle_quick_menu, "Toggle harpoon menu" },
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
	s = { split, "Split" },
	h = { harpoon, "Harpoon" },
	["/"] = { "<Plug>(comment_toggle_linewise_current)", "Comment toggle current line" },
}, { prefix = "<leader>" })

-- visual mode
wk.register({
	["/"] = { "<Plug>(comment_toggle_linewise_visual)", "Comment toggle linewise (visual)" },
}, { mode = "v" })

-------------------------------------------------
------------------ OVERRIDES --------------------
-------------------------------------------------
pcall(require, "user.config.mappings")
