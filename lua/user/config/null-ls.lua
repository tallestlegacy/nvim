local null_ls = require "null-ls"

local augroup = vim.api.nvim_create_augroup("LSP formatting", {})

local auto_format_exceptions = { "vue", "javascript" }

null_ls.setup {
  sources = {
    filetypes = {
      "go",
      "lua",
      "rust",
      "javascript",
      "typescript",
      "svelte",
      "vue",
    },

    -- lua
    null_ls.builtins.formatting.stylua,
    -- go
    -- null_ls.builtins.diagnostics.gopls,
    null_ls.builtins.formatting.goimports_reviser,
    null_ls.builtins.formatting.golines,
    null_ls.builtins.formatting.gofumpt,
    --rust
    -- null_ls.builtins.diagnostics.rust_analyzer,
    null_ls.builtins.formatting.rustfmt,
    -- js
    null_ls.builtins.diagnostics.eslint,
    -- null_ls.builtins.diagnostics.tsserver,
    null_ls.builtins.formatting.prettier,
  },
  on_attach = function(client, bufnr)
    if client.supports_method "textDocument/formatting" then
      vim.api.nvim_clear_autocmds {
        group = augroup,
        buffer = bufnr,
      }
      vim.api.nvim_create_autocmd("BufWritePre", {
        group = augroup,
        buffer = bufnr,
        callback = function()
          for _, ft in ipairs(auto_format_exceptions) do
            if vim.bo.filetype == ft then
              return
            end
          end
          vim.lsp.buf.format { bufnr = bufnr }
        end,
      })
    end
  end,
}
