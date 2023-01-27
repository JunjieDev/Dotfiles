-- ==================================================================================
--                                      Telescope
-- ==================================================================================
-- URL         : https://github.com/nvim-telescope/telescope.nvim

--- file-browser : https://github.com/nvim-telescope/telescope-file-browser.nvim
--- fzf          : https://github.com/junegunn/fzf.vim
--- project      : https://github.com/nvim-telescope/telescope-project.nvim
-- ==================================================================================
-- VARIABLE --
local ok, telescope = pcall(require, "telescope")
local ok_m, mapx = pcall(require, "mapx")

if not ok or not ok_m then
  do
    return
  end
end

require('nvim-web-devicons').setup({
  override = {},
  default = true,
})

local actions = require('telescope.actions')
local fb_actions = telescope.extensions.file_browser.actions
telescope.setup {
  defaults = {
    path_display = { 'smart' },
    mappings = {
      i = {
        ["<C-u>"] = actions.preview_scrolling_up,
        ["<C-d>"] = actions.preview_scrolling_down,
        ["<esc>"] = actions.close,
      }
    }
  },
  layout_config = {
    horizontal = {
      preview_cutoff = 100,
      preview_width = 0.6,
    }
  },
  pickers = {
    find_files = {
      find_command = {
        "fd", "--type", "f", "-H", "-E", "node_modules",
        "-E", ".git", "-E", ".env*", "-I"
      }
    }
  },
  extensions = {
    file_browser = {
      hidden = true,
      respect_gitignore = false,
      hijack_netrw = true,
      mappings = {
        ["i"] = {
          ["<A-t>"] = fb_actions.change_cwd,
          ["<C-t>"] = actions.select_tab,
        },
      },
    },
    fzf = {
      fuzzy = true,
      override_generic_sorter = true,
      override_file_sorter = true,
      case_mode = "ignore_case"
    },
    project = {
      hidden_files = true, -- default : false
      order_by = "asc",
      search_by = "title",
      sync_with_nvim_tree = true -- default : false
    },
  }
}

-- Telescope Extension
telescope.load_extension("file_browser")
telescope.load_extension("fzf")
telescope.load_extension("project")
telescope.load_extension("neoclip")
telescope.load_extension("vim_bookmarks")

-- Basic Shortcut
local opts = { noremap = true, silent = true }
mapx.nnoremap("<leader>ff", ":Telescope find_files<CR>", opts)
mapx.nnoremap("<leader>fg", ":Telescope live_grep<CR>", opts)
mapx.nnoremap("<leader>fb", ":Telescope file_browser path=%:p:h<CR>", opts)
mapx.nnoremap("<leader>fh", ":Telescope help_tags<CR>", opts)
-- File browser
mapx.nnoremap("<leader>fd", ":Telescope file_browser<CR>", opts)
-- Project
mapx.nnoremap("<leader>fp", ":Telescope project<CR>", opts)
-- Neoclip
mapx.nnoremap("<leader>nc", ":Telescope neoclip<CR>", opts)
-- Bookmarks
mapx.nnoremap("<leader>ma", ":Telescope vim_bookmarks all", opts)
mapx.nnoremap("<leader>mc", ":Telescope vim_bookmarks current_file", opts)
