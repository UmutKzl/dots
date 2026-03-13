vim.keymap.set("n", "<leader><leader>", ":Telescope find_files <CR>", { desc = "Find files", silent = true })
vim.keymap.set("n", "<leader>cs", ":Telescope colorscheme <CR>", { desc = "Colorschemes", silent = true })
vim.keymap.set("n", "<leader>bb", ":Telescope buffers <CR>", { desc = "List buffers", silent = true })
vim.keymap.set("n", "<leader>of", ":Telescope oldfiles <CR>", { desc = "Recent files", silent = true })

vim.keymap.set("n", "<leader>pv", ":Explore <CR>", { desc = "File explorer", silent = true })

vim.keymap.set("n", "<leader>lg", ":LazyGit <CR>", { desc = "LazyGit", silent = true })

vim.keymap.set("n", "<leader>ld", vim.diagnostic.open_float, { desc = "LSP Diagnostic" })
vim.keymap.set("n", "K", vim.lsp.buf.hover, { desc = "LSP Hover" })
vim.keymap.set("n", "<leader>la", vim.lsp.buf.code_action, { desc = "LSP Code Action" })

vim.keymap.set("n", "<C-/>", ":ToggleTerm direction=float<CR>")
vim.keymap.set("t", "<C-/>", "<cmd>ToggleTerm direction=float<CR>")
