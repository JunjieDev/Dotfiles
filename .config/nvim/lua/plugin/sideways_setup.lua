-- ==================================================================================
--                                 Sideways
-- ==================================================================================
-- URL         : https://github.com/AndrewRadev/sideways.vim

-- VARIABLE --
local ok, sideways = pcall(require, "sideways")
local ok_m, mapx = pcall(require, "mapx")

if not ok or not ok_m then
    do
        return
    end
end

local keymap=vim.keymap
keymap.set("n", "[a","<cmd>SidewayLeft<cr>")
keymap.set("n", "]a","<cmd>SidewayRight<cr>")
keymap.set("n", "ga","<cmd>SidewaysJumpRight<cr>")
