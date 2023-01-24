-- ==================================================================================
--                                      Mappings
-- ==================================================================================
-- URL         : https://github.com/b0o/mapx.nvim

--- VARIABLE ---
local opts = { noremap = true, silent = true }
local map = vim.api.nvim_set_keymap
-- exempl : map('n', '<up>', '<nop>', opts)
local ok_m, mapx = pcall(require, "mapx")

--- LEADER ---
vim.g.mapleader = " "

if ok_m then
    --- Use ---
    -- -- Disable the row key
    mapx.nnoremap("<up>", "<nop>", opts)
    mapx.nnoremap("<down>", "<nop>", opts)
    mapx.nnoremap("<left>", "<nop>", opts)
    mapx.nnoremap("<right>", "<nop>", opts)

    -- -- Shorcut save file
    mapx.nnoremap("<leader>w", ":w<CR>", opts)

    -- -- Exit insert mode
    mapx.inoremap("jj", "<Esc>", opts)

    -- -- Center the cursor vertically when moving to the next word duding a search
    mapx.nnoremap("n", "nzz", opts)
    mapx.nnoremap("N", "Nzz", opts)

    -- -- You can split the window in Vim by typing :split or :vsplit
    -- -- Navigate the split view easier by pressing CTRL+j, CTRL+k, CTRL+h, CTRL+l
    mapx.nnoremap("<c-j>", "<c-w>j", opts)
    mapx.nnoremap("<c-k>", "<c-w>k", opts)
    mapx.nnoremap("<c-h>", "<c-w>h", opts)
    mapx.nnoremap("<c-l>", "<c-w>l", opts)

    -- -- Resize split windows using arrow keys by pressing:
    -- -- CTRL+UP, CTRL+DOWN, CTRL+LEFT or CTRL+RIGHT
    mapx.nnoremap("<c-up>", "<c-w>+", opts)
    mapx.nnoremap("<c-down>", "<c-w>-", opts)
    mapx.nnoremap("<c-left>", "<c-w>>", opts)
    mapx.nnoremap("<c-right>", "<c-w><", opts)

    -- -- Tab navigation
    -- -- Open a new file.
    mapx.nnoremap("<leader>tt", ":tabnew<CR>", opts)
    -- -- To go to the next tab.
    mapx.nnoremap("<leader>tn", ":tabnext<CR>", opts)
    --mapx.noremap("<S-L>", ":tabnext<CR>", opts)
    -- -- To go to the preview tab.
    mapx.nnoremap("<leader>tp", ":tabprev<CR>", opts)
    --mapx.noremap("<S-H>", ":tabprev<CR>", opts)
    -- -- To close all other tab.
    mapx.nnoremap("<leader>to", ":tabo<CR>", opts)

    -- -- Move the block indent LEFT.
    mapx.vnoremap(">", ">gv", opts)
    -- -- Move the block indent RIGHT.
    mapx.vnoremap("<", "<gv", opts)

    -- -- Press \\ to jump back to the last cursor position
    mapx.nnoremap("<leader>\\", "``", opts)



    --- No Use ---
    -- -- window navigation
    --m.nnoremap("<F2>", "<C-w>w", opts)
    --m.nnoremap("<C-=>", ":vertical resize +2<CR>", opts)
    --m.nnoremap("<C-->", ":vertical resize -2<CR>", opts)
    --m.nnoremap("<C-]>", ":resize +2<CR>", opts)
    --m.nnoremap("<C-[>", ":resize -2<CR>", opts)

    -- -- Turn off vim search highlighting
    --m.nnoremap("<c-n>", ":nohl", opts)

    -- -- Delete one line or block
    --m.nnoremap("<leader>d", "dd", opts)

    -- -- Press \p to print the current file to the default printer from a Linux operating system.
    -- -- View available printers:   lpstat -v
    -- -- Set default printer:       lpoptions -d <printer_name>
    -- -- <silent> means do not display output.
    --m.nnoremap("<leader>p", ":%w !lp<CR>", opts)

    -- -- Press the space bar to type the : character in command mode.
    --m.nnoremap("<space>", ":", opts)

    -- -- Pressing the letter o will open a new line below the current one.
    -- -- Exit insert mode after creating a new line above or below the current line.
    --m.nnoremap("o", "o<esc>", opts)
    --m.nnoremap("O", "O<esc>", opts)

    -- -- lazygit
    --m.nnoremap("<leader>gg", ":LazyGit<CR>", opts)
end
