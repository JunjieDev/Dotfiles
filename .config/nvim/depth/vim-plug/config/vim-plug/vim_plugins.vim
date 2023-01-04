" PLUGINS ---------------------------------------------------------------- {{{
call plug#begin('~/.vim/plugged')

"Better Syntax Support"
source $HOME/.vim/plugin/vim-polyglot.vim

"Automatique close tag : xml, html, xhtml, phtml, ..."
source $HOME/.vim/plugin/vim-closetag.vim

"Auto pairs for '(' '[' '{'"
source $HOME/.vim/plugin/vim-auto-pairs.vim

"Icons for NERDTREE"
source $HOME/.vim/plugin/vim-devicons.vim

"File system Explorer"
source $HOME/.vim/plugin/vim-nerdtree.vim

"Status Line"
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

"Better color css"
Plug 'ap/vim-css-color'

"Collection of awesome color schemes for Vim"
Plug 'rafi/awesome-vim-colorschemes'

call plug#end()
" }}}
