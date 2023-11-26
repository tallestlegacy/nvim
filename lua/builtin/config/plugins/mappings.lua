local status_ok, wk = pcall(require, "which-key")
if not status_ok then
	print("which-key is not installed")
	return
end

wk.setup({})

local explorer = { "<cmd>Neotree focus<cr>", "Explorer" }
local explorer_toggle = { "<cmd>Neotree toggle<cr>", "Explorer" }
wk.register({ n = explorer_toggle }, { mod = "A" })

local dashboard = { "<cmd>Alpha<cr>", "Dashboard" }

local find = {
	f = { "<cmd>Telescope find_files<cr>", "All Files" },
	w = { "<cmd>Telescope live_grep<cr>", "Live Grep" },
	z = { "<cmd>Telescope current_buffer_fuzzy_find<cr>", "Current Buffer" },
	b = { "<cmd>Telescope buffers<cr>", "Buffer" },
	-- Other
	s = { "<cmd>Telescope colorscheme<cr>", "Colorscheme" },
	h = { "<cmd>Telescope help_tags<cr>", "Help Tags" },
	d = { "<cmd>Telescope diagnostics<cr>", "Diagnostics" },
	c = { "<cmd>Telescope commands<cr>", "Commands" },
	m = { "<cmd>Telescope man_pages<cr>", "Man Pages" },
	k = { "<cmd>Telescope keymaps<cr>", "Keymaps" },
	e = { "<cmd>Telescope symbols<cr>", "Emoji" },
	l = {
		s = { "<cmd>Telescope lsp_document_symbols<cr>", "Document Symbols" },
		S = { "<cmd>Telescope lsp_workspace_symbols<cr>", "Workspace Symbols" },
		"LSP",
	},
	-- git stuff
	g = {
		s = { "<cmd>Telescope git_status<cr>", "Git Status" },
		b = { "<cmd>Telescope git_branches<cr>", "Git Branches" },
		c = { "<cmd>Telescope git_commits<cr>", "Git Commits" },
		C = { "<cmd>Telescope git_bcommits<cr>", "Git File Commits" },
		f = { "<cmd>Telescope git_files<cr>", "Git Files" },
	},
}

local lsp = {
	a = { "<cmd>lua vim.lsp.buf.code_action()<cr>", "Code Action" },
	r = { "<cmd>lua vim.lsp.buf.rename()<cr>", "Rename" },
	f = { "<cmd>lua vim.lsp.buf.format()<cr>", "Format" },
	d = { "<cmd>lua vim.lsp.buf.definition()<cr>", "Definition" },
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

---------------------------------------------------
------------------ REGISTER -----------------------
---------------------------------------------------

wk.register({
	a = dashboard,
	e = explorer,
	f = { find, "Find" },
	l = { lsp, "LSP" },
	b = { buffer, "Buffer" },
	t = { toggle, "Toggle" },
	p = { pm, "Plugin Management" },
	g = { git, "Git" },
}, { prefix = "<leader>" })
