set encoding=UTF-8
syntax on
"colorscheme molokai
colorscheme wal
"colorscheme monokai
"colorscheme vim-monokai-tasty  


"colorscheme monokai_pro 
set ignorecase
set winwidth=110
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
"let g:molokai_original = 1


map <C-n> :NERDTreeToggle<CR>
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
"""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:indentLine_char = '|'

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Vundle
set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
let g:airline#extensions#tabline#enabled = 1
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
"Plugin 'ryanoasis/vim-devicons'
" Add all your plugins here (note older versions of Vundle used Bundle instead of Plugin)

set incsearch
set hlsearch

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plugin 'scrooloose/nerdtree'
Plugin 'dylanaraps/wal.vim'
Plugin 'Yggdroot/indentLine'
"""
"Plugin 'itchyny/lightline.vim'
Plugin 'airblade/vim-gitgutter'
Plugin 'ryanoasis/vim-webdevicons'
Plugin 'alvan/vim-closetag'
"Plugin 'patstockwell/vim-monokai-tasty'
"BASIC POWERLINE
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'


let g:airline_powerline_fonts=1
set guifont=Droid\ Sans\ Mono\ for\ Powerline\ Plus\ Nerd\ File\ Types\ 20
set encoding=utf-8

let g:lightline = {
      \ 'colorscheme': 'powerline',
      \ }

"# let $PYTHONPATH='/usr/lib/python3.7/site-packages'
"# set rtp+=/usr/lib/python3.7/site-packages/powerline/bindings/vim/
 set laststatus=2
 set t_Co=256

"autocmd filetype nerdtree highlight haskell_icon ctermbg=none ctermfg=Red guifg=#ffa500
"autocmd filetype nerdtree highlight html_icon ctermbg=none ctermfg=Red guifg=#ffa500
"autocmd filetype nerdtree highlight go_icon ctermbg=none ctermfg=Red guifg=#ffa500

autocmd filetype nerdtree syn match haskell_icon ## containedin=NERDTreeFile
" if you are using another syn highlight for a given line (e.g.
" NERDTreeHighlightFile) need to give that name in the 'containedin' for this
" other highlight to work with it
autocmd filetype nerdtree syn match html_icon ## containedin=NERDTreeFile,html
autocmd filetype nerdtree syn match go_icon ## containedin=NERDTreeFile
" testing extra-powerline-symbols

" set font terminal font or set gui vim font
" to a Nerd Font (https://github.com/ryanoasis/nerd-fonts):
set guifont=DroidSansMono\ Nerd\ Font\ 12

" testing rounded separators (extra-powerline-symbols):
let g:airline_left_sep = "\ue0c0"
let g:airline_right_sep = "\uE0c2"

"set the CN (column number) symbol:
let g:airline_section_z = airline#section#create(["\uE0A1" . '%{line(".")}' . "\uE0A3" . '%{col(".")}'])

if has('gui_running') || has('nvim') 
    hi Normal 		guifg=#f6f3e8 guibg=#242424 
else
    " Set the terminal default background and foreground colors, thereby
    " improving performance by not needing to set these colors on empty cells.
    hi Normal guifg=NONE guibg=NONE ctermfg=NONE ctermbg=NONE
    let &t_ti = &t_ti . "\033]10;#f6f3e8\007\033]11;#242424\007"
    let &t_te = &t_te . "\033]110\007\033]111\007"
endif


"#FOOOR vim-monokai-tasty"put Plug declaration first

"let g:vim_monokai_tasty_italic = 1                    " allow italics, set this before the colorscheme
"colorscheme vim-monokai-tasty    
"command! What echo synIDattr(synID(line('.'), col('.'), 1), 'name')
"let g:airline_theme='monokai_tasty'                   " airline theme
"let g:lightline = { 'colorscheme': 'monokai_tasty' }
let g:airline_theme="badwolf"


