-- temporarily disabled
return {
  -- Completions
  "hrsh7th/nvim-cmp",
  dependencies = {
    'neovim/nvim-lspconfig', 'hrsh7th/cmp-nvim-lsp', 'hrsh7th/cmp-buffer',
    'hrsh7th/cmp-path', 'hrsh7th/nvim-cmp', -- luasnip dependencies
    'L3MON4D3/LuaSnip', 'saadparwaiz1/cmp_luasnip',
    "rafamadriz/friendly-snippets",
    "mlaursen/vim-react-snippets",
  },
  config = function()
    require("luasnip.loaders.from_vscode").lazy_load()
    require("vim-react-snippets").lazy_load()
    local cmp = require("cmp")

    cmp.setup({
      snippet = {
        expand = function(args)
          require("luasnip").lsp_expand(args.body)
        end
      },
      window = {
        -- completion = cmp.config.window.bordered(),
        -- documentation = cmp.config.window.bordered(),
      },
      mapping = cmp.mapping.preset.insert({
        ['<C-Space>'] = cmp.mapping.complete(),
        ['<C-e>'] = cmp.mapping.abort(),
        ['<CR>'] = cmp.mapping.confirm({ select = false })
      }),
      sources = cmp.config.sources({
        { name = "supermaven" },
        { name = "nvim_lsp" },
        { name = "luasnip" },
        { name = "friendly_snippets" },
        { name = "buffer" },
        { name = "path" },
      })
    })
  end
}
