-- ==================================================================================
--                                Bookmarks
-- ==================================================================================
-- URL         : https://github.com/MattesGroeger/vim-bookmarks

-- VARIABLE --
local ok, bookmarks = pcall(require, "bookmarks")
local ok_m, mapx = pcall(require, "mapx")
local vim = vim.g

if not ok or not ok_m then
    do
        return
    end
end

-- Sets bookmark icon for sign column
vim.bookmark_sign = '⚑'
-- Sets bookmark annotation icon for sign column
vim.bookmark_annotation_sign = '☰'
-- Save bookmarks per working dir, the folder you opened vim from
vim.bookmark_save_per_working_dir = 0
-- Enables/disables automatic saving for bookmarks
vim.bookmark_auto_save = 1
-- Save bookmarks when leaving a buffer, load when entering one
vim.bookmark_manage_per_buffer = 0
-- Automatically close bookmarks split when jumping to a bookmark
vim.bookmark_auto_close = 0
-- Enables/disables line highlighting
vim.bookmark_highlight_lines = 1
-- Enables/disables warning when clearing all bookmarks
vim.bookmark_show_warning = 1
-- Enables/disables warning when toggling to clear a bookmark with annotation
vim.bookmark_show_toggle_warning = 1
-- Enables/disables line centering when jumping to bookmark
vim.bookmark_center = 0
-- Prevent any default key mapping from being created
vim.bookmark_no_default_key_mappings = 0
-- Use the location list to show all bookmarks
vim.bookmark_location_list = 0
-- Disable ctrlp interface when show all bookmarks
vim.bookmark_disable_ctrlp = 0
-- Display annotation text on the status line
vim.bookmark_display_annotation = 0

-- Basic Shortcut
local opts = { noremap = true, silent = true }
-- Add/remove bookmark at current line
mapx.nnoremap("mm", ":BookmarkToggle", opts)
-- Add/edit/remove annotation at current line
mapx.nnoremap("mi", ":BookmarkAnnotate <TEXT>", opts)
-- Jump to next bookmark in buffer
mapx.nnoremap("mn", ":BookmarkNext", opts)
-- Jump to previous bookmark in buffer
mapx.nnoremap("mp", ":BookmarkPrev", opts)
-- Show all bookmarks (toggle)
mapx.nnoremap("ma", ":BookmarkShowAll", opts)
-- Clear bookmarks in current buffer only
mapx.nnoremap("mc", ":BookmarkClear", opts)
-- Clear bookmarks in all buffers
mapx.nnoremap("mx", ":BookmarkClearAll", opts)
-- Move up bookmark at current line
mapx.nnoremap("[count]mkk", ":BookmarkMoveUp [<COUNT>]", opts)
-- Move down bookmark at current line
mapx.nnoremap("[count]mjj", ":BookmarkMoveDown [<COUNT>]", opts)
-- Move bookmark at current line to another line
mapx.nnoremap("[count]mg", ":BookmarkMoveToLine <LINE>", opts)
