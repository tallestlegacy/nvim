local M = {}

M.ts_languages = {
  "javascript",
  "typescript",
  "tsx",
  "go",
  "rust",
  "lua",
  "dart",
  "svelte",
  "vue",
  "astro",
  "css",
  "scss",
  "pug",
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
  "vue-language-server",
  "astro-language-server",

  "clang_d",

  -- formatters
  "prettierd",
  "stylua",
}

return M
