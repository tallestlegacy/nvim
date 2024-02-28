vim.o.background = "dark" -- or "light" for light mode

local colorscheme =
	-- "gruvbox"
	-- "gruvbox-material"
	-- "base16-gruvbox-dark-hard"
	-- "darcula-solid"
	-- "sonokai"
	"monokai-pro-machine"

local ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
vim.o.background = "dark" -- or "light" for light mode
if not ok then
	vim.notify("colorscheme " .. colorscheme .. " not found!")
	return
end
