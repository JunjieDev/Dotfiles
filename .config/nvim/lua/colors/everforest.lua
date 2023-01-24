-- URL : https://github.com/sainnhe/everforest

-- Import Packager --
-- use ({
--    "sainnhe/everforest",
--    config = require("colors/everforest"),
-- })

vim.g.everforest_dianostic_line_highlight = 1
vim.cmd('colorscheme everforest')

vim.fn.sign.define({
    {
        name= 'DiagnosticSignError',
        text= 'E',
        texthl = 'DiagnosticSignError',
        linehl = 'ErrorLine',
    },
    {
        name= 'DiagnosticSignWarn',
        text= 'W',
        texthl = 'DiagnosticSignWarn',
        linehl = 'WarningLine',
    },
    {
        name= 'DiagnosticSignInfo',
        text= 'I',
        texthl = 'DiagnosticSignInfo',
        linehl = 'InfoLine',
    },
    {
        name= 'DiagnosticSignError',
        text= 'H',
        texthl = 'DiagnosticSignError',
        linehl = 'HintLine',
    },
})
