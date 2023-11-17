local wk = require("which-key")

wk.setup {
}


local explorer = {"<cmd>NvimTreeOpen<cr>", "Explorer" }

local find = {
  f = { "<cmd>Telescope find_files<cr>" , "Files"},
  g = { "<cmd>Telescope live_grep<cr>", "Live Grep"} ,
  b = { "<cmd>Telescope buffers<cr>", "Buffer" },
  h = { "<cmd>Telescope help_tags<cr>", "Help Tags" },
}


---------------------------------------------------
------------------ REGISTER -----------------------
---------------------------------------------------

wk.register({
  e = explorer,
  f = { find , "Find"} ,
}, 
{ prefix = "<leader>" })
