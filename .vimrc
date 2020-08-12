"                                        
"    ##############..... ##############  
"    ##############......##############  
"      ##########..........##########    
"      ##########........##########      
"      ##########.......##########       
"      ##########.....##########..       
"      ##########....##########.....     
"    ..##########..##########.........   
"  ....##########.#########............. 
"    ..################JJJ............   
"      ################.............     
"      ##############.JJJ.JJJJJJJJJJ     
"      ############...JJ...JJ..JJ  JJ    
"      ##########....JJ...JJ..JJ  JJ     
"      ########......JJJ..JJJ JJJ JJJ    
"      ######    .........               
"                  .....                 
"                    .                   
"      
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" |  _ \  ___  _ __ ___    __ _  _ __   ___ 
" | |_) |/ _ \| '_ ` _ \  / _` || '_ \ / __|
" |  _ <|  __/| | | | | || (_| || |_) |\__ \
" |_| \_\\___||_| |_| |_| \__,_|| .__/ |___/
"                               |_|         
"Remamps""""""""""""""""""""""""""""""""""""""""""""""""""""
"nnoremap x "_x
"nnoremap d "_d
"nnoremap D "_D
"vnoremap d "_d

nnoremap <leader>d "_d
"nnoremap <leader>D "D
"vnoremap <leader>d ""d

let mapleader = "\<Space>"
map <C-c> "+y
map <leader>h :wincmd h<CR>
map <leader>j :wincmd j<CR>
map <leader>k :wincmd k<CR>
map <leader>l :wincmd l<CR>
map <C-n> :call ToggleNERDTree()<CR>
map <C-p> :GitFiles<CR>
map <silent> <leader>w <Plug>(easymotion-bd-w)
nmap <leader>ga :diffget //3<CR>
nmap <leader>gd :diffget //2<CR>
nmap <leader>gs :G <CR>

nmap <F2> :NERDTreeFind<CR>
nmap <F1> :w<CR>
"nmap <leader>w :w<CR>
noremap <leader>f :Rg<CR>
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
noremap <S-l> gt
noremap <S-h> gT
noremap <leader>q :q<cr>
noremap <leader>m :Marks<cr>
"noremap <leader>l :Lines<cr>
noremap <leader><Enter> :term<cr>
nnoremap <silent> <Leader>+ :vertical resize +5<CR>
nnoremap <silent> <Leader>- :vertical resize -5<CR>
vnoremap <silent> <F1> <C-C>:update<CR>
inoremap <silent> <F1> <C-O>:update<CR>
noremap <silent> <F2>  :NERDTreeFind<CR>
vnoremap <silent> <F2> <C-C>:NERDTreeFind<CR>
inoremap <silent> <F2> <C-O>:NERDTreeFind<CR>
nnoremap <C-e> 7<C-e>
nnoremap <C-y> 7<C-y>
nmap <leader>ga :diffget //3<CR>
nmap <leader>gd :diffget //2<CR>
nmap <leader>gs :G <CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                      __  _        
"                     / _|(_)       
"   ___  ___   _ __  | |_  _   __ _ 
"  / __|/ _ \ | '_ \ |  _|| | / _` |
" | (__| (_) || | | || |  | || (_| |
"  \___|\___/ |_| |_||_|  |_| \__, |
"                              __/ |
"                             |___/ 
"config"""""""""""""""""""""""""""""""""""""""""""""""""""""
filetype plugin on
hi StartifyHeader  ctermfg=1
set guitablabel=%t
set ma
set splitbelow
set showmatch
set modifiable
set encoding=UTF-8
set nowrap
set t_Co=256
syntax enable
set incsearch
"set smartcase
set autoindent
set background=dark
set relativenumber
set ts=4
set smartindent   
set autoindent
set expandtab
set shiftwidth=4
set ignorecase
set winwidth=110
set number
set nobackup
set noswapfile
set guifont=DroidSansMono\ Nerd\ Font\ 15
set wildignore+=*.pyc,*.o,*.obj,*.svn,*.swp,*.class,*.hg,*.DS_Store,*.min.*,node_modules
set rtp+=~/.vim/bundle/Vundle.vim
set noshowmode
set ruler
set laststatus=0
set noshowcmd
set cmdheight=1
syntax on
hi StartifyHeader  ctermfg=4
" hi StartifyBracket ctermfg=4
" hi StartifyFile    ctermfg=3
" hi StartifyFooter  ctermfg=4
" hi StartifyNumber  ctermfg=3
" hi StartifyPath    ctermfg=4
" hi StartifySlash   ctermfg=3
" hi StartifySpecial ctermfg=3

