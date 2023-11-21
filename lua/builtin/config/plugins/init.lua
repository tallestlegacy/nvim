-- add new plugin files here
local configs = {
  "autopairs",
  "breadcrumbs",
  "bufferline",
  "cmp",
  "comment",
  "dashboard",
  "file-tree",
  "git",
  "hover",
  "illuminate",
  "indentlines",
  "lsp",
  "lualine",
  "mappings",
  "telescope",
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
