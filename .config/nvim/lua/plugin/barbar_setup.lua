-- ==================================================================================
--                                      Barbar
-- ==================================================================================
-- URL         : https://github.com/romgrk/barbar.nvim

-- VARIABLE --
local ok, barbar = pcall(require, "barbar")
local opts = { noremap = true, silent = true }
local ok_m, mapx = pcall(require, "mapx")

if not ok or not ok_m then
    do
        return
    end
end

vim.g.barbar_auto_setup = false
barbar.setup({
    -- Enable/disable animations
    animation = true,

    -- Enable/disable auto-hiding the tab bar when there is a single buffer
    auto_hide = false,

    -- Enable/disable current/total tabpages indicator (top right corner)
    tabpages = true,

    -- Enables/disable clickable tabs
    --  - left-click: go to buffer
    --  - middle-click: delete buffer
    clickable = true,

    -- Excludes buffers from the tabline
    exclude_ft = {'javascript'},
    exclude_name = {'package.json'},

    -- A buffer to this direction will be focused (if it exists) when closing the current buffer.
    -- Valid options are 'left' (the default), 'previous', and 'right'
    focus_on_close = 'left',

    -- Hide inactive buffers and file extensions. Other options are `alternate`, `current`, and `visible`.
    hide = {extensions = true, inactive = true},

    -- Disable highlighting alternate buffers
    highlight_alternate = false,

    -- Disable highlighting file icons in inactive buffers
    highlight_inactive_file_icons = false,

    -- Enable highlighting visible buffers
    highlight_visible = true,

    icons = {
    -- Configure the base icons on the bufferline.
    -- Valid options to display the buffer index and -number are `true`, 'superscript' and 'subscript'
    buffer_index = false,
    buffer_number = false,
    button = '',
    -- Enables / disables diagnostic symbols
    diagnostics = {
      [vim.diagnostic.severity.ERROR] = {enabled = true, icon = 'ﬀ'},
      [vim.diagnostic.severity.WARN] = {enabled = false},
      [vim.diagnostic.severity.INFO] = {enabled = false},
      [vim.diagnostic.severity.HINT] = {enabled = true},
    },
    gitsigns = {
      added = {enabled = true, icon = '+'},
      changed = {enabled = true, icon = '~'},
      deleted = {enabled = true, icon = '-'},
    },
    filetype = {
      -- Sets the icon's highlight group.
      -- If false, will use nvim-web-devicons colors
      custom_colors = false,

      -- Requires `nvim-web-devicons` if `true`
      enabled = true,
    },
    separator = {left = '▎', right = ''},

    -- Configure the icons on the bufferline when modified or pinned.
    -- Supports all the base icon options.
    modified = {button = '●'},
    pinned = {button = '', filename = true},

    -- Use a preconfigured buffer appearance— can be 'default', 'powerline', or 'slanted'
    preset = 'default',

    -- Configure the icons on the bufferline based on the visibility of a buffer.
    -- Supports all the base icon options, plus `modified` and `pinned`.
    alternate = {filetype = {enabled = false}},
    current = {buffer_index = true},
    inactive = {button = '×'},
    visible = {modified = {buffer_number = false}},
    },

    -- If true, new buffers will be inserted at the start/end of the list.
    -- Default is to insert after current buffer.
    insert_at_end = false,
    insert_at_start = false,

    -- Sets the maximum padding width with which to surround each tab
    maximum_padding = 1,

    -- Sets the minimum padding width with which to surround each tab
    minimum_padding = 1,

    -- Sets the maximum buffer name length.
    maximum_length = 30,

    -- Sets the minimum buffer name length.
    minimum_length = 0,

    -- If set, the letters for each buffer in buffer-pick mode will be
    -- assigned based on their name. Otherwise or in case all letters are
    -- already assigned, the behavior is to assign letters in order of
    -- usability (see order below)
    semantic_letters = true,

    -- Set the filetypes which barbar will offset itself for
    sidebar_filetypes = {
    -- Use the default values: {event = 'BufWinLeave', text = nil}
    NvimTree = true,
    -- Or, specify the text used for the offset:
    undotree = {text = 'undotree'},
    -- Or, specify the event which the sidebar executes when leaving:
    ['neo-tree'] = {event = 'BufWipeout'},
    -- Or, specify both
    Outline = {event = 'BufWinLeave', text = 'symbols-outline'},
    },

    -- New buffer letters are assigned in this order. This order is
    -- optimal for the qwerty keyboard layout but might need adjustment
    -- for other layouts.
    letters = 'asdfjkl;ghnmxcvbziowerutyqpASDFJKLGHNMXCVBZIOWERUTYQP',

    -- Sets the name of unnamed buffers. By default format is "[Buffer X]"
    -- where X is the buffer number. But only a static string is accepted here.
    no_name_title = nil,
})

-- MAPPING --
-- Move to previous/next
mapx.nnoremap("<A-,>", "<Cmd>BufferPrevious<CR>", opts)
mapx.nnoremap("<A-.>", "<Cmd>BufferNext<CR>", opts)
-- Re-order to previous/next
mapx.nnoremap("<A-<>", "<Cmd>BufferMovePrevious<CR>", opts)
mapx.nnoremap("<A->>", "<Cmd>BufferMoveNext<CR>", opts)
-- Goto buffer in position...
mapx.nnoremap("<A-1>", "<Cmd>BufferGoto 1<CR>", opts)
mapx.nnoremap("<A-2>", "<Cmd>BufferGoto 2<CR>", opts)
mapx.nnoremap("<A-3>", "<Cmd>BufferGoto 3<CR>", opts)
mapx.nnoremap("<A-4>", "<Cmd>BufferGoto 4<CR>", opts)
mapx.nnoremap("<A-5>", "<Cmd>BufferGoto 5<CR>", opts)
mapx.nnoremap("<A-6>", "<Cmd>BufferGoto 6<CR>", opts)
mapx.nnoremap("<A-7>", "<Cmd>BufferGoto 7<CR>", opts)
mapx.nnoremap("<A-8>", "<Cmd>BufferGoto 8<CR>", opts)
mapx.nnoremap("<A-9>", "<Cmd>BufferGoto 9<CR>", opts)
mapx.nnoremap("<A-0>", "<Cmd>BufferLast<CR>", opts)
-- Pin/unpin buffer
mapx.nnoremap("<A-p>", "<Cmd>BufferPin<CR>", opts)
-- Close buffer
mapx.nnoremap("<A-c>", "<Cmd>BufferClose<CR>", opts)
-- Wipeout buffer
--                 :BufferWipeout
-- Close commands
--                 :BufferCloseAllButCurrent
--                 :BufferCloseAllButPinned
--                 :BufferCloseAllButCurrentOrPinned
--                 :BufferCloseBuffersLeft
--                 :BufferCloseBuffersRight
-- Magic buffer-picking mode
mapx.nnoremap("<C-p>", "<Cmd>BufferPick<CR>", opts)
-- Sort automatically by...
mapx.nnoremap("<Space>bb", "<Cmd>BufferOrderByBufferNumber<CR>", opts)
mapx.nnoremap("<Space>bd", "<Cmd>BufferOrderByDirectory<CR>", opts)
mapx.nnoremap("<Space>bl", "<Cmd>BufferOrderByLanguage<CR>", opts)
mapx.nnoremap("<Space>bw", "<Cmd>BufferOrderByWindowNumber<CR>", opts)

-- Other:
-- :BarbarEnable - enables barbar (enabled by default)
-- :BarbarDisable - very bad command, should never be used
