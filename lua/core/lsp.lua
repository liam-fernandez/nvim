-- lsp.lua

vim.lsp.enable({
	"clangd",
	"pyright",
})

vim.keymap.set("n", "<leader>cd", vim.diagnostic.open_float, { desc = "[d]iagnostic" })
vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, { desc = "LSP Code Action" })
vim.keymap.set("n", "<leader>cr", vim.lsp.buf.rename, { desc = "[r]ename symbol" })
vim.keymap.set("n", "<leader>lr", vim.lsp.buf.references, { desc = "[r]eferences" })
vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, { desc = "[g]o to [d]efinition" })
