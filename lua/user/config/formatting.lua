local auto_format_pattern = { "*.ts", "*.go", "*.rs", "*.lua", "*.tsx", "*.html", "*.svelte", "*.astro", "*.md" }

require("conform").setup({
  formatters_by_ft = {
    lua = { "stylua" },
    -- Use a sub-list to run only the first available formatter
    javascript = { "eslint_d", { "prettierd", "prettier" } },
    typescript = { { "prettierd", "prettier" } },
    json = { { "prettierd", "prettier" } },
    vue = { { "prettierd", "prettier" } },
    go = { "gofumpt", "goimports-reviser", "golines" },
    rust = { "rustfmt" },
    cpp = { "clang-format" },
    astro = { { "prettierd", "prettier" } }
  },

  format_on_save = function(bufnr)
    -- Disable autoformat on certain filetypes
    local ignore_filetypes = { "sql", "javascript" } -- , "vue" }
    if vim.tbl_contains(ignore_filetypes, vim.bo[bufnr].filetype) then
      return
    end
    -- Disable with a global or buffer-local variable
    if vim.g.disable_autoformat or vim.b[bufnr].disable_autoformat then
      return
    end
    -- Disable autoformat for files in a certain path
    local bufname = vim.api.nvim_buf_get_name(bufnr)
    if bufname:match("/node_modules/") then
      return
    end
    -- ...additional logic...
    return { timeout_ms = 500, lsp_fallback = true }
  end,
})
