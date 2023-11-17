local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)


-- Init Lazy
require("lazy").setup({
  {
    "folke/which-key.nvim",
    config = function()
      vim.o.timeout = true
      vim.o.timeoutlen = 300
    end,
  },

  -- File Tree
  {
    "nvim-tree/nvim-tree.lua",
    version = "*",
    lazy = false,
    dependencies = {
      "nvim-tree/nvim-web-devicons",
    },
  },

  -- TreeSitter
  { "nvim-treesitter/nvim-treesitter", build = ":TSUpdate" },

  -- Colorscheme
  { "ellisonleao/gruvbox.nvim",        priority = 1000 },

  -- Telescope
  {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.4',
    dependencies = {
      'nvim-lua/plenary.nvim',
      'nvim-telescope/telescope-fzf-native.nvim',
      build = "make",
    },
  },

  -- Mason
  "williamboman/mason.nvim",

  -- LSP
  "neovim/nvim-lspconfig",

  -- Completions
  'neovim/nvim-lspconfig',
  'williamboman/mason-lspconfig',
  'hrsh7th/cmp-nvim-lsp',
  'hrsh7th/cmp-buffer',
  'hrsh7th/cmp-path',
  'hrsh7th/cmp-cmdline',
  'hrsh7th/nvim-cmp',
  'L3MON4D3/LuaSnip',
  'saadparwaiz1/cmp_luasnip',
  'rafamadriz/friendly-snippets',

  -- AI Completions
  {
    "Exafunction/codeium.vim",
    event = "BufEnter",
  },

})


require "builtin.colorscheme"
require "builtin.plugins.mappings"
require "builtin.plugins.file-tree"
require "builtin.plugins.telescope"
require "builtin.plugins.treesitter"
require "builtin.plugins.cmp"
require "builtin.plugins.lsp"
