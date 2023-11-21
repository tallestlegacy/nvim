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
  -- Neovim ❤️  Lua
  { "folke/neodev.nvim" },

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

  -- TreeSitter
  { "nvim-treesitter/nvim-treesitter", build = ":TSUpdate" },

  -- Colorscheme
  { "ellisonleao/gruvbox.nvim",        priority = 1000 },

  -- Telescope
  {
    'nvim-telescope/telescope.nvim',
    dependencies = {
      'nvim-lua/plenary.nvim',
      'nvim-telescope/telescope-symbols.nvim',
      build = "make",
    },
  },
  { 'nvim-telescope/telescope-fzf-native.nvim', build = 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build' },

  -- Mason
  "williamboman/mason.nvim",
  {
    'williamboman/mason-lspconfig',
    lazy = true,
    event = "User FileOpened",
    dependencies = "mason.nvim",
  },

  -- LSP
  "neovim/nvim-lspconfig",
  "folke/trouble.nvim",
  -- Completions
  'hrsh7th/cmp-nvim-lsp',
  'hrsh7th/cmp-buffer',
  'hrsh7th/cmp-path',
  'hrsh7th/cmp-cmdline',
  'hrsh7th/nvim-cmp',
  'L3MON4D3/LuaSnip',
  'saadparwaiz1/cmp_luasnip',
  'rafamadriz/friendly-snippets',

  -- Autopairs
  'windwp/nvim-autopairs',

  -- Multiple cursors
  'mg979/vim-visual-multi',


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
  -- Scope highlighting
  { "lukas-reineke/indent-blankline.nvim",      main = "ibl" },

}


-- concatenate default plugins with extras
local status_ok, user = pcall(require, "user.init")
if not status_ok then
  print("Failed to load default plugins")
elseif user.plugins then
  for _, v in pairs(user.plugins) do
    table.insert(default_plugins, v)
  end
end


-- init Lazy
require("lazy").setup(default_plugins)
require "builtin.config.plugins"
