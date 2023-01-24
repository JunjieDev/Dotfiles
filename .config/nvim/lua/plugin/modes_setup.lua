-- ==================================================================================
--                                      Modes
-- ==================================================================================
-- URL         : https://github.com/mvllow/modes.nvim

-- VARIABLE --
local ok, modes = pcall(require, "modes")

if not ok then
    do
        return
    end
end

modes.setup({
    -- Set Colors
    colors = {
        copy = "#F1FA8C", --#f5c359
        delete = "#FF5555", --#c75c6a
        insert = "#50fa7b", --#78ccc5
        visual = "#FFB86C", --#9745be
    },

    -- Set opacity for cursorline and number background
    line_opacity = 0.15,

    -- Enable cursor highlights
    set_cursor = true,

    -- Enable cursorline initially, and disable cursorline for inactive windows
    -- or ignored filetypes
    set_cursorline = true,

    -- Enable line number highlights to match cursorline
    set_number = true,

    -- Disable modes highlights in specified filetypes
    -- Please PR commonly ignored filetypes
    ignore_filetypes = { 'NvimTree', 'TelescopePrompt' }
})
