local wk = require("which-key")

wk.setup {
}


local explorer = {
  "<cmd>NvimTreeToggle<cr>",
  "Explorer",
}


---------------------------------------------------
------------------ REGISTER -----------------------
---------------------------------------------------

wk.register({
  e = explorer,
}, 
{ prefix = "<leader>" })
