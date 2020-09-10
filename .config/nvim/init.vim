"Syntax for programming using my colors
syntax enable

"Set up tabs and indents for 4 spaces
set tabstop=4
set shiftwidth=4
set expandtab
set number
filetype indent on
set autoindent

"Makes it not compatible with Vi
set nocompatible
filetype plugin on

"Vim-plug and plugins
call plug#begin('~/.vim/plugged')

"List of plugins
Plug 'preservim/nerdtree'
Plug 'vimwiki/vimwiki'

"End of plugin list
call plug#end()
