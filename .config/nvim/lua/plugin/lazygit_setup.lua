-- ==================================================================================
--                                    Lazygit
-- ==================================================================================
-- URL         : https://github.com/kdheepak/lazygit.nvim

-- VARIABLE --
local ok, lazygit = pcall(require, "lazygit")
local ok_m, mapx = pcall(require, "mapx")

if not ok or not ok_m then
    do
        return
    end
end

--Setup mapping to call :LazyGit
mapx.nnoremap("<leader>gg", "<cmd>:LazyGit<CR>", { noremap = true, silent = true })
