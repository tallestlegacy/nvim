-- local auto_format_pattern = { "*.ts", "*.go", "*.rs", "*.lua", "*.tsx", "*.html", "*.svelte", "*.astro", "*.md" }

local pretty = { { "prettierd", "prettier" } }
local ast = "ast-grep"

return {
  -- Formatting
  "stevearc/conform.nvim",

  -- event = "VeryLazy",

  config = function()
    require("conform").setup({
      formatters_by_ft = {
        lua = { "luaformatter" },
        -- Use a sub-list to run only the first available formatter
        javascript = pretty, -- { "eslint_d", pretty },
        javascriptreact = pretty,
        typescript = pretty,
        typescriptreact = pretty,

        json = pretty,
        jsonc = pretty,
        --	svelte = pretty,
        vue = pretty,
        astro = pretty,
        scss = pretty,
        css = pretty,
        html = pretty,

        go = { "gofumpt", "goimports-reviser", "golines" },
        rust = { "rustfmt" },
        cpp = { "clang-format" },
        python = { "black" },

        markdown = pretty,
      },

      -- Enable or disable autoformat on save
      format_on_save = function(bufnr)
        -- Disable autoformat on certain filetypes
        local ignore_filetypes = {} -- { "sql", "javascript", "vue" }
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
  end,
}
