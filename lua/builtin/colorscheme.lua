vim.o.background = "dark" -- or "light" for light mode

local colorscheme = "gruvbox"

local status_ok, user = pcall(require, "user.init")
if status_ok and user.colorscheme ~= nil then
  colorscheme = user.colorscheme
else
  print("Failed to init user")
end

local ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
vim.o.background = "dark"   -- or "light" for light mode
if not ok then
  vim.notify("colorscheme " .. colorscheme .. " not found!")
  return
end
