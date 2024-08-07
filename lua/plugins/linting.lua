return {
  -- Linting
  "mfussenegger/nvim-lint",

  config = function()
    require("lint").linters_by_ft = {
      -- javascript = { "eslint_d" },
      -- typescript = { "eslint_d" },
      -- javascriptreact = { "eslint_d" },
      -- typescriptreact = { "eslint_d" },
      -- vue = { "eslint_d" },
    }

    local lint_callback = function()
      require("lint").try_lint()
    end

    local lint_events = {
      -- "BufReadPre",
      "BufWritePost",
      "BufEnter",
      "InsertLeave",
      "TextChanged",
      "TextChangedI",
    }

    vim.api.nvim_create_autocmd(lint_events, {
      callback = lint_callback,
    })
  end,
}
