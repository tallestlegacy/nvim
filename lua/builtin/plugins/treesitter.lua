require("nvim-treesitter").setup {
  build = ":TSUpdate"
}

require("nvim-treesitter.install").compilers = { "clang", "gcc" }

local parsers_path = "~/.local/share/nvim"
vim.opt.runtimepath:append(parsers_path)

require("nvim-treesitter.configs").setup {
  parser_install_dir = parsers_path,
  ensure_installed = { "lua" },

  highlight = {
    enable = true,
    use_languagetree = true,
  },

  indent = { enable = true },
}