""""""""""""""""""""""""""""""""""""""""
" __   __ __ _  _ __  ___ 
" \ \ / // _` || '__|/ __|
"  \ V /| (_| || |   \__ \
"   \_/  \__,_||_|   |___/
"
"vars"""""""""""""""""""""""""""""""""""
"colorscheme molokai
colorscheme monokai2
let g:airline_powerline_fonts=1
let g:airline_theme='minimalist'
let g:blade_custom_directives = ['datetime', 'javascript']
highlight! link NERDTreeFlags NERDTreeDir
let g:blade_custom_directives_pairs = {
       \   'markdown': 'endmarkdown',
             \   'cache': 'endcache',
                   \ }

let g:airline_left_sep = "\ue0c6"
let g:airline_right_sep = "\ue0c7"
let g:fzf_history_dir = '~/.local/share/fzf-history'
let g:webdevicons_enable = 1
let g:webdevicons_enable_nerdtree = 1
let g:webdevicons_conceal_nerdtree_brackets = 1
let g:codi#width = 50.0
let python_highlight_all = 1
let g:ycm_goto_buffer_command = 'new-tab'
let g:prettier#quickfix_enabled = 0
let g:prettier#config#tab_width = '4'
let g:prettier#exec_cmd_async = 0
let g:prettier#config#tab_width = 4
let g:vim_jsx_pretty_highlight_close_tag = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'
let $NVIM_TUI_ENABLE_TRUE_COLOR=1
let g:webdevicons_enable_nerdtree = 1
let g:WebDevIconsOS = 'Darwin'
let g:webdevicons_enable_vimfiler = 1
let g:webdevicons_conceal_nerdtree_brackets = 1
let g:WebDevIconsUnicodeDecorateFolderNodes = 1
let g:DevIconsEnableFoldersOpenClose = 1
let g:DevIconsEnableFolderExtensionPatternMatching = 1
let g:rehash256 = 1
let python_highlight_all = 1
let g:NERDTreeWinSize=5
let g:NERDTreeMinimalUI = 1
"let g:NERDTreeShowHidden = 1
let g:NERDTreeShowLineNumbers = 0
let g:NERDTreeCascadeSingleChildDir = 0
"let g:NERDTreeDirArrowExpandable = "•"
"let g:NERDTreeDirArrowCollapsible = "•"
let g:NERDTreeWinSize = 31
let g:NERDTreeDirArrowExpandable = ''
let g:NERDTreeDirArrowCollapsible = ''
let NERDTreeMinimalUI = 1
let NERDTreeShowHidden=0
let NERDTreeIgnore=['\.git$', '\.idea$', '\node_modules',  '\.vscode$', '\.history$']
let NERDTreeRespectWildIgnore=1
let g:indentLine_char = '|'
let g:airline#extensions#tabline#enabled = 0
let g:airline#extensions#tabline#buffer_nr_show = 0
let g:multi_cursor_use_default_mapping=0
let g:multi_cursor_start_word_key      = '<C-u>'
let g:multi_cursor_select_all_word_key = '<A-n>'
let g:multi_cursor_start_key           = 'g<C-n>'
let g:multi_cursor_select_all_key      = 'g<A-n>'
let g:multi_cursor_next_key            = '<C-n>'
let g:multi_cursor_prev_key            = '<C-p>'
let g:multi_cursor_skip_key            = '<C-x>'
let g:multi_cursor_quit_key            = '<Esc>'
let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_ngdoc = 1
let g:javascript_plugin_flow = 1
let $FZF_DEFAULT_COMMAND = 'ag -g ""'
let g:fzf_preview_window = 'right:60%'
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-i': 'split',
  \ 'ctrl-s': 'vsplit' }

let g:header_ascii = [
            \ ' =================     ===============     ===============   ========  ======== ',
            \ ' \\ . . . . . . .\\   //. . . . . . .\\   //. . . . . . .\\  \\. . .\\// . . // ',
            \ ' ||. . ._____. . .|| ||. . ._____. . .|| ||. . ._____. . .|| || . . .\/ . . .|| ',
            \ ' || . .||   ||. . || || . .||   ||. . || || . .||   ||. . || ||. . . . . . . || ',
            \ ' ||. . ||   || . .|| ||. . ||   || . .|| ||. . ||   || . .|| || . | . . . . .|| ',
            \ ' || . .||   ||. _-|| ||-_ .||   ||. . || || . .||   ||. _-|| ||-_.|\ . . . . || ',
            \ ' ||. . ||   ||-''  || ||  `-||   || . .|| ||. . ||   ||-''  || ||  `|\_ . .|. .|| ',
            \ ' || . _||   ||    || ||    ||   ||_ . || || . _||   ||    || ||   |\ `-_/| . || ',
            \ ' ||_-'' ||  .|/    || ||    \|.  || `-_|| ||_-'' ||  .|/    || ||   | \  / |-_.|| ',
            \ ' ||    ||_-''      || ||      `-_||    || ||    ||_-''      || ||   | \  / |  `|| ',
            \ ' ||    `''         || ||         `''    || ||    `''         || ||   | \  / |   || ',
            \ ' ||            .==='' `===.         .===''.`===.         .==='' /==. |  \/  |   || ',
            \ ' ||         .==''   \_|-_ `===. .===''   _|_   `===. .==='' _-|/   `==  \/  |   || ',
            \ ' ||      .==''    _-''    `-_  `=''    _-''   `-_    `=''  _-''   `-_  /|  \/  |   || ',
            \ ' ||   .==''    _-''          `-__\._-''         `-_./__-''         `'' |. /|  |   || ',
            \ ' ||.==''    _-''                                                     `'' |  /==.|| ',
            \ ' ==''    _-''                                                            \/   `== ',
            \ ' \   _-''                                                                `-_   / ',
            \ '  `''                                                                      ``''  ',      
            \ ]
