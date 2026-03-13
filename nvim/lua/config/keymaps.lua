vim.keymap.set("n", "<leader><leader>", ":Telescope find_files <CR>", { desc = "Find files", silent = true })
vim.keymap.set("n", "<leader>cs", ":Telescope colorscheme <CR>", { desc = "Colorschemes", silent = true })
vim.keymap.set("n", "<leader>bb", ":Telescope buffers <CR>", { desc = "List buffers", silent = true })

vim.keymap.set("n", "<leader>pv", ":Explore <CR>", { desc = "File explorer", silent = true })

vim.keymap.set("n", "<leader>lg", ":LazyGit <CR>", { desc = "LazyGit", silent = true })

vim.keymap.set("n", "<C-/>", ":ToggleTerm direction=float<CR>")
vim.keymap.set("t", "<C-/>", "<cmd>ToggleTerm direction=float<CR>")
