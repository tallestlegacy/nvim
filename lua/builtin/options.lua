local options = {
	-- numberline
	number = true,
  numberwidth = 4,
  relativenumber = false,

	-- editor
	shiftwidth = 2,
  tabstop = 2,
	expandtab = true,
	smartcase = true,
	smartindent = true,
	cursorline = true,
  clipboard = "unnamedplus",

	-- statusline
	showmode = true,
	showtabline = 2,

	-- window
	splitbelow = true,
	splitright = true,

	-- other
	timeoutlen = 1000,
	undofile = true,
	updatetime = 300,
	writebackup = false,

}



-- update options
for k, v in pairs(options) do
	vim.opt[k] = v
end
