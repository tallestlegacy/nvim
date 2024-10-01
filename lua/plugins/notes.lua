return {
  {
    "epwalsh/obsidian.nvim",
    version = "*",
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
    event = "VeryLazy",
    ft = "markdown",
    opts = {
      workspaces = {
        {
          name = "Modus Operandi",
          path = "/perm/Obsidian/Modus Operandi",
        },
      },
    },
  },
}
