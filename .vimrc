autocmd FileType apache set commentstring=#\ %s

let g:prettier#quickfix_enabled = 0
let g:prettier#config#bracket_spacing = 'false'
let g:prettier#config#use_tabs = 'true'
"let g:prettier#autoformat = 0
"autocmd BufWritePre,TextChanged,InsertLeave *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue,*.yaml,*.html PrettierAsync
let g:prettier#exec_cmd_async = 0
let g:prettier#config#tab_width = 4

nmap <F1> :w<CR>
noremap <silent> <F1>          :update<CR>
vnoremap <silent> <F1>         <C-C>:update<CR>
inoremap <silent> <F1>         <C-O>:update<CR>
"let g:airline_theme=""
let g:airline_theme="base16color"
let g:airline#extensions#tabline#formatter = 'unique_tail'
" If you have vim >=8.0 or Neovim >= 0.1.5
if (has("termguicolors"))
 set termguicolors
endif

" For Neovim 0.1.3 and 0.1.4
let $NVIM_TUI_ENABLE_TRUE_COLOR=1

" Theme
syntax enable
"colorscheme dragon-energy
"colorscheme tender
colorscheme molokai
"colorscheme gruvbox
"set term=screen-256color
"set t_Co=256
"let g:molokai_original = 1
"let g:rehash256 = 1

set splitbelow
"set splitbelow
set modifiable
syntax enable
set encoding=UTF-8
syntax on
"let g:rainbow_active = 1
let g:WebDevIconsOS = 'Darwin'
let g:WebDevIconsUnicodeDecorateFolderNodes = 1
let g:DevIconsEnableFoldersOpenClose = 1
let g:DevIconsEnableFolderExtensionPatternMatching = 1
"let g:airline_statusline_ontop=1 
"--------------------------------------------------themas
"let g:gruvbox_contrast_dark = 'hard'
"colorscheme molokai
"colorscheme wal
"colorscheme monokai
"colorscheme vim-monokai-tasty  
"colorscheme monokai_pro 
"colorscheme monokai_pro 
"colorscheme gruvbox
"colorscheme tequila-sunrise
"colorscheme Blaaark 
"colorscheme srcery
"-------------------------------------------------.
set autoindent
set background=dark
set relativenumber
set ts=4
set smartindent   
set autoindent
set expandtab
set shiftwidth=4
let python_highlight_all = 1
"set wildmenu
set ignorecase
set winwidth=110
set number
"set tabstop=2
"set shiftwidth=2
"set expandtab
set laststatus=2
"set noshowmode
set nobackup
set noswapfile
"set nocompatible              " required
"set incsearch
"set hlsearch
"set guifont=Droid\ Sans\ Mono\ for\ Powerline\ Plus\ Nerd\ File\ Types\ 20
"set encoding=utf-8
set guifont=DroidSansMono\ Nerd\ Font\ 15
let g:NERDTreeWinSize=5


map ; :Files<CR>
"map <C-n> :NERDTreeToggle<CR>
map <C-n> :NERDTreeTabsToggle<CR>
"map <Leader>n <plug>NERDTreeTabsToggle<CR>

"let NERDTreeQuitOnOpen = 1

""""nerdtre nvim config"""""""""""""""""
let g:NERDTreeMinimalUI = 1
"let g:NERDTreeShowHidden = 1
let g:NERDTreeShowLineNumbers = 0
let g:NERDTreeCascadeSingleChildDir = 0
"let g:NERDTreeDirArrowExpandable = "•"
"let g:NERDTreeDirArrowCollapsible = "•"
let g:NERDTreeWinSize = 31
""""nerdtre nvim config"""""""""""""""""

let g:NERDTreeDirArrowExpandable = ''
let g:NERDTreeDirArrowCollapsible = ''
let NERDTreeMinimalUI = 1
"let NERDTreeDirArrows = 1
"""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:indentLine_char = '|'

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Vundle
"filetype off                  " required
filetype on                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
let g:airline#extensions#tabline#enabled = 0
let g:airline#extensions#tabline#buffer_nr_show = 0
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""Multicurosr
let g:multi_cursor_use_default_mapping=0

" Default mapping
let g:multi_cursor_start_word_key      = '<C-u>'
let g:multi_cursor_select_all_word_key = '<A-n>'
let g:multi_cursor_start_key           = 'g<C-n>'
let g:multi_cursor_select_all_key      = 'g<A-n>'
let g:multi_cursor_next_key            = '<C-n>'
let g:multi_cursor_prev_key            = '<C-p>'
let g:multi_cursor_skip_key            = '<C-x>'
let g:multi_cursor_quit_key            = '<Esc>'
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-i': 'split',
  \ 'ctrl-s': 'vsplit' }

let g:fzf_layout = { 'down': '~15%' }


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""Multicurosr

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""color theme
"let g:srcery_italic = 1
"let g:srcery_bold = 1
"Plugin 'srcery-colors/srcery-vim'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""PLUGIN
Plugin 'prettier/vim-prettier', {
  \ 'do': 'yarn install',
  \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'yaml', 'html'] }

"Plugin 'preservim/nerdcommenter'
Plugin 'chrisbra/vim-commentary'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'jacoborus/tender.vim'
Plugin 'oblitum/rainbow'
Plugin 'jwalton512/vim-blade'
"Plugin 'evidens/vim-twig'
"Plugin 'ObserverOfTime/coloresque.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'dylanaraps/wal.vim'
Plugin 'junegunn/fzf.vim'

Plugin 'Yggdroot/indentLine'
"""
"Plugin 'itchyny/lightline.vim'
Plugin 'airblade/vim-gitgutter'
Plugin 'ryanoasis/vim-webdevicons'
Plugin 'alvan/vim-closetag'
Plugin 'francoiscabrol/ranger.vim'
"Plugin 'patstockwell/vim-monokai-tasty'
"BASIC POWERLINE
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

