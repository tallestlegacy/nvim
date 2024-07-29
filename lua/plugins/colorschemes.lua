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

  -- for comparisons only
  { "santos-gabriel-dario/darcula-solid.nvim", dependencies = { "rktjmp/lush.nvim" } },

  {
    "tallestlegacy/darcula.nvim",
    -- dir = "~/Projects/foss/darcula.nvim",
  },
}
