call plug#begin('~/.vim/plugged')

Plug 'nanotech/jellybeans.vim'
Plug 'scrooloose/nerdtree'
Plug 'kien/ctrlp.vim'
Plug 'ZoomWin'
Plug 'mhinz/vim-signify' 
Plug 'bling/vim-airline'
Plug 'edkolev/tmuxline.vim'
Plug 'fatih/vim-go'
Plug 'Shougo/neocomplete.vim' " vim needs to be installed with lua support
Plug 'elzr/vim-json', {'for' : 'json'}

call plug#end()

set nocompatible              " be iMproved, required
filetype off                  " required
filetype plugin indent on    " required

" Basic
set laststatus=2 " Always show statusline
set number
if $TMUX == ''
	set clipboard=unnamed
endif
set sw=4 ts=4 sts=4
autocmd FileType ruby :setlocal sw=2 ts=2 sts=2 " Two spaces for HTML files "

" Appearance"
syntax enable
colorscheme jellybeans
set t_Co=256  " Set terminal to display 256 colors.

" NERDTree
map <Leader>n :NERDTreeToggle<CR>
let NERDTreeIgnore = ['\.pyc$']

" CtrlP
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)$',
  \ 'file': '\v\.(exe|so|dll|pyc)$'
  \ }

" vim-airline
let g:airline_powerline_fonts = 1
set laststatus=2

" go support
set shell=/bin/sh
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1

" neocomplete
let g:neocomplete#enable_at_startup = 1
