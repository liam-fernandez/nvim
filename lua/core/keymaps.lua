-- keymaps.lua

-- ============================================================================
-- Copy and Paste
-- ============================================================================
vim.keymap.set("v", "<leader>y", '"+y', { desc = "[y]ank into system clipboard" })
vim.keymap.set({ "v", "n" }, "<leader>p", '"+p', { desc = "[p]aste from system clipboard" })
