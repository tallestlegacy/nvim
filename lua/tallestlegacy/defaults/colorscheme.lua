vim.o.background = "dark" -- or "light" for light mode

vim.g.gruvbox_material_background = "hard"
vim.g.gruvbox_material_foreground = "mix"
vim.g.gruvbox_material_better_performance = 1

local colorscheme = -- uncomment the theme you want
	-- "gruvqueen"
	-- "gruvbox"
	-- "gruvbox-material"
	-- "base16-gruvbox-dark-hard"
	-- "sonokai"
	-- "monokai-pro-machine"
	-- "catppuccin"
	"darcula-solid"

local ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
vim.o.background = "dark" -- or "light" for light mode
if not ok then
	vim.notify("colorscheme " .. colorscheme .. " not found!")
	return
end
