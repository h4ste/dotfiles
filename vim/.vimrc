call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-sensible'
Plug 'arcticicestudio/nord-vim'
Plug 'itchyny/lightline.vim'
Plug 'scrooloose/nerdtree'

call plug#end()


set shell=/bin/sh

set t_Co=256
let g:nord_uniform_diff_background = 1
let g:nord_cursor_line_number_background = 1
colorscheme nord

" Disable mode showing as lightline already tells us the mode
set noshowmode
let g:lightline = {
    \ 'colorscheme': 'nord',
    \ }

" Use tmux-style vertical separators
set fillchars+=vert:│