let g:fzf_layout = { 'down': '~20%' }
let g:vim_jsx_pretty_colorful_config = 1 " default 0
let g:javascript_plugin_ngdoc = 1
hi StartifyHeader  ctermfg=1
let g:javascript_plugin_flow = 1
let g:lightline = {
      \ 'colorscheme': 'deus',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'FugitiveHead'
      \ },
      \ }

let g:startify_bookmarks = [{'y' : '~/YOKO/Firebase-BE/functions/endpoints.js'}, {'a': '~/YOKO/API_TEST/endpoints.js'}]   
let g:startify_custom_header = (g:header_ascii)
"let g:NERDTreeFileExtensionHighlightFullName = 1
let g:WebDevIconsDisableDefaultFolderSymbolColorFromNERDTreeDir = 1
let g:WebDevIconsDisableDefaultFileSymbolColorFromNERDTreeFile = 1
let g:NERDTreeHighlightCursorline = 0
let g:NERDTreeHighlightFolders = 1 " enables folder icon highlighting using exact match
let g:NERDTreeHighlightFoldersFullName = 1 " highlights the folder name


""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"  _____   _                _             
" |  __ \ | |              (_)            
" | |__) || | _   _   __ _  _  _ __   ___ 
" |  ___/ | || | | | / _` || || '_ \ / __|
" | |     | || |_| || (_| || || | | |\__ \
" |_|     |_| \__,_| \__, ||_||_| |_||___/
"                     __/ |               
"                    |___/                
"
"Plugins""""""""""""""""""""""""""""""""""""""""""""""""

call vundle#begin()
"Plugin 'vim-airline/vim-airline'
"Plugin 'vim-airline/vim-airline-themes'
"Plugin 'chrisbra/vim-commentary'
Plugin 'easymotion/vim-easymotion'
"Plugin 'airblade/vim-gitgutter'
Plugin 'tiagofumo/vim-nerdtree-syntax-highlight'
Plugin 'ryanoasis/vim-webdevicons'
Plugin 'gko/vim-coloresque'
Plugin 'tpope/vim-surround'
Plugin 'ryanoasis/vim-devicons'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'gmarik/Vundle.vim'
Plugin 'prabirshrestha/asyncomplete.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'Valloric/YouCompleteMe'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'alvan/vim-closetag'
Plugin 'Yggdroot/indentLine'
Plugin 'maxmellon/vim-jsx-pretty'
Plugin 'junegunn/fzf.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'preservim/nerdcommenter'
Plugin 'leafgarland/typescript-vim'
Plugin 'jiangmiao/auto-pairs'
Plugin 'mhinz/vim-startify'
Plugin 'pangloss/vim-javascript'
Plugin 'prettier/vim-prettier', {
  \ 'do': 'yarn install',
  \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'yaml', 'html'] }
call vundle#end()            " required
"filetype plugin indent on    " required
"filetype on                  " required

"""""""""""""""""""""""""""""""""""""""""
"  ______        _               
" |  ____|      | |              
" | |__   __  __| |_  _ __  __ _ 
" |  __|  \ \/ /| __|| '__|/ _` |
" | |____  >  < | |_ | |  | (_| |
" |______|/_/\_\ \__||_|   \__,_|
"                                
"
"Extras""""""""""""""""""""""""""""""""""
function! ToggleNERDTree()
    NERDTreeToggle
    silent NERDTreeMirror
endfunction

fun! GoYCM()
nnoremap <buffer> <silent> <leader>gd :YcmCompleter GoTo<CR>
nnoremap <buffer> <silent> <leader>gr :YcmCompleter GoToReferences<CR>
nnoremap <buffer> <silent> <leader>rr :YcmCompleter RefactorRename<space>
endfun
autocmd FileType javascript :call GoYCM()

