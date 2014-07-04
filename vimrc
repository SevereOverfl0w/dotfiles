" Vundle
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'
Plugin 'altercation/vim-colors-solarized'
Plugin 'mattn/emmet-vim'
Plugin 'kchmck/vim-coffee-script'
Plugin 'mattr555/vim-instacode'
Plugin 'msanders/snipmate.vim'
Plugin 'blueyed/vim-autoclose'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/syntastic'
Plugin 'ap/vim-css-color'

call vundle#end()
filetype plugin on

set colorcolumn=80
set autoindent
set tabstop=4 shiftwidth=4 softtabstop=4 expandtab

syntax on
colorscheme solarized
set background=dark

" Numbers
set number
" Show numbers relative to current line
set relativenumber
" Make indents conform to my biases
set shiftround

" Map - to move line down
noremap <leader>- ddp
" Map _ to move line up
noremap <leader>_ ddkP
" Uppercase current word
inoremap <leader><c-u> <esc>viwUwi
inoremap <leader><c-u> viwU
" Change the leader
let mapleader = "-"
let maplocalleader = "\\"
" Easy editing of vimrc
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>
" Chap9 - extra mappings
nnoremap H ^
nnoremap L $
vnoremap H ^
vnoremap L $
" Prevent ^/$
nnoremap $ <nop>
vnoremap $ <nop>
nnoremap ^ <nop>
vnoremap ^ <nop>
" Wrap visual block with quotes
vnoremap <leader>" <esc>`<i"<esc>`>i"<esc>
" Change <esc>
inoremap jk <esc>
inoremap <esc> <nop>
" Duplicate line
nnoremap <leader>dl ^v$yo<esc>p

" Common Typos
iabbrev adn and
iabbrev teh the
" Useful stuff
iabbrev @@ monroef4@googlemail.com
iabbrev ltco lycantech.co
iabbrev ssig -- Dominic Monroe --
" Javascript textMate style
autocmd FileType javascript :iabbrev fn-> function(){<cr><cr>}<up><tab>
autocmd FileType html :iabbrev <buffer> &< &lt;
autocmd FileType html :iabbrev <buffer> &> &gt;


" Add maps for more html-like files
au BufRead,BufNewFile *.{hbs,mako,jinja2} setfiletype html
