FROM ubuntu:latest

RUN apt-get update
RUN apt-get install build-essential git curl tree software-properties-common -y
RUN add-apt-repository ppa:neovim-ppa/unstable
RUN apt-get update
RUN apt-get install neovim -y

ADD ./init.lua /root/.config/nvim/init.lua
