return {
	{
		--"ellisonleao/gruvbox.nvim",
		"EdenEast/nightfox.nvim",
		priority = 1000,
		config = function()
			--vim.cmd([[colorscheme gruvbox]])
			vim.cmd([[colorscheme nightfox]])
		end,
		opts = {},
	},
}
