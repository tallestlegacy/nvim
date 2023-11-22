require("illuminate").configure({
  providers = {
    "lsp",
    "treesitter",
    "regex",
  },
  delay = 200,
  filetypes_denylist = {
    "dirvish",
    "fugitive",
    "alpha",
    "dirbuf",
    "neo-tree",
    "DiffviewFiles",
    "TelescopePrompt",
  },
})
