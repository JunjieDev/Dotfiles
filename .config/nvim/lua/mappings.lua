-- =================================================================================
--                                      Mappings 
-- ==================================================================================
--- VARIABLE ---
local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }
local ok_m, mapx = pcall(require, "mapx")

--- LEADER ---
vim.g.mapleader = " "

if ok_m then 
    --- Use ---
    -- -- Disable the row key
    mapx.nnoremap("<up>", "<nop>", "silent")
    mapx.nnoremap("<down>", "<nop>", "silent")
    mapx.nnoremap("<left>", "<nop>", "silent")
    mapx.nnoremap("<right>", "<nop>", "silent")

    -- -- Shorcut save file
    mapx.nnoremap("<leader>w", ":w<CR>", "silent")

    -- -- Exit insert mode
    mapx.inoremap("jj", "<Esc>", "silent")

    -- -- Center the cursor vertically when moving to the next word duding a search
    mapx.nnoremap("n", "nzz", "silent")
    mapx.nnoremap("N", "Nzz", "silent")

    -- -- You can split the window in Vim by typing :split or :vsplit
    -- -- Navigate the split view easier by pressing CTRL+j, CTRL+k, CTRL+h, CTRL+l
    mapx.nnoremap("<c-j>", "<c-w>j", "silent")
    mapx.nnoremap("<c-k>", "<c-w>k", "silent")
    mapx.nnoremap("<c-h>", "<c-w>h", "silent")
    mapx.nnoremap("<c-l>", "<c-w>l", "silent")

    -- -- Resize split windows using arrow keys by pressing:
    -- -- CTRL+UP, CTRL+DOWN, CTRL+LEFT or CTRL+RIGHT
    mapx.nnoremap("<c-up>", "<c-w>+", "silent")
    mapx.nnoremap("<c-down>", "<c-w>-", "silent")
    mapx.nnoremap("<c-left>", "<c-w>>", "silent")
    mapx.nnoremap("<c-right>", "<c-w><", "silent")

    -- -- Tab navigation
    -- -- Open a new file.
    mapx.nnoremap("<leader>tt", ":tabnew<CR>", "silent")
    -- -- To go to the next tab.
    mapx.nnoremap("<leader>tn", ":tabnext<CR>", "silent")
        --mapx.noremap("<S-L>", ":tabnext<CR>", "silent")
    -- -- To go to the preview tab.
    mapx.nnoremap("<leader>tp", ":tabprev<CR>", "silent")
        --mapx.noremap("<S-H>", ":tabprev<CR>", "silent")
    -- -- To close all other tab.
    mapx.nnoremap("<leader>to", ":tabo<CR>", "silent")

    -- -- Move the block indent LEFT.
    mapx.vnoremap(">", ">gv", "silent")
    -- -- Move the block indent RIGHT.
    mapx.vnoremap("<", "<gv", "silent")

    -- -- Press \\ to jump back to the last cursor position
    mapx.nnoremap("<leader>\\", "``", "silent")



    --- No Use ---
    -- -- window navigation
        --m.nnoremap("<F2>", "<C-w>w", "silent")
        --m.nnoremap("<C-=>", ":vertical resize +2<CR>", "silent")
        --m.nnoremap("<C-->", ":vertical resize -2<CR>", "silent")
        --m.nnoremap("<C-]>", ":resize +2<CR>", "silent")
        --m.nnoremap("<C-[>", ":resize -2<CR>", "silent")

    -- -- Turn off vim search highlighting
        --m.nnoremap("<c-n>", ":nohl", "silent")

    -- -- Delete one line or block
        --m.nnoremap("<leader>d", "dd", "silent")

    -- -- Press \p to print the current file to the default printer from a Linux operating system.
    -- -- View available printers:   lpstat -v
    -- -- Set default printer:       lpoptions -d <printer_name>
    -- -- <silent> means do not display output.
        --m.nnoremap("<leader>p", ":%w !lp<CR>", "silent")

    -- -- Press the space bar to type the : character in command mode.
        --m.nnoremap("<space>", ":", "silent")

    -- -- Pressing the letter o will open a new line below the current one.
    -- -- Exit insert mode after creating a new line above or below the current line.
        --m.nnoremap("o", "o<esc>", "silent")
        --m.nnoremap("O", "O<esc>", "silent")

    -- -- lazygit
        --m.nnoremap("<leader>gg", ":LazyGit<CR>", "silent")
end
