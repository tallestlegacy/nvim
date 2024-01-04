return {
  -- Terminal
  "akinsho/toggleterm.nvim",
  opts = {
    start_in_insert = true,
    insert_mappings = true,
    shading_factor = 2,
    hide_numbers = true,
    -- open_mapping = [[<c-\]],
    close_on_exit = true,

    float_opts = {
      border = "curved",
    },

    size = function(term)
      if term.direction == "horizontal" then
        return 15
      elseif term.direction == "vertical" then
        return vim.o.columns * 0.4
      end
    end,
  }
}
