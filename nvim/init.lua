local function require_all(folder)
	local path = vim.fn.stdpath("config") .. "/lua/" .. folder
	local handle = vim.uv.fs_scandir(path)
	if not handle then
		return
	end

	while true do
		local name, ftype = vim.uv.fs_scandir_next(handle)
		if not name then
			break
		end

		if ftype == "file" and name:sub(-4) == ".lua" then
			local modname = folder .. "." .. name:sub(1, -5)
			local ok, err = pcall(require, modname)
			if not ok then
				vim.notify("Error loading " .. modname .. ": " .. err, vim.log.levels.WARN)
			end
		end
	end
end

require_all("plugins")
require_all("config")
