vim.pack.add({
	"https://github.com/nvim-lualine/lualine.nvim",
})

require("lualine").setup({
	sections = {
		lualine_a = { "mode" },
		lualine_b = { "branch", "diff", "diagnostics" },
		lualine_c = { "filename" },
		lualine_x = { "encoding", "filetype" },
		lualine_y = { "" },
		lualine_z = { "location" },
	},
})
