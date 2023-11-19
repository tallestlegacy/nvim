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


-- default plugins
local default_plugins = {

  -- mappings
  {
    "folke/which-key.nvim",
    priority = 1000,
    config = function()
      vim.o.timeout = true
      vim.o.timeoutlen = 300
    end,
  },

  -- File Tree
  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
      "MunifTanjim/nui.nvim",
      -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
    }
  },
  -- Bufferline
  {
    "akinsho/bufferline.nvim",
    version = "v3.*",
    dependencies = "nvim-tree/nvim-web-devicons",
  },
  'arkav/lualine-lsp-progress',

  -- Winbar
  {
    "utilyre/barbecue.nvim",
    name = "barbecue",
    version = "*",
    dependencies = {
      "SmiteshP/nvim-navic",
      "nvim-tree/nvim-web-devicons", -- optional dependency
    },
  },

  -- Lualine
  'nvim-lualine/lualine.nvim',

  -- GitSigns
  'lewis6991/gitsigns.nvim',

  -- Other editor plugins
  { "lukas-reineke/indent-blankline.nvim", main = "ibl",       opts = {} },

  -- TreeSitter
  { "nvim-treesitter/nvim-treesitter",     build = ":TSUpdate" },

  -- Colorscheme
  { "ellisonleao/gruvbox.nvim",            priority = 1000 },
  -- Telescope
  {
    'nvim-telescope/telescope.nvim',
    dependencies = {
      'nvim-lua/plenary.nvim',
      'nvim-telescope/telescope-symbols.nvim',
      'nvim-telescope/telescope-fzf-native.nvim',
      build = "make",
    },
  },
  -- Mason
  "williamboman/mason.nvim",

  -- LSP
  "neovim/nvim-lspconfig",
  "folke/trouble.nvim",
  -- Completions
  'williamboman/mason-lspconfig',
  'hrsh7th/cmp-nvim-lsp',
  'hrsh7th/cmp-buffer',
  'hrsh7th/cmp-path',
  'hrsh7th/cmp-cmdline',
  'hrsh7th/nvim-cmp',
  'L3MON4D3/LuaSnip',
  'saadparwaiz1/cmp_luasnip',
  'rafamadriz/friendly-snippets',



  -- Dashboard
  {
    'goolord/alpha-nvim',
    event = 'VimEnter',
    dependencies = { { 'nvim-tree/nvim-web-devicons' } }
  },

  -- Comments
  'numToStr/Comment.nvim',
  'JoosepAlviste/nvim-ts-context-commentstring',

  -- Terminal
  'akinsho/toggleterm.nvim',
}


-- concatenate default plugins with extras
local status_ok, user = pcall(require, "user.init")
if not status_ok then
  print("Status is not ok")
elseif user.plugins then
  for _, v in pairs(user.plugins) do
    table.insert(default_plugins, v)
  end
end


-- init Lazy
require("lazy").setup(default_plugins)

require "builtin.colorscheme"
require "builtin.plugins.mappings"
require "builtin.plugins.file-tree"
require "builtin.plugins.bufferline"
require "builtin.plugins.telescope"
require "builtin.plugins.treesitter"
require "builtin.plugins.cmp"
require "builtin.plugins.lsp"
require "builtin.plugins.trouble"
require "builtin.plugins.lualine"
require "builtin.plugins.gitsigns"
require "builtin.plugins.comment"
require "builtin.plugins.dashboard"
require "builtin.plugins.terminal"
