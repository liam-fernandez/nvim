require('lualine').setup(
    {
        options = {
            theme = 'auto',
            section_separators = "",
            component_separators = "",
            globalstatus = false, -- one status bar to rule them all
        },
        sections = {
            lualine_a = {'mode'},
            lualine_b = {'branch', 'diff', 'diagnostics'},
            lualine_c = {'filename'},
            lualine_x = {'filetype', 'encoding'},
            lualine_y = {},
            lualine_z = {'%{"Ln ".line(".")."/".line("$")." Col ".col(".")."/".(col("$")-1)}'},
        },
    }
)
