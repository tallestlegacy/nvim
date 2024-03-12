local status_ok, wk = pcall(require, "which-key")
if not status_ok then
	print("which-key is not installed")
	return
end

local explorer = { "<cmd>Neotree focus<cr>", "Explorer" }
local explorer_toggle = { "<cmd>Neotree toggle<cr>", "Explorer" }
wk.register({ n = explorer_toggle }, { prefix = "<leader>" })

local dashboard = { "<cmd>Alpha<cr>", "Dashboard" }

local lsp = {
	a = { vim.lsp.buf.code_action, "Code Action" },
	r = { vim.lsp.buf.rename, "Rename" },
	R = { "<cmd>LspRestart<cr>", "Restart" },
	f = { vim.lsp.buf.format, "Format" },
	d = { vim.lsp.buf.definition, "Definition" },
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
	-- git signs
	s = { "<cmd>Gitsigns stage_hunk<cr>", "Stage Hunk" },
	S = { "<cmd>Gitsigns stage_buffer<cr>", "Stage Buffer" },
	u = { "<cmd>Gitsigns reset_hunk<cr>", "Unstage Hunk" },
	U = { "<cmd>Gitsigns reset_buffer<cr>", "Unstage Buffer" },
	P = { "<cmd>Gitsigns preview_hunk<cr>", "Preview Hunk" },
	b = { "<cmd>Gitsigns blame_line<cr>", "Blame Line" },
	n = { "<cmd>Gitsigns next_hunk<cr>", "Next Hunk" },
	p = { "<cmd>Gitsigns prev_hunk<cr>", "Prev Hunk" },
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

-------------------------------------------------
----------------- REGISTER ----------------------
-------------------------------------------------

wk.register({
	a = dashboard,
	e = explorer,
	f = { require("config.mappings.telescope-mappings"), "Find" },
	l = { lsp, "LSP" },
	b = { require("config.mappings.bufferline-mappings"), "Buffer" },
	t = { toggle, "Toggle" },
	p = { pm, "Plugin Management" },
	g = { git, "Git" },
	d = { diagnostics, "Diagnostics" },
	s = { split, "Split" },
	["/"] = { "<Plug>(comment_toggle_linewise_current)", "Comment toggle current line" },
}, { prefix = "<leader>" })

-- visual mode
wk.register({
	["/"] = { "<Plug>(comment_toggle_linewise_visual)", "Comment toggle linewise (visual)" },
}, { mode = "v" })

-------------------------------------------------
------------------ OVERRIDES --------------------
-------------------------------------------------

local manual_format = function()
	require("conform").format({ async = true, lsp_fallback = false })
end

require("which-key").register({
	["<leader>lf"] = { manual_format, "Format (conform)" },
})
