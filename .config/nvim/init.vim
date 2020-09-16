" Syntax for programming using my colors
syntax enable
" Set up tabs and indents for 4 spaces
set tabstop=4
set shiftwidth=4
set expandtab
set number
filetype indent on
set autoindent
set wrap
set textwidth=80
" Makes it not compatible with Vi
set nocompatible
filetype plugin on

" Vim-plug and plugins
call plug#begin('~/.vim/plugged')

" List of plugins
Plug 'preservim/nerdtree'
Plug 'vimwiki/vimwiki'
Plug 'lervag/vimtex'
Plug 'sirver/ultisnips'

" End of plugin list
call plug#end()

" Vimtex
let g:tex_flavor='latex'
let g:vimtex_view_method='zathura'
let g:vimtex_quickfix_mode=0
set conceallevel=1
let g:tex_conceal='abdmg'

" Ultisnips
let g:UltiSnipsExpandTrigger = '<tab>'
let g:UltiSnipsJumpFowardTrigger = '<tab>'
let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'
let g:UltiSnipsEditSplit = 'tabdo'
