local component = {
	"lsp_progress",
	-- colors = {
	--   percentage = colors.cyan,
	--   title = colors.cyan,
	--   message = colors.cyan,
	--   spinner = colors.cyan,
	--   lsp_client_name = colors.magenta,
	--   use = true,
	-- },
	separators = {
		component = " ",
		progress = " | ",
		message = { pre = "(", post = ")" },
		percentage = { pre = "", post = "%% " },
		title = { pre = "", post = ": " },
		lsp_client_name = { pre = "[", post = "]" },
		spinner = { pre = "", post = "" },
	},
	-- never show status for this list of servers;
	-- can be useful if your LSP server does not emit
	-- status messages
	hide = { "null-ls" },
	-- by default this is false. If set to true will
	-- only show the status of LSP servers attached
	-- to the currently active buffer
	only_show_attached = true,
	display_components = { "lsp_client_name", "spinner", { "title", "percentage", "message" } },
	timer = {
		progress_enddelay = 500,
		spinner = 1000,
		lsp_client_name_enddelay = 1000,
		attached_delay = 3000,
	},
	spinner_symbols = { "🌑 ", "🌒 ", "🌓 ", "🌔 ", "🌕 ", "🌖 ", "🌗 ", "🌘 " },
	message = { initializing = "Initializing…", commenced = "In Progress", completed = "Completed" },
	max_message_length = 30,
}

return {
  component = component
}
