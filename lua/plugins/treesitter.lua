return {
  { -- TreeSitter
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",

    config = function()
      require("nvim-treesitter").setup({
        build = ":TSUpdate",
      })

      require("nvim-treesitter.install").compilers = { "clang", "gcc" }

      -- ensure the nvim treesitter directory is ok
      local parsers_path = "~/.local/share/nvim"
      vim.opt.runtimepath:append(parsers_path)

      require("nvim-treesitter.configs").setup({
        parser_install_dir = parsers_path,
        highlight = {
          enable = true,
          use_languagetree = true,
        },
        indent = { enable = true },
        rainbow = {
          enable = true,
          extended_mode = true,
          max_file_lines = nil,
        },
      })


      -- prompt for download of new language
      local ask_install = {}
      function _G.ensure_treesitter_language_installed()
        local parsers = require "nvim-treesitter.parsers"
        local lang = parsers.get_buf_lang()
        if parsers.get_parser_configs()[lang] and not parsers.has_parser(lang) and ask_install[lang] ~= false then
          vim.schedule_wrap(function()
            vim.ui.select({ "yes", "no" }, { prompt = "Install tree-sitter parsers for " .. lang .. "?" }, function(item)
              if item == "yes" then
                vim.cmd("TSInstall " .. lang)
              elseif item == "no" then
                ask_install[lang] = false
              end
            end)
          end)()
        end
      end

      vim.cmd [[autocmd FileType * :lua ensure_treesitter_language_installed()]]
    end,
  },
  {
    "nvim-treesitter/nvim-treesitter-context",
    config = function()
      require("treesitter-context").setup({
        enable = true,
        mode = "cursor",
        zindex = 20,
        trim_sope = "outer",
      })
    end,
  },

  {
    "windwp/nvim-ts-autotag",
    ft = {
      "html",
      "css",
      "scss",
      "javascript",
      "javascriptreact",
      "typescript",
      "typescriptreact",
      "svelte",
      "vue",
      "astro",
    },
    config = function()
      -- require("nvim-ts-autotag").setup()
    end,
  },
}
