-- ==================================================================================
--                                      Lualine
-- ==================================================================================
-- URL         : https://github.com/nvim-lualine/lualine.nvim

local ok, lualine = pcall(require, "lualine")
if not ok then
    do
        return
    end
end

lualine.setup({
    options = {
        icons_enabled = true,
        -- https://github.com/nvim-lualine/lualine.nvim/blob/master/THEMES.md
        theme = 'OceanicNext',
        component_separators = { left = '', right = '' },
        section_separators = { left = '', right = '' },
        disabled_filetypes = {},
        always_divide_middle = true,
        globalstatus = false,
    },
    sections = {
        lualine_a = { 'mode' },
        lualine_b = { 'branch', 'diff', 'diagnostics' },
        -- all path : %F
        -- file recurrent : filename
        lualine_c = { '%F' },
        lualine_x = { 'encoding',
            {
                'fileformat',
                --  
                symbols = {
                    unix = '',
                    dos = '',
                    mac = '',
                }
            },
            'filetype'
        },
        lualine_y = { 'progress' },
        lualine_z = { 'location' },
    },
    inactive_sections = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = { 'filename' },
        lualine_x = { 'location' },
        lualine_y = {},
        lualine_z = {}
    },
    tabline = {},
    extensions = {}
})
