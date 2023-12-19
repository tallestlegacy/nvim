require("nvim-tree").setup({
  sort = {
    sorter = "case_sensitive",
  },
  view = {
    width = 30,
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = false,
    git_ignored = false,
  },
})


-- vim.api.nvim_create_autocmd({ "BufRead" }, {
--   pattern = { "*" },
--   callback = function()
--     vim.cmd("NvimTreeFindFile")
--   end,
-- })
