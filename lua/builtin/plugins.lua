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

  -- mappings
  {
    "folke/which-key.nvim",
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
  { "ellisonleao/gruvbox.nvim" },
  { "navarasu/onedark.nvim",               priority = 1000 },     -- Ensure it loads first},
  { "catppuccin/nvim",                     name = "catppuccin" }, --  priority = 1000 },

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

  -- Dashboard
  {
    'goolord/alpha-nvim',
    event = 'VimEnter',
    dependencies = { { 'nvim-tree/nvim-web-devicons' } }
  },

  -- Comments
  'numToStr/Comment.nvim',
  'JoosepAlviste/nvim-ts-context-commentstring',

})


require "builtin.colorscheme"
require "builtin.plugins.mappings"
require "builtin.plugins.file-tree"
require "builtin.plugins.bufferline"
require "builtin.plugins.telescope"
require "builtin.plugins.treesitter"
require "builtin.plugins.cmp"
require "builtin.plugins.lsp"
require "builtin.plugins.lualine"
require "builtin.plugins.gitsigns"
require "builtin.plugins.comment"
require "builtin.plugins.dashboard"
