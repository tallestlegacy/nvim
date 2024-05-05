return {

  {
    "ellisonleao/gruvbox.nvim",
    priority = 1000,
    config = function()
      require("gruvbox").setup({
        contrast = "hard",
      })
    end,
  },

  -- TESTING
  { "santos-gabriel-dario/darcula-solid.nvim", dependencies = "rktjmp/lush.nvim" },
  {
    dir = "~/Projects/foss/darcula.nvim",
    dependencies = "rktjmp/lush.nvim",
    lazy = false,
  },
}
