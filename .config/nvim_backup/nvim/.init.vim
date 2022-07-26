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
set scrolloff=13
" Netrw stuff
let g:netrw_liststyle=3
let g:netrw_banner=0


set noshowmode

" Vim-plug and plugins
" call plug#begin('~/.vim/plugged')
"
" " List of plugins
" Plug 'vimwiki/vimwiki'
" Plug 'itchyny/lightline.vim'
" " Colorscheme
" Plug 'https://github.com/jsnal/vim-serape', { 'tag': 'v0.2.2' }
" Plug 'bluz71/vim-moonfly-colors'
"
" " End of plugin list
" call plug#end()
"
" " Colorscheme
" colorscheme moonfly
"
" " Vimwiki
" let work_wiki={}
" let work_wiki.path='~/work'
" let work_wiki.path_html='~/work/html'
" let work_wiki.ext='.md'
" let work_wiki.auto_export=1
" let work_wiki.auto_toc=1
" let work_wiki.index='big_kahoona'
" let work_wiki.syntax='markdown'
" let g:vimwiki_list = [work_wiki]
"
" " Vimtex
" let g:tex_flavor='latex'
" let g:vimtex_view_method='zathura'
" let g:vimtex_quickfix_mode=0
"
" " Ultisnips
" let g:UltiSnipsExpandTrigger = '<tab>'
" let g:UltiSnipsJumpFowardTrigger = '<tab>'
" let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'
" let g:UltiSnipsEditSplit = 'tabdo'
"
" " Nerdtree
" map <C-n> :NERDTreeToggle<CR>
"
" " Lightline
" let g:lightline={'colorscheme': 'wombat'}
