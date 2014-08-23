set nocompatible               " be iMproved
filetype off                   " required!
filetype plugin indent off

" Setup vundle per https://github.com/gmarik/Vundle.vim
set rtp+=~/.vim/bundle/Vundle.vim/
call vundle#rc()

" required! 
Plugin 'gmarik/Vundle.vim'

" Basic
set number
if $TMUX == ''
	set clipboard=unnamed
endif
set sw=4 ts=4 sts=4
autocmd FileType ruby :setlocal sw=2 ts=2 sts=2 " Two spaces for HTML files "

" Always show statusline
set laststatus=2

" Color Scheme
Plugin 'nanotech/jellybeans.vim'
set t_Co=256  " Set terminal to display 256 colors.
colorscheme jellybeans

" NERDTree
Plugin 'scrooloose/nerdtree'
map <Leader>n :NERDTreeToggle<CR>
let NERDTreeIgnore = ['\.pyc$']
" CtrlP
Plugin 'kien/ctrlp.vim'
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)$',
  \ 'file': '\v\.(exe|so|dll|pyc)$'
  \ }

" ZoomWin
Plugin 'ZoomWin' 

" Vim-Signify
Plugin 'mhinz/vim-signify' 

" Go
Plugin 'jnwhiteh/vim-golang'
Plugin 'Blackrush/vim-gocode'
Plugin 'nsf/gocode', {'rtp': 'vim/'}

set rtp+=$GOROOT/misc/vim
filetype plugin indent on
syntax on

" vim-airline
Plugin 'bling/vim-airline'
let g:airline_powerline_fonts = 1
let g:airline_theme='powerlineish'
set laststatus=2

" tmuxline.vim
Plugin 'edkolev/tmuxline.vim'
