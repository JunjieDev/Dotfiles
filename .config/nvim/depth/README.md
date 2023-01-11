# Depth

Neovim is a customizable editor. Even if, the basic configuration already allows you to do a lot. Everyone loves the customization of this one. This folder contains all the configurations or plugins to test vim/neovim in a docker container.

## Structures

|  Directory/File  |                         Description                          |
|------------------|--------------------------------------------------------------|
| `kickstart/`     | Basic directory of neovim configuration (no manager plugin)  |
| `packer`         | Directory of configuration with packer.vim (only neovim)     |
| `vim-plug`       | My directory of configuration with vim-plug manager plugin   |


## Usage

### kickstart

```bash
nvim
```

### packer

```bash
./preinstall 

-> docker command

./install.sh
cd /root/.config/nvim
:luafile %
:PackerInstall
```

<font size="1">After use the container, delete the folder ./config</font>

### vim-plug

```bash
nvim OR vim
:PlugInstall
```

## Sources

- [kickstart](https://github.com/nvim-lua/kickstart.nvim)
- [Packer](https://github.com/wbthomason/packer.nvim)
- [Vim-plug](https://github.com/junegunn/vim-plug)

