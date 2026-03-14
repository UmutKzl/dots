vim.g.mapleader = " "
vim.g.maplocalleader = ","

vim.keymap.set("n", "<leader>e", require("nvim-tree.api").tree.toggle, { desc = "NVIM-Tree" })
