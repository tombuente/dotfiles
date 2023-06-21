vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set("n", "<leader>df", vim.diagnostic.open_float)

vim.keymap.set("n", "<leader>lr", vim.lsp.buf.rename)
