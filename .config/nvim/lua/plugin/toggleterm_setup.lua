-- ==================================================================================
--                                  Toggleterm
-- ==================================================================================
-- URL         : https://github.com/akinsho/toggleterm.nvim

-- VARIABLE --
local ok, toggleterm = pcall(require, "toggleterm")
local ok_m, mapx = pcall(require, "mapx")

if not ok or not ok_m then
    do
        return
    end
end

toggleterm.setup({
  direction = 'float',
  open_mapping = [[<c-\>]],
})
