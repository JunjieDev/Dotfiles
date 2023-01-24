-- ==================================================================================
--                                      Tree
-- ==================================================================================
-- URL         : https://github.com/nvim-tree/nvim-tree.lua

-- VARIABLE --
local set = vim.g
local opts = { noremap = true, silent = true }
local ok_m, mapx = pcall(require, "mapx")

-- disable netrw at the very start of your init.lua (strongly advised)
set.loaded_netrw = 1
set.loaded_netrwPlugin = 1
local ok, tree = pcall(require, "nvim-tree")

if not ok or not ok_m then
    do
        return
    end
end

tree.setup({
    auto_close = true,
    view = {
        adaptive_size = true,
    },
    renderer = {
        group_empty = true,
    },
    sort_by = "case_sensitive",
    actions = {
        open_file = {
            quit_on_open = true
        }
    },
    update_focused_file = {
        enable = true,
        update_cwd = true,
    },
    filters = {
        dotfiles = true,
        custom = { '^.git$', '^node_modules$' }
    },
    git = {
        enable = false,
    },
    log = {
        enable = true,
        types = {
            diagnostics = true
        }
    },
    diagnostics = {
        enable = true,
        show_on_dirs = false,
        debounce_delay = 50,
        icons = {
            hint = ' ',
            info = ' ',
            warning = ' ',
            error = ' ',
        },
    },
})


mapx.nnoremap("<leader>e", ":NvimTreeToggle<CR>", opts)
