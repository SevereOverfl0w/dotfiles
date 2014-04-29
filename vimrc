" Pathogen
runtime bundle/vim-pathogen/autoload/pathogen.vim
execute pathogen#infect()
syntax on
filetype plugin indent on

set colorcolumn=80
set autoindent
set tabstop=4 shiftwidth=4 softtabstop=4 expandtab

" colorscheme slate
set background=dark
colorscheme solarized
let g:miniBufExplBuffersNeeded = 1

runtime macros/matchit.vim

set number

au BufRead,BufNewFile *.hbs setfiletype html
let g:neocomplcache_enable_at_startup = 1
