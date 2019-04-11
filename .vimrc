syntax on
colorscheme molokai"
"colorscheme wal
"colorscheme monokai
set number
set tabstop=2
set shiftwidth=2
set expandtab
set laststatus=2
set noshowmode
set nobackup
set noswapfile
"this is the config for autoshow tree

:"autocmd vimenter * NERDTree
"autocmd StdinReadPre * let s:std_in=1
"autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

map <C-n> :NERDTreeToggle<CR>
let g:NERDTreeDirArrowExpandable = '>'
let g:NERDTreeDirArrowCollapsible = '*'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:indentLine_char = '¦'

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Vundle
set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Add all your plugins here (note older versions of Vundle used Bundle instead of Plugin)


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plugin 'dylanaraps/wal.vim'
Plugin 'Yggdroot/indentLine'
Plugin 'itchyny/lightline.vim'
"Plugin 'airblade/vim-gitgutter'


let g:lightline = {
      \ 'colorscheme': 'powerline',
      \ }

