vim.pack.add({
	"https://github.com/saghen/blink.cmp",
	"https://github.com/rafamadriz/friendly-snippets",
})

require("blink.cmp").setup({
	keymap = { preset = "super-tab" },

	appearance = {
		nerd_font_variant = "mono", --mono or normal
	},

	completion = { documentation = { auto_show = false } },

	sources = {
		default = { "lsp", "path", "snippets", "buffer" },
	},

	fuzzy = { implementation = "lua" },
})
