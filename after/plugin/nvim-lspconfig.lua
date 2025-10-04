-- configure and enable lsps
local cmp_capabilities = require("cmp_nvim_lsp").default_capabilities()
vim.lsp.config("basedpyright", { capabilities = cmp_capabilities })
vim.lsp.enable('basedpyright')
vim.lsp.config("clangd", { capabilities = cmp_capabilities })
vim.lsp.enable('clangd')

-- keymaps
vim.keymap.set('n', '<leader>gr', vim.lsp.buf.references, { desc = 'LSP Go to References' })
vim.keymap.set('n', '<leader>gd', vim.lsp.buf.definition, { desc = 'LSP Go to Definition' })
vim.keymap.set('n', 'K', 
    function() 
        vim.lsp.buf.hover({
            border = "rounded",
        })
    end,
    { desc = 'LSP Hover' })
vim.keymap.set('n', '<leader>ga', vim.lsp.buf.code_action, { desc = 'LSP Code Action' })
