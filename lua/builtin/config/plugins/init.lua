-- add new plugin files here
local configs = {
  "telescope",
  "autopairs",
  "bufferline",
  "cmp",
  "comment",
  "dashboard",
  "file-tree",
  "gitsigns",
  "lsp",
  "lualine",
  "mappings",
  "terminal",
  "treesitter",
  "trouble",
}

for _, config in ipairs(configs) do
  local status_ok, _ = pcall(require, "builtin.config.plugins." .. config)
  if not status_ok then
    vim.notify("Failed to load " .. config)
  end
end
