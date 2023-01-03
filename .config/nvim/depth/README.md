# Depth

Neovim is a customizable editor. Even if, the basic configuration already allows you to do a lot. Everyone loves the customization of this one. This folder contains all the configurations or plugins to test vim/neovim in a docker container.

## Usage

```bash
vim/nvim

# vim-plug
:PlugInstall
```

## Commmande

### Run container

```bash
docker build -t project_name_build .
docker container run -it --name project_name_run project_name_build
...
```

### Copy file (root->container)

```bash
docker cp project_name_run:/home/fileName .
```

### Restart container

```bash
docker container start project_name_run
docker container attach project_name_run
```

### Clear docker

```bash
docker container prune
docker image prune
docker volume prune
...
docker system prune -a
```
