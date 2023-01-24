# [Neovim](https://neovim.io) Configuration

Neovim is a text editor. It is directly inspired by Vim. I love the way of processes, handling of files and personal customization.

## Structures

|  Directory/File  |                         Description                          |
|------------------|--------------------------------------------------------------|
| `depth/`         | Folder That contains all the test config/plugin/example      |
| `doc/`           | Contains documentation and help files                        |
| `init.lua`       | Main file for the neovim configuration and the require file  |
| `lua`            | Folder container the setting/mapping and folder plugin config|
|  ⌙`plugin/`      | Contains all file configuration                              |

<details>
<summary> Directory/File example</summary>

|  Directory/File  |                         Description                          |
|------------------|--------------------------------------------------------------|
| `filetype.lua`   | Used to set a file's lua filetype                            |
| `autoload/`      | Scripts loaded dynamically using Vim's autoload feature      |
| `colors/`        | Vim colorscheme files conventionally go here                 |
| `compiler/`      | Contains files related to compilation and make functionality |
| `doc/`           | Contains documentation and help files                        |
| `ftplugin/`      | Filetype-specific configurations here                        |
| `ftdetect/`      | FileType-specific detection here                             |
| `indent/`        | Contains scripts related to indentation                      |
| `plugin/`        | Contains all file configuration                              |
| `pack/`          | Vim's default location for third-party plugins               |
| `spell/`         | Files related to spell-checking                              |
| `syntax/`        | Contains scripts related to syntax highlighting              |
| `depth/`         | Folder That contains all the test config/plugin              |

<font size="1">* This structure is an example/idea, it is in no way an absolute truth and can be adapted according to your preference.</font>
</details>

## Plugin

<details>
<summary> Installed</summary>

- [x] [Packer (Manager Package)](https://github.com/wbthomason/packer.nvim)
- [x] [Nvim-web-devicons](https://github.com/nvim-tree/nvim-web-devicons)
- [x] [Lualine](https://github.com/nvim-lualine/lualine.nvim)
- [x] [Modes](https://github.com/mvllow/modes.nvim)
- [ ] [Modicator](https://github.com/mawkler/modicator.nvim)
- [x] [Mapx](https://github.com/b0o/mapx.nvim)
- [x] [Markdown-preview](https://github.com/iamcco/markdown-preview.nvim)
- [x] [Barbar](https://github.com/romgrk/barbar.nvim)
- [x] [Indent-backline](https://github.com/lukas-reineke/indent-blankline.nvim)
- [x] [Guess-indent](https://github.com/NMAC427/guess-indent.nvim)
- LSP :
    - [-] [Rust-tools.nvim](https://github.com/simrat39/rust-tools.nvim)
    - [ ] [Luasnip](https://github.com/L3MON4D3/LuaSnip)
    - [x] [Mason.nvim](https://github.com/williamboman/mason.nvim)
    - [x] [Mason_lspconfig.nvim](https://github.com/williamboman/mason-lspconfig.nvim)
    - [-] [Nvim_cmp](https://github.com/hrsh7th/nvim-cmp)
    - [-] [Cmp_nvim_lsp](https://github.com/hrsh7th/cmp-nvim-lsp)
    - [-] [Cmp_luasnip](https://github.com/saadparwaiz1/cmp_luasnip)
    - [x] [Nvim-lspconfig](https://github.com/neovim/nvim-lspconfig)

<font size="1"> [x] : Crossed (My Config)</font><br/>
<font size="1"> [-] : Commend & not installed</font><br/>
<font size="1"> [ ] : Unchecked (Default Config)</font><br/>
</details>

<details>
<summary> Others</summary>

- [ ] [Nvim-notify](https://github.com/rcarriga/nvim-notify)
- [ ] [Vim-table-mode](https://github.com/dhruvasagar/vim-table-mode)
- [ ] [Vim-polyglot](https://github.com/sheerun/vim-polyglot)
- [ ] [Vim-closetag](https://github.com/alvan/vim-closetag)
- [ ] [Vim-nerdtree](https://github.com/preservim/nerdtree)
- [ ] [Auto Pair](https://github.com/windwp/nvim-autopairs)
- [ ] [Comment](https://github.com/numToStr/Comment.nvim)
- [ ] [Auto indent detection](https://github.com/tpope/vim-sleuth)
- Surround :
    - [ ] [ur4ltz](https://github.com/ur4ltz/surround.nvim)
    - [ ] [tpope](https://github.com/tpope/vim-surround)
- [ ] [Lazygit](https://github.com/kdheepak/lazygit.nvim)
- [ ] [GitSigns](https://github.com/lewis6991/gitsigns.nvim)
- [ ] [GitBlame](https://github.com/f-person/git-blame.nvim)
- [ ] [Trouble](https://github.com/folke/trouble.nvim)
- [ ] [vim-auto-save](https://github.com/907th/vim-auto-save)
- [ ] [Telescope :](https://github.com/nvim-telescope/telescope.nvim)
    - [ ] [Telescope-file-browser](https://github.com/nvim-telescope/telescope-file-browser.nvim)
    - [ ] [Telescope-fzf-native](https://github.com/nvim-telescope/telescope-fzy-native.nvim)
    - [ ] [Telescope-project](https://github.com/nvim-telescope/telescope-project.nvim)
- [ ] [Nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
- [ ] [Nvim-treesitter-refactor](https://github.com/nvim-treesitter/nvim-treesitter-refactor)
- [ ] [Nvim-ts-autotag](https://github.com/windwp/nvim-ts-autotag)
- [ ] [Lspkind](https://github.com/onsails/lspkind.nvim)

</details>

## Sources

- [nvim-lua-guide](https://github.com/nanotee/nvim-lua-guide)
- [ftplugin/](https://www.ejmastnak.com/tutorials/vim-latex/ftplugin/)
