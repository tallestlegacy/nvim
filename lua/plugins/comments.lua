-- local status_ok, comment = pcall(require, "Comment")
-- if not status_ok then
-- 	return
-- end
--
-- comment.setup({
-- 	pre_hook = function(ctx)
-- 		local U = require("Comment.utils")
--
-- 		local status_utils_ok, utils = pcall(require, "ts_context_commentstring.utils")
-- 		if not status_utils_ok then
-- 			return
-- 		end
--
-- 		local location = nil
-- 		if ctx.ctype == U.ctype.block then
-- 			location = utils.get_cursor_location()
-- 		elseif ctx.cmotion == U.cmotion.v or ctx.cmotion == U.cmotion.V then
-- 			location = utils.get_visual_start_location()
-- 		end
--
-- 		local status_internals_ok, internals = pcall(require, "ts_context_commentstring.internals")
-- 		if not status_internals_ok then
-- 			return
-- 		end
--
-- 		return internals.calculate_commentstring({
-- 			key = ctx.ctype == U.ctype.line and "__default" or "__multiline",
-- 			location = location,
-- 		})
-- 	end,
-- })

local icons = require("builtin.ui.icons")

return {
  -- TODO this is a todo
  {
    "folke/todo-comments.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    event = "BufEnter",
    opts = {
        signs = true,
        keywords = {
          FIX = {
            icon = icons.ui.Bug,                        -- icon used for the sign, and in search results
            color = "error",                            -- can be a hex color, or a named color (see below)
            alt = { "FIXME", "BUG", "FIXIT", "ISSUE" }, -- a set of other keywords that all map to this FIX keywords
            -- signs = false, -- configure signs for some keywords individually
          },
          TODO = { icon = icons.ui.Check, color = "info" },
          HACK = { icon = icons.ui.Fire, color = "warning" },
          WARN = { icon = icons.diagnostics.BoldWarning, color = "warning", alt = { "WARNING", "XXX" } },
          PERF = { icon = " ", alt = { "OPTIM", "PERFORMANCE", "OPTIMIZE" } },
          NOTE = { icon = " ", color = "hint", alt = { "INFO" } },
          TEST = { icon = "⏲ ", color = "test", alt = { "TESTING", "PASSED", "FAILED" } },
        },
      }
  },

  { "JosefLitos/colorizer.nvim", config = true },
}
