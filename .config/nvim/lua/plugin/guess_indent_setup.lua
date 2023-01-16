-- ==================================================================================
--                                      Guess-indent
-- ==================================================================================
-- URL         : https://github.com/NMAC427/guess-indent.nvim

local ok, guessIndent = pcall(require, "guess-indent")
if not ok then
    do
        return
    end
end

guessIndent.setup({
    auto_cmd = true,  -- Set to false to disable automatic execution
    filetype_exclude = {  -- A list of filetypes for which the auto command gets disabled
        "netrw",
        "tutor",
    },
    buftype_exclude = {  -- A list of buffer types for which the auto command gets disabled
        "help",
        "nofile",
        "terminal",
        "prompt",
    },
})
