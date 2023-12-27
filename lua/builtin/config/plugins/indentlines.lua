local icons = require "builtin.ui.icons"

local hooks = require "ibl.hooks"


require("ibl").setup {
  indent = {
    char = icons.ui.LineMiddle,
  }
}
hooks.register(hooks.type.SCOPE_HIGHLIGHT, hooks.builtin.scope_highlight_from_extmark)
