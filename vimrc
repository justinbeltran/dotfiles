set nocompatible               " be iMproved
filetype off                   " required!
filetype plugin indent off

set rtp+=~/.vim/bundle/Vundle.vim/
call vundle#rc()

" required! 
Bundle 'gmarik/Vundle.vim'

" Basic
set number
set clipboard=unnamed
set sw=4 ts=4 sts=4
autocmd FileType ruby :setlocal sw=2 ts=2 sts=2 " Two spaces for HTML files "

" Always show statusline
set laststatus=2

" Color Scheme
Bundle 'nanotech/jellybeans.vim'
set t_Co=256  " Set terminal to display 256 colors.
set background=dark
colorscheme jellybeans

" NERDTree
Bundle 'scrooloose/nerdtree'
map <Leader>n :NERDTreeToggle<CR>
let NERDTreeIgnore = ['\.pyc$']
" CtrlP
Bundle 'kien/ctrlp.vim'
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)$',
  \ 'file': '\v\.(exe|so|dll|pyc)$'
  \ }

" ZoomWin
Bundle 'ZoomWin' 

" Vim-Signify
Bundle 'mhinz/vim-signify' 

" Go
Bundle 'jnwhiteh/vim-golang'
Bundle 'Blackrush/vim-gocode'
Bundle 'nsf/gocode', {'rtp': 'vim/'}

set rtp+=$GOROOT/misc/vim
filetype plugin indent on
syntax on

" vim-airline
Plugin 'bling/vim-airline'
let g:airline_powerline_fonts = 1

" tmuxline.vim
Plugin 'edkolev/tmuxline.vim'
