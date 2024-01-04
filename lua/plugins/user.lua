local status_ok, plugins = pcall(require, "tallestlegacy.my-plugins")
if not status_ok then
	print("Failed to load custom plugins")
	return {}
end

return plugins
