# Depth

Neovim is a customizable editor. Even if, the basic configuration already allows you to do a lot. Everyone loves the customization of this one. This folder contains all the configurations or plugins to test vim/neovim in a docker container.

## Usage

```bash
docker build -t project_name_build .
docker container run -it --name project_name_run project_name_build
...
```

## Copy file

```bash
docker cp project_name_run:/home/fileName .
```

## Restart

```bash
docker container start project_name_run
docker container attach project_name_run
```

## Clear

```bash
docker container prune
docker image prune
docker volume prune
...
docker system prune -a
```
