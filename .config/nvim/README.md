# [Neovim](https://neovim.io) Configuration

Neovim is a text editor. It is directly inspired by Vim. I love the way of processes, handling of files and personal customization.

## Structures

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

## Sources

- [nvim-lua-guide](https://github.com/nanotee/nvim-lua-guide)
- [ftplugin/](https://www.ejmastnak.com/tutorials/vim-latex/ftplugin/)
