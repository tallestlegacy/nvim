vim.o.background = "dark" -- or "light" for light mode

vim.cmd.colorscheme "onedark"

require("catppuccin").setup({
  flavour = "mocha",
})


require('onedark').setup {
  style = 'darker'
}
require('onedark').load()

require("barbecue").setup()
