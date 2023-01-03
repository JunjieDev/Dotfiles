FROM alpine:latest

RUN apk update && apk upgrade
RUN apk add curl bash git tree vim neovim

# vim-Plug -> Vim
RUN curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
# vim-Plug -> NeoVim
RUN sh -c 'curl -fLo $HOME/.config/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

# Vim config
ADD ./config /root/.vim
ADD ./.vimrc /root/.vimrc
# Neovim Config
ADD ./config /root/.config/nvim
ADD ./init.vim /root/.config/nvim/init.vim
