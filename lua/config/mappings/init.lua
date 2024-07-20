local status_ok, wk = pcall(require, "which-key")
if not status_ok then
  print("which-key is not installed")
  return
end


require("config.mappings.telescope-mappings")

-- Explorer
wk.add({
  { "<leader>n", "<cmd>Neotree toggle<cr>", desc = "Explorer (toggle)" },
  { "<leader>e", "<cmd>Neotree focus<cr>",  desc = "Explorer (focuss)" }
})

-- Dashboard
wk.add({ "<leader>a", "<cmd>Alpha<cr>", desc = "Dashboard" })

-- Language server options
wk.add({
  { "<leader>l",  group = "LSP" },
  { "<leader>la", vim.lsp.buf.code_action, desc = "Code Action" },
  { "<leader>lr", vim.lsp.buf.rename,      desc = "Rename" },
  { "<leader>lR", "<cmd>LspRestart<cr>",   desc = "Restart" },
  { "<leader>lf", vim.lsp.buf.format,      desc = "Format" },
  { "<leader>ld", vim.lsp.buf.definition,  desc = "Definition" },
  {
    "<leader>lh",
    function() vim.lsp.inlay_hint.enable(not vim.lsp.inlay_hint.is_enabled()) end,
    desc = "Inlay hints (toggle)"
  },
})

wk.add({
  { "<leader>t",  group = "Terminal/Toggle" },
  --  terminal
  { "<leader>th", "<cmd>ToggleTerm direction=horizontal<cr>",     desc = "Horizontal term" },
  { "<leader>tv", "<cmd>ToggleTerm direction=vertical<cr>",       desc = "Vertical term" },
  { "<leader>tf", "<cmd>ToggleTerm direction=float<cr>",          desc = "Floating term" },

  --trouble
  { "<leader>tt", "<cmd>TroubleToggle<cr>",                       desc = "Toggle Trouble" },
  { "<leader>tw", "<cmd>TroubleToggle workspace_diagnostics<cr>", desc = "Workspace Diagnostics" },
  { "<leader>td", "<cmd>TroubleToggle document_diagnostics<cr>",  desc = "Document Diagnostics" },
  { "<leader>tq", "<cmd>TroubleToggle quickfix<cr>",              desc = "Quickfix" },
  { "<leader>tr", "<cmd>TroubleToggle lsp_references<cr>",        desc = "LSP References" },
})

-- Terminal
wk.add({
  { "<leader>1", "<cmd>ToggleTerm direction=horizontal<cr>", desc = "Horizontal term" },
  { "<leader>2", "<cmd>ToggleTerm direction=vertical<cr>",   desc = "Vertical term" },
  { "<leader>3", "<cmd>ToggleTerm direction=float<cr>",      desc = "Floating term" },
})


-- package management
wk.add({
  { "<leader>p",  group = "Package" },
  -- Lazy
  { "<leader>pl", "<cmd>Lazy<cr>",             desc = "Lazy plugin manager" },
  { "<leader>pc", "<cmd>Lazy clean<cr>",       desc = "Clean unused plugins" },
  { "<leader>pu", "<cmd>Lazy update<cr>",      desc = "Update plugins" },
  { "<leader>pa", "<cmd>Lazy load all<cr>",    desc = "Load all plugins" },
  { "<leader>pi", "<cmd>Lazy install all<cr>", desc = "Install all plugins" },

  -- Mason
  { "<leader>pm", "<cmd>Mason<cr>",            desc = "Mason" },
})

-- Git stuff
wk.add({
  { "<leader>g",  group = "Git" },
  -- diff view
  { "<leader>gd", "<cmd>DiffviewOpen<cr>",                                 desc = "Diffview Open" },
  { "<leader>gc", "<cmd>DiffviewClose<cr>",                                desc = "Diffview Close" },
  { "<leader>gr", "<cmd>DiffviewRefresh<cr>",                              desc = "Diffview Refresh" },
  { "<leader>gh", "<cmd>DiffviewFileHistory<cr>",                          desc = "Diffview File History" },
  { "<leader>gg", require("config.mappings.mapping-utils").lazygit_toggle, desc = "LazyGit" },
  -- git signs
  { "<leader>gs", "<cmd>Gitsigns stage_hunk<cr>",                          desc = "Stage Hunk" },
  { "<leader>gS", "<cmd>Gitsigns stage_buffer<cr>",                        desc = "Stage Buffer" },
  { "<leader>gu", "<cmd>Gitsigns reset_hunk<cr>",                          desc = "Unstage Hunk" },
  { "<leader>gU", "<cmd>Gitsigns reset_buffer<cr>",                        desc = "Unstage Buffer" },
  { "<leader>gP", "<cmd>Gitsigns preview_hunk<cr>",                        desc = "Preview Hunk" },
  { "<leader>gb", "<cmd>Gitsigns blame_line<cr>",                          desc = "Blame Line" },
  { "<leader>gn", "<cmd>Gitsigns next_hunk<cr>",                           desc = "Next Hunk" },
  { "<leader>gp", "<cmd>Gitsigns prev_hunk<cr>",                           desc = "Prev Hunk" },
})

-- Diagnostics
wk.add({
  { "<leader>d",  group = "Diagnostics" },
  { "<leader>dn", vim.diagnostic.goto_next,  desc = "Next Diagnostic" },
  { "<leader>dp", vim.diagnostic.goto_prev,  desc = "Prev Diagnostic" },
  { "<leader>df", vim.diagnostic.open_float, desc = "Float Diagnostic" },
})



-- window managment
wk.add({
  { "<leader>sh", "<cmd>split<cr>",  desc = "Horizontsl Split window" },
  { "<leader>sv", "<cmd>vsplit<cr>", desc = "Vertical Split window" },
})


-------------------------------------------------
------------------ OVERRIDES --------------------
-------------------------------------------------

local manual_format = function()
  require("conform").format({ async = true, lsp_fallback = false })
end

wk.add({
  { "<leader>F",  "<cmd>Telescope<cr>",                      desc = "Telescope" },
  { "<leader>S",  "<cmd>Spectre<cr>",                        desc = "Spectre" },
  { "<leader>/",  "<Plug>(comment_toggle_linewise_current)", desc = "Comment toggle current line" },
  { "<leader>lf", manual_format,                             desc = "Format (conform)" },
  {
    "<leader>fl",
    "<cmd>lua require('telescope').extensions.flutter.commands()<cr>",
    desc = "Flutter Tools"
  },
})
