local M = {}

M.ts_languages = {
  "javascript",
  "typescript",
  "tsx",
  "go",
  "rust",
  -- "lua",
  "dart",
  "svelte",
  "vue",
  "astro",
  "css",
  "scss",
}

M.mason_lsp = {
  "gopls",
  "golines",
  "gofumpt",
  "goimports-reviser",

  "rust-analyzer",

  "eslint-lsp",
  "typescript-language-server",
  "svelte-language-server",
  "vue-langague-server",

  "clang_d",
}

return M
