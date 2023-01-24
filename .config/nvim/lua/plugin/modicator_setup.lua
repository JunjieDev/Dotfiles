-- ==================================================================================
--                                      Modicator
-- ==================================================================================
-- URL         : https://github.com/mawkler/modicator.nvim

-- VARIABLE --
local ok, modicator = pcall(require, "modicator")

if not ok then
    do
        return
    end
end

-- NOTE: Modicator requires line_numbers and cursorline to be enabled
modicator.setup({
    show_warnings = true, -- Show warning if any required option is missing
    highlights = {
        modes = {
            ['i'] = modicator.get_highlight_fg('Question'),
            ['v'] = modicator.get_highlight_fg('Type'),
            ['V'] = modicator.get_highlight_fg('Type'),
            ['�'] = modicator.get_highlight_fg('Type'),
            ['s'] = modicator.get_highlight_fg('Keyword'),
            ['S'] = modicator.get_highlight_fg('Keyword'),
            ['R'] = modicator.get_highlight_fg('Title'),
            ['c'] = modicator.get_highlight_fg('Constant'),
        },
    },
})
