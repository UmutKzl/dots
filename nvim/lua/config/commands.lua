vim.api.nvim_create_user_command("MasonInstallHere", function()
	local ft = vim.bo.filetype

	local servers = {
		lua = "lua-language-server",
		python = "pyright",
		javascript = "typescript-language-server",
		typescript = "typescript-language-server",
		go = "gopls",
		rust = "rust-analyzer",
		c = "clangd",
		cpp = "clangd",
		html = "html-lsp",
		css = "css-lsp",
		json = "json-lsp",
		bash = "bash-language-server",
	}

	local server = servers[ft]

	if server then
		vim.cmd("MasonInstall " .. server)
	else
		print("There is no LSP for this file in this command. You should do it with MasonInstall manually.")
	end
end, {})
