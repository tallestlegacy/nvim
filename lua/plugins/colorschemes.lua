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


  "LunarVim/darkplus.nvim",

  {
    "tallestlegacy/darcula.nvim",
    -- dir = "~/Projects/foss/darcula.nvim",
  },

  {
    "rebelot/kanagawa.nvim",
    config = function()
      require("kanagawa").setup({
        transparent = true,
      })
    end
  }
}
