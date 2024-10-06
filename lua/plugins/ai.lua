return {
  -- AI Completions
  {
    "Exafunction/codeium.vim",
    event = "BufEnter",
    config = function()
      -- require("codeium").setup({})
      vim.keymap.set("i", "<Tab>", vim.fn["codeium#Accept"], { expr = true, silent = true })
      -- vim.g.codeium_enabled = false
      -- vim.g.codeium_manual = true
      vim.g.codeium_idle_delay = 100
    end,
  },
}
