-- ==================================================================================
--                                    Packer-Config
-- ==================================================================================
-- URL           : https://github.com/wbthomason/packer.nvim
-- Reset package : rm -rf ~/.local/share/nvim;

-- Config --
local vim = vim
local execute = vim.api.nvim_command
local fn = vim.fn

-- Check packer installation
local install_path = fn.stdpath("data") .. "/site/pack/packer/opt/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
    execute("!git clone https://github.com/wbthomason/packer.nvim " .. install_path)
    execute("packadd packer.nvim")
end

vim.cmd("packadd packer.nvim")

local packer = require("packer")
local util = require("packer.util")

packer.init({
    package_root = util.join_paths(vim.fn.stdpath("data"), "site", "pack"),
})

-- Plugin Import --
packer.startup(function(use)
    -- Packer installer
    use({ "wbthomason/packer.nvim", opt = true, })

    -- Setting --
    -- Nvim-web-devicons
    use({ "kyazdani42/nvim-web-devicons", })

    -- Better mappings
    use({ "b0o/mapx.nvim", })

    -- Colors Scheme --
    -- Color Scheme
    use({
        "Mofiqul/dracula.nvim",
        as = "dracula",
        config = require("colors/dracula"),
    })

    -- Customization --
    -- Status bar
    use({
        "nvim-lualine/lualine.nvim",
        config = require("plugin/lualine_setup"),
    })

    -- Barbar
    use({
        "romgrk/barbar.nvim",
        config = require("plugin/barbar_setup")
    })

    -- Modes
    use({
        "mvllow/modes.nvim",
        tag = "v0.2.0",
        config = require("plugin/modes_setup"),
    })

    -- Modicator
    use({ "melkster/modicator.nvim",
        --after = "dracula.nvim", -- Add your colorscheme plugin here
        setup = function()
            -- These are required for Modicator to work
            vim.o.cursorline = true
            vim.o.number = true
            vim.o.termguicolors = true
        end,
        config = require("plugin/modicator_setup"),
    })

    -- Markdown-preview
    use({
        "iamcco/markdown-preview.nvim",
        run = function() vim.fn["mkdp#util#install"]() end,
        config = require("plugin/markdown_preview_setup"),
    })

    -- Indent-blankline
    use({
        "lukas-reineke/indent-blankline.nvim",
        config = require("plugin/indent_blankline_setup"),
    })

    -- Guess-indent
    use({
        "nmac427/guess-indent.nvim",
        config = require("plugin/guess_indent_setup"),
    })

    -- File Exploration
    use({
        "nvim-tree/nvim-tree.lua",
        tag = "nightly", -- optional, updated every week. (see issue #1193)
        config = require("plugin/nvim_tree_setup"),
    })

    -- Telescope
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.1',
        requires = { "nvim-lua/plenary.nvim" },
        config = require("plugin/telescope_setup"),
    }
    -- Telescope-Extra-Module
    packer.use({ "nvim-telescope/telescope-file-browser.nvim" })
    packer.use({ "nvim-telescope/telescope-fzf-native.nvim", run = "make" })
    packer.use({ "nvim-telescope/telescope-project.nvim" })
    packer.use({ "AckslD/nvim-neoclip.lua" })
    packer.use({ "tom-anders/telescope-vim-bookmarks.nvim" })

    -- CMP
    use({
        "hrsh7th/nvim-cmp", -- Completion engine
        "hrsh7th/cmp-nvim-lsp", -- LSP completion
        "hrsh7th/cmp-buffer",
        "hrsh7th/cmp-path",
        "hrsh7th/cmp-cmdline",
        "saadparwaiz1/cmp_luasnip", -- Snippets cmp
    })

    -- Native LSP
    use({
        --"simrat39/rust-tools.nvim", -- Rust Custom LSP
        "L3MON4D3/LuaSnip", -- Snippets engine
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim",
        "neovim/nvim-lspconfig", --LSP config
        "jose-elias-alvarez/typescript.nvim",
        config = require("plugin/lsp_setup"),
    })
    use({
        "onsails/lspkind.nvim",
        config = require("plugin/lspkind_setup"),
    })

    -- Multi-Cursor
    use({ "mg979/vim-visual-multi", })

    -- Toggler : () - {} - [] - '' - ""
    use({
        "windwp/nvim-autopairs",
        config = require("plugin/nvim_autopairs_setup"),
    })
    use({
        "rmagatti/alternate-toggler",
        config = require("plugin/alternate_toggler_setup"),
    })
    use({ "gcmt/wildfire.vim", })

    -- Surround
    use({ "tpope/vim-surround", })
    --use({ "ur4ltz/surround", })
    --use({ "kylechui/nvim-surround", })

    -- Bookmarks
    use({
        "MattesGroeger/vim-bookmarks",
        config = require("plugin/bookmarks_setup"),
    })

    -- Null-ls
    --use({
    --    "jose-elias-alvarez/null-ls.nvim",
    --    config = require("plugin/null_ls_setup"),
    --})


    -- Treesitter
    use({
        "nvim-treesitter/nvim-treesitter",
        config = require("plugin/treesitter_setup"),
        -- Nvim-ts --
        --requires = {
        -- Autotag
        --    "windwp/nvim-ts-autotag",
        -- rainbow
        --    "p00f/nvim-ts-rainbow",
        --},
    })

    -- Template-string
    --use({
    --    "axelvc/template-string.nvim",
    --    config = require("plugin/template_string_setup"),
    --})

    -- Fidget
    --use({
    --    "j-hui/fidget.nvim",
    --    config = require("plugin/fidget_setup"),
    --})

    -- Todo-comments
    use({
        "folke/todo-comments.nvim",
        config = require("plugin/todo_comments_setup"),
    })

    -- Comment
    use({
        "terrortylor/nvim-comment",
        config = require("plugin/comment_setup"),
    })

    -- Noice
    use({
        "folke/noice.nvim",
        config = require("plugin/noice_setup"),
        requires = {
            -- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
            "MunifTanjim/nui.nvim",
            -- OPTIONAL:
            --   `nvim-notify` is only needed, if you want to use the notification view.
            --   If not available, we use `mini` as the fallback
            "rcarriga/nvim-notify",
        }
    })

    -- Sideways
    use({
        "AndrewRadev/sideways.vim",
        config = require("plugin/sideways_setup"),
    })

    -- ToggleTerm
    use({
        "akinsho/toggleterm.nvim",
        config = require("plugin/toggleterm_setup"),
    })

    -- Colorizer
    use({
        "norcalli/nvim-colorizer.lua",
        config = require("plugin/colorizer_setup"),
    })

    -- Flutter
    use {
        "akinsho/flutter-tools.nvim",
        requires = { "nvim-lua/plenary.nvim" },
        --config = function()
        --    require("config.flutter").setup()
        --end,
    }

    --  LazyGit
    use({
        "kdheepak/lazygit.nvim",
        config = require("plugin/lazygit_setup"),
    })


end)
