local status_ok, wk = pcall(require, "which-key")
if not status_ok then
  return
end

local format = function()
  pcall(require("conform").format({ async = true, lsp_fallback = true }))
end

wk.register({
  ["<leader>"] = {
    ["l"] = {
      ["f"] = { format, "Format (conform)" },
    },
  },
  mode = { "n", "v" },
})
