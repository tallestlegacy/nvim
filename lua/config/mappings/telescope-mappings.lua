local wk = require("which-key")


local M = require("telescope.builtin")

wk.add {
  { "<leader>f",
    function() M.find_files({ no_ignore = true }) end,
    desc = "All Files",
  },
  { "<leader>fr",  M.resume,                    desc = "Resume search" },
  { "<leader>fn",  M.notify,                    desc = "Notifications" },
  { "<leader>ff",  M.find_files,                desc = "Find Files" },
  { "<leader>fw",  M.live_grep,                 desc = "Live Grep" },
  { "<leader>fz",  M.current_buffer_fuzzy_find, desc = "Current Buffer" },
  { "<leader>fb",  M.buffers,                   desc = "Buffer" },
  -- Other
  { "<leader>fs",  M.colorscheme,               desc = "Colorscheme" },
  { "<leader>fh",  M.help_tags,                 desc = "Help Tags" },
  { "<leader>fd",  M.diagnostics,               desc = "Diagnostics" },
  { "<leader>fc",  M.commands,                  desc = "Commands" },
  { "<leader>fm",  M.man_pages,                 desc = "Man Pages" },
  { "<leader>fk",  M.keymaps,                   desc = "Keymaps" },
  { "<leader>fe",  M.symbols,                   desc = "Emoji" },
  -- git stuff
  { "<leader>fgs", M.git_status,                desc = "Git Status" },
  { "<leader>fgb", M.git_branches,              desc = "Git Branches" },
  { "<leader>fgc", M.git_commits,               desc = "Git Commits" },
  { "<leader>fgC", M.git_bcommits,              desc = "Git File Commits" },
  { "<leader>fgf", M.git_files,                 desc = "Git Files" },
}
