# [Neovim](https://neovim.io) Configuration

Neovim is a text editor. It is directly inspired by Vim. I love the way of processes, handling of files and personal customization.

### Command

|  Command         |                         Description                          |
|------------------|--------------------------------------------------------------|
| :PackerInstall   | Command for install all plugins                              |
| :Mason           | Command for check lsp language                               |


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
- [x] [Vim-nerdtree](https://github.com/preservim/nerdtree)
- LSP :
    - [-] [Rust-tools.nvim](https://github.com/simrat39/rust-tools.nvim)
    - [ ] [Luasnip](https://github.com/L3MON4D3/LuaSnip)
    - [x] [Mason.nvim](https://github.com/williamboman/mason.nvim)
    - [x] [Mason_lspconfig.nvim](https://github.com/williamboman/mason-lspconfig.nvim)
    - [x] [Nvim-lspconfig](https://github.com/neovim/nvim-lspconfig)
    - [ ] [Typescript](https://github.com/jose-elias-alvarez/typescript.nvim)
- LSP :
    - [ ] [Nvim-cmp](https://github.com/hrsh7th/nvim-cmp)
    - [ ] [Cmp-nvim_lsp](https://github.com/hrsh7th/cmp-nvim-lsp)
    - [ ] [Cmp-path](https://github.com/hrsh7th/cmp-path)
    - [ ] [Cmp-cmdline](https://github.com/hrsh7th/cmp-cmdline)
    - [ ] [Cmp-luasnip](https://github.com/saadparwaiz1/cmp_luasnip)
    - [x] [Lspkind](https://github.com/onsails/lspkind.nvim)
- [x] [Alternate-toggler]()https://github.com/rmagatti/alternate-toggler
- [x] [Auto Pair](https://github.com/windwp/nvim-autopairs)
- [x] [Vim-visual-multi](https://github.com/mg979/vim-visual-multi)
- [ ] [Wildfire](https://github.com/gcmt/wildfire.vim)
- Surround :
    - [ ] [tpope](https://github.com/tpope/vim-surround)
    - [-] [ur4ltz](https://github.com/ur4ltz/surround.nvim)
    - [-] [kylechui](https://github.com/kylechui/nvim-surround)
- [x] [Telescope :](https://github.com/nvim-telescope/telescope.nvim)
    - [x] [Telescope-file-browser](https://github.com/nvim-telescope/telescope-file-browser.nvim)
    - [x] [Telescope-fzf-native](https://github.com/nvim-telescope/telescope-fzy-native.nvim)
    - [x] [Telescope-project](https://github.com/nvim-telescope/telescope-project.nvim)
    - [ ] [Nvim-neoclip](https://github.com/AckslD/nvim-neoclip.lua)
    - [ ] [Telescope-vim-bookmarks](https://github.com/tom-anders/telescope-vim-bookmarks.nvim)
- [ ] [Vim-bookmarks](https://github.com/MattesGroeger/vim-bookmarks)
- [-] [Null-ls](https://github.com/jose-elias-alvarez/null-ls.nvim)
- [x] [Nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
- Nvim-ts :
    - [-] [Nvim-ts-autotag](https://github.com/windwp/nvim-ts-autotag)
    - [-] [Nvim-ts-rainbow](https://github.com/p00f/nvim-ts-rainbow)
- [-] [Template-string.nvim](https://github.com/axelvc/template-string.nvim)
- [ ] [Fidget](https://github.com/j-hui/fidget.nvim)
- [ ] [Todo-comments](https://github.com/folke/todo-comments.nvim)
- [ ] [Comment](https://github.com/numToStr/Comment.nvim)
- [ ] [Noice :](https://github.com/folke/noice.nvim)
    - [ ] [Nui](https://github.com/MunifTanjim/nui.nvim)
    - [ ] [Nvim-notify](https://github.com/rcarriga/nvim-notify)
- [ ] [Sideways](https://github.com/AndrewRadev/sideways.vim)
- [ ] [ToggleTerm](https://github.com/akinsho/toggleterm.nvim)

<font size="1"> [x] : Crossed (My Config)</font><br/>
<font size="1"> [-] : Commend & not installed</font><br/>
<font size="1"> [ ] : Unchecked (Default Config)</font><br/>
</details>

<details>
<summary> Others</summary>

- [ ] [Vim-table-mode](https://github.com/dhruvasagar/vim-table-mode)
- [ ] [Vim-polyglot](https://github.com/sheerun/vim-polyglot)
- [ ] [Vim-closetag](https://github.com/alvan/vim-closetag)
- [ ] [Auto indent detection](https://github.com/tpope/vim-sleuth)
- [ ] [Lazygit](https://github.com/kdheepak/lazygit.nvim)
- [ ] [GitSigns](https://github.com/lewis6991/gitsigns.nvim)
- [ ] [GitBlame](https://github.com/f-person/git-blame.nvim)
- [ ] [Trouble](https://github.com/folke/trouble.nvim)
- [ ] [vim-auto-save](https://github.com/907th/vim-auto-save)
- [ ] [Nvim-treesitter-refactor](https://github.com/nvim-treesitter/nvim-treesitter-refactor)
- [ ] [Vim-obsession](https://github.com/tpope/vim-obsession)
- [ ] [Nvim-ufo](https://github.com/kevinhwang91/nvim-ufo)

</details>

## Sources

- [nvim-lua-guide](https://github.com/nanotee/nvim-lua-guide)
- [ftplugin/](https://www.ejmastnak.com/tutorials/vim-latex/ftplugin/)