Plugin 'tiagofumo/vim-nerdtree-syntax-highlight'
" let Vundle manage Vundle, required
Plugin 'Valloric/YouCompleteMe'
Plugin 'tpope/vim-surround'
Plugin 'morhetz/gruvbox'
Plugin 'prabirshrestha/asyncomplete.vim'
Plugin 'gmarik/Vundle.vim'
Plugin 'OmniSharp/omnisharp-vim'
"let g:OmniSharp_server_stdio = 1
Plugin 'ryanoasis/vim-devicons'
Plugin 'terryma/vim-multiple-cursors'

let g:airline_powerline_fonts=1
let g:blade_custom_directives = ['datetime', 'javascript']
let g:blade_custom_directives_pairs = {
       \   'markdown': 'endmarkdown',
             \   'cache': 'endcache',
                   \ }

"let g:lightline = { \ 
"    'colorscheme': 'tender', 
"                \ } 
let g:airline_left_sep = "\ue0b8"
let g:airline_right_sep = "\ue0ba"

"set the CN (column number) symbol:
let g:airline_section_z = airline#section#create(["\uE0A1" . '%{line(".")}' . "\uE0A3" . '%{col(".")}'])

if has('gui_running') || has('nvim') 
    hi Normal 		guifg=#f6f3e8 guibg=#1e1e1e 
else
    " Set the terminal default background and foreground colors, thereby
    " improving performance by not needing to set these colors on empty cells.
    hi Normal guifg=NONE guibg=NONE ctermfg=NONE ctermbg=NONE
    let &t_ti = &t_ti . "\033]10;#f6f3e8\007\033]11;#242424\007"
    let &t_te = &t_te . "\033]110\007\033]111\007"
endif

let g:fzf_history_dir = '~/.local/share/fzf-history'
let g:webdevicons_enable = 1
let g:webdevicons_enable_nerdtree = 1
let g:webdevicons_conceal_nerdtree_brackets = 1
highlight NERDTreeCWD ctermfg=white
"
"
"
set mouse=

nmap <ScrollWheelUp> <nop>
nmap <S-ScrollWheelUp> <nop>
nmap <C-ScrollWheelUp> <nop>
nmap <ScrollWheelDown> <nop>
nmap <S-ScrollWheelDown> <nop>
nmap <C-ScrollWheelDown> <nop>
nmap <ScrollWheelLeft> <nop>
nmap <S-ScrollWheelLeft> <nop>
nmap <C-ScrollWheelLeft> <nop>
nmap <ScrollWheelRight> <nop>
nmap <S-ScrollWheelRight> <nop>
nmap <C-ScrollWheelRight> <nop>

imap <ScrollWheelUp> <nop>
imap <S-ScrollWheelUp> <nop>
imap <C-ScrollWheelUp> <nop>
imap <ScrollWheelDown> <nop>
imap <S-ScrollWheelDown> <nop>
imap <C-ScrollWheelDown> <nop>
imap <ScrollWheelLeft> <nop>
imap <S-ScrollWheelLeft> <nop>
imap <C-ScrollWheelLeft> <nop>
imap <ScrollWheelRight> <nop>
imap <S-ScrollWheelRight> <nop>
imap <C-ScrollWheelRight> <nop>

vmap <ScrollWheelUp> <nop>
vmap <S-ScrollWheelUp> <nop>
vmap <C-ScrollWheelUp> <nop>
vmap <ScrollWheelDown> <nop>
vmap <S-ScrollWheelDown> <nop>
vmap <C-ScrollWheelDown> <nop>
vmap <ScrollWheelLeft> <nop>
vmap <S-ScrollWheelLeft> <nop>
vmap <C-ScrollWheelLeft> <nop>
vmap <ScrollWheelRight> <nop>
vmap <S-ScrollWheelRight> <nop>
vmap <C-ScrollWheelRight> <nop>
autocmd BufNewFile,BufRead *.blade.php set ft=html | set ft=phtml | set ft=blade " Fix blade auto-indent


noremap <leader>1 1gt
noremap <leader>2 2gt
noremap <leader>3 3gt
noremap <leader>4 4gt
noremap <leader>5 5gt
noremap <leader>6 6gt
noremap <leader>7 7gt
noremap <leader>8 8gt
noremap <leader>9 9gt
noremap <leader>0 :tablast<cr>

"let g:rainbow_load_separately = [
"    \ [ '*' , [['(', ')'], ['\[', '\]'], ['{', '}']] ],
"    \ [ '*.tex' , [['(', ')'], ['\[', '\]']] ],
"    \ [ '*.cpp' , [['(', ')'], ['\[', '\]'], ['{', '}']] ],
"    \ [ '*.{html,htm}' , [['(', ')'], ['\[', '\]'], ['{', '}'], ['<\a[^>]*>', '</[^>]*>']] ],
"    \ ]
"
"let g:rainbow_guifgs = ['RoyalBlue3', 'DarkOrange3', 'DarkOrchid3', 'FireBrick']
"let g:rainbow_ctermfgs = ['lightblue', 'lightgreen', 'yellow', 'red', 'magenta']


