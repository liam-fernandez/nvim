vim.diagnostic.config(
    {
        float = {
            border = "rounded",
            source = "always",  -- optional: show the source of the diagnostic
            prefix = "● ",       -- optional: add a symbol before the message
        },
        virtual_text = {
            prefix = "■",          
            spacing = 2,
            severity = { min = vim.diagnostic.severity.HINT },
        },
        signs = true,             -- show icons in the gutter
        underline = true,
        update_in_insert = false, -- do not update while typing
        severity_sort = true,      -- sort by severity
    }
)

-- keymaps
vim.keymap.set('n', '<leader>od', vim.diagnostic.open_float, {})
