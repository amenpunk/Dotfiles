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


nnoremap Y yg$
nnoremap n nzzzv
nnoremap N Nzzzv
nnoremap J mzJ`z

vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv
"
""""" GIT COMANDS """""
"
"" Make <CR> auto-select the first completion item and notify coc.nvim to
" format on enter, <cr> could be remapped by other vim plugin
if has('nvim')
  tnoremap <C-v> <C-\><C-n>
  tnoremap <M-[> <Esc>
  tnoremap <Esc> <Esc>
  "tnoremap <C-v><Esc> <Esc>
endif
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

" Formatting selected code.
xmap <leader>F  <Plug>(coc-format-selected)
nmap <leader>F  <Plug>(coc-format-selected)
augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder.
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Applying codeAction to the selected region.
" Example: `<leader>aap` for current paragraph
"xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap keys for applying codeAction to the current buffer.
nmap <leader>ac  <Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line.
nmap <leader>qf  <Plug>(coc-fix-current)

" Map function and class text objects
" NOTE: Requires 'textDocument.documentSymbol' support from the language server.
xmap if <Plug>(coc-funcobj-i)
omap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap af <Plug>(coc-funcobj-a)
xmap ic <Plug>(coc-classobj-i)
omap ic <Plug>(coc-classobj-i)
xmap ac <Plug>(coc-classobj-a)
omap ac <Plug>(coc-classobj-a)

" Remap <C-f> and <C-b> for scroll float windows/popups.
" Note coc#float#scroll works on neovim >= 0.4.3 or vim >= 8.2.0750
nnoremap <nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
nnoremap <nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
inoremap <nowait><expr> <C-f> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1)\<cr>" : "\<Right>"
inoremap <nowait><expr> <C-b> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0)\<cr>" : "\<Left>"

" NeoVim-only mapping for visual mode scroll
" Useful on signatureHelp after jump placeholder of snippet expansion
if has('nvim')
  vnoremap <nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#nvim_scroll(1, 1) : "\<C-f>"
  vnoremap <nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#nvim_scroll(0, 1) : "\<C-b>"
endif

" Use CTRL-S for selections ranges.
" Requires 'textDocument/selectionRange' support of language server.
nmap <silent> <C-s> <Plug>(coc-range-select)
xmap <silent> <C-s> <Plug>(coc-range-select)

" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocAction('format')

" Add `:Fold` command to fold current buffer.
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" Add `:OR` command for organize imports of the current buffer.
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

" Add (Neo)Vim's native statusline support.
" NOTE: Please see `:h coc-status` for integrations with external that
" provide custom statusline: lightline.vim, vim-airline.
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" Mappings for CoCList
" Show all diagnostics.
nnoremap <silent><nowait> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions.
nnoremap <silent><nowait> <space>e  :<C-u>CocList extensions<cr>
" Show commands.
nnoremap <silent><nowait> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document.
nnoremap <silent><nowait> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols.
nnoremap <silent><nowait> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent><nowait> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent><nowait> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list.
nnoremap <silent><nowait> <space>p  :<C-u>CocListResume<CR>
"
"
"
"
" Magic buffer-picking mode
nnoremap <silent> <C-s> :BufferPick<CR>
" Sort automatically by...
nnoremap <silent> <Space>bd :BufferOrderByDirectory<CR>
nnoremap <silent> <Space>bl :BufferOrderByLanguage<CR>
" Move to previous/next
nnoremap <silent>    <S-h> :BufferPrevious<CR>
nnoremap <silent>    <S-l> :BufferNext<CR>
" Re-order to previous/next
nnoremap <silent>    <A-<> :BufferMovePrevious<CR>
nnoremap <silent>    <A->> :BufferMoveNext<CR>

" Goto buffer in position...
nnoremap <silent>    <A-1> :BufferGoto 1<CR>
nnoremap <silent>    <A-2> :BufferGoto 2<CR>
nnoremap <silent>    <A-3> :BufferGoto 3<CR>
nnoremap <silent>    <A-4> :BufferGoto 4<CR>
nnoremap <silent>    <A-5> :BufferGoto 5<CR>
nnoremap <silent>    <A-6> :BufferGoto 6<CR>
nnoremap <silent>    <A-7> :BufferGoto 7<CR>
nnoremap <silent>    <A-8> :BufferGoto 8<CR>
nnoremap <silent>    <A-9> :BufferLast<CR>
" Close buffer
nnoremap <silent>    <A-0> :BufferClose<CR>
"nnoremap <silent>    <A-c> :BufferClose<CR>
" Wipeout buffer
"                          :BufferWipeout<CR>

nnoremap x "_x
"nnoremap d "_d
"nnoremap D "_D
"vnoremap d "_d

nnoremap <leader>d "_d
"nnoremap <leader>D "D
"vnoremap <leader>d ""d

let mapleader = "\<Space>"

map <C-c> "+y
nnoremap <C-J> <C-W>j
nnoremap <C-K> <C-W>k
nnoremap <C-L> <C-W>l
nnoremap <C-H> <C-W>h
map <C-n> :CHADopen<CR>
map <C-p> :GitFiles<CR>
map <silent> <leader>a <Plug>(easymotion-bd-w)
"nmap <leader>ga :diffget //3<CR>
"nmap <leader>gd :diffget //2<CR>
nmap <leader>gn :GitGutterNextHunk<CR>
"nmap <leader>gs :G <CR>
nmap <leader>t :Buffers<CR>
nmap <leader>b :DBUI<CR>
map <F3> gg=G<C-o><C-o>
nmap <F2> :NERDTreeFind<CR>
nmap <F1> :w<CR>
nmap <leader>w :w!<CR>
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
"tab next config
"noremap <S-l> gt
"noremap <S-h> gT
noremap <leader>q :q!<cr>
noremap <leader>m :Marks<cr>
noremap <leader>l :Lines<cr>
noremap <leader><Enter> :term<cr>
"nnoremap <silent> <Leader>+ :vertical resize +5<CR>
"nnoremap <silent> <Leader>- :vertical resize -5<CR>
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

map <M-h> :vertical resize +5<CR>
map <M-l> :vertical resize -5<CR>
map <M-k> :resize -5<CR>
map <M-j> :resize +5<CR>

imap <C-l> <Plug>(coc-snippets-expand)
xmap <leader>x  <Plug>(coc-convert-snippet)
xmap <leader>v  <Plug>(coc-convert-snippet)
noremap <leader>v gv<CR>

" noremap gV `[v`]

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

set hidden
set updatetime=300
set shortmess+=c
set cmdheight=2
filetype plugin on
hi StartifyHeader  ctermfg=1
"set guitablabel=\[%N\]\ %t\ %M
"set guitablabel=%N/\ %t\ %M
set ma
set splitbelow
set showmatch
set modifiable
set encoding=UTF-8
"set nowrap
set wrap linebreak nolist
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
"set guifont=DroidSansMono\ Nerd\ Font\ 15
"set guifont=Font\ Name:h12
set guifont=Fira\ Code:h12

set wildignore+=*.pyc,*.o,*.obj,*.svn,*.swp,*.class,*.hg,*.DS_Store,*.min.*,node_modules
set rtp+=~/.vim/bundle/Vundle.vim
set noshowmode
set ruler
set laststatus=0
set noshowcmd
set cmdheight=1
syntax on
" Enable folding
set foldmethod=indent
set foldlevel=99
set scrollback=20

""""""""""""""""""""""""""""""""""""""""
" __   __ __ _  _ __  ___ 
" \ \ / // _` || '__|/ __|
"  \ V /| (_| || |   \__ \
"   \_/  \__,_||_|   |___/
"
"vars"""""""""""""""""""""""""""""""""""

" Show blame info below the statusline instead of using virtual text
let g:blameLineUseVirtualText = 0

" Specify the highlight group used for the virtual text ('Comment' by default)
let g:blameLineVirtualTextHighlight = 'Question'

" Change format of virtual text ('%s' by default)
let g:blameLineVirtualTextFormat = '/* %s */'

" Customize format for git blame (Default format: '%an | %ar | %s')
let g:blameLineGitFormat = '%an - %s'
" Refer to 'git-show --format=' man pages for format options)

" Change message when content is not committed
let g:blameLineMessageWhenNotYetCommited = ''

let g:indent_blankline_context_pattern_highlight = {'function': 'Function'}
let g:indent_blankline_context_char = '┃'
let g:indent_blankline_context_highlight_list = []
let g:indent_blankline_buftype_exclude = ['terminal']
let g:indent_blankline_filetype = []
let g:indent_blankline_bufname_exclude = []
let g:indent_blankline_filetype_exclude = []
let g:indent_blankline_space_char_highlight_list = []
let g:indent_blankline_char_highlight_list = []
let g:indent_blankline_context_char_list = ['┃', '║', '╬', '█']
let g:spaceline_seperate_style = 'arrow'
let g:spaceline_colorscheme = 'space'


let g:context_enabled = 0
let g:terminal_scrollback_buffer_size = 20
let g:vim_jsx_pretty_colorful_config = 1 " default 0
let g:indent_blankline_char = '|'
let g:indent_blankline_char_list = ['|', '|','|','|',]
let g:indent_blankline_space_char = ' '
let g:indentLine_char_list = ['|', '|','|','|',]
" Vim
let g:indentLine_color_term = 239

" GVim
"let g:indentLine_color_gui = '#A4E57E'

" none X terminal
let g:indentLine_color_tty_light = 7 " (default: 4)
let g:indentLine_color_dark = 1 " (default: 2)

" Background (Vim, GVim)
let g:indentLine_bgcolor_term = 202
"let g:indentLine_bgcolor_gui = '#FF5F00'
let g:indentLine_concealcursor = 'inc'
let g:indentLine_conceallevel = 2




let bufferline = {}
let bufferline.closable = v:true
let bufferline.animation = v:true
let bufferline.semantic_letters = v:true

" New buffer letters are assigned in this order. This order is
" optimal for the qwerty keyboard layout but might need adjustement
" for other layouts.
let bufferline.letters =
  \ 'asdfjkl;ghnmxcvbziowerutyqpASDFJKLGHNMXCVBZIOWERUTYQP'
" Sets the maximum padding width with which to surround each tab
let bufferline.icons = v:true
let bufferline.maximum_padding = 4
let bufferline.icon_separator_active = '▎'
let bufferline.icon_separator_inactive = '▎'
let bufferline.icon_close_tab = ''
let bufferline.icon_close_tab_modified = '●'
let bufferline.auto_hide = v:true


let g:spaceline_seperate_style = 'arrow'
let g:spaceline_colorscheme = 'space'

let g:startify_relative_path = 1
let g:vim_jsx_pretty_colorful_config = 1 " default 0
let g:jsx_ext_required = 0
"let g:xml_syntax_folding = 1
let g:javascript_plugin_jsdoc = 1
let g:db_ui_save_location = '~/querys'
"let g:minimap_left = 1
let g:minimap_highlight = 'Title'
let g:minimap_width = 20
let g:minimap_auto_start = 0
let g:minimap_base_highlight = 'Normal'
let g:minimap_highlight = 'Title'
let g:minimap_close_filetypes = ['startify', 'netrw', 'vim-plug'] 
let g:minimap_block_buftypes = ['nofile', 'nowrite', 'quickfix', 'terminal', 'prompt']
"hi MinimapCurrentLine ctermfg=Green guifg=#d6004f 
"""hi MinimapCurrentLine ctermfg=Green guifg=#50FA7B guibg=#32302f
"let g:minimap_highlight = 'MinimapCurrentLine'

let g:db_ui_use_nerd_fonts = 1
let g:rehash256 = 1 
let g:NERDTreeGitStatusUpdateOnCursorHold = 1
let g:NERDTreeGitStatusUseNerdFonts = 1 
let g:NERDTreeGitStatusIndicatorMapCustom = {
                \ 'Modified'  :'✹',
                \ 'Staged'    :'✚',
                \ 'Untracked' :'✭',
                \ 'Renamed'   :'➜',
                \ 'Unmerged'  :'═',
                \ 'Deleted'   :'✖',
                \ 'Dirty'     :'✗',
                \ 'Ignored'   :'☒',
                \ 'Clean'     :'✔︎',
                \ 'Unknown'   :'?',
                \ }
let g:airline_powerline_fonts=1
let g:airline_theme='minimalist'
"let g:blade_custom_directives = ['datetime', 'javascript']
highlight! link NERDTreeFlags NERDTreeDir
let g:blade_custom_directives_pairs = {
       \   'markdown': 'endmarkdown',
             \   'cache': 'endcache',
                   \ }

"let g:airline_left_sep = "\ue0c6"
"let g:airline_right_sep = "\ue0c7"
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
"let g:NERDTreeDirArrowExpandable = ''
"let g:NERDTreeDirArrowCollapsible = ''
let NERDTreeMinimalUI = 1
let NERDTreeShowHidden=0
let NERDTreeIgnore=['\.git$', '\.idea$', '\node_modules',  '\.vscode$', '\.history$', '\lib$']
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
let g:javascript_plugin_ngdoc = 1
let g:javascript_plugin_flow = 1
let g:javascript_plugin_flow = 1
let $FZF_DEFAULT_COMMAND = 'ag -g  -i --ignore-case ""'
let g:fzf_preview_window = 'down:50%'
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-i': 'split',
  \ 'ctrl-s': 'vsplit' }

let g:header_ascii = [
            \ ' ⣿⣿⠏⣠⣾⣦⡐⢌⢿⣷⣦⣅⡑⠕⠡⠐⢿⠿⣛⠟⠛⠛⠛⠛⠡⢷⡈⢂⢕⢂ ', 
            \ ' ⠟⣡⣾⣿⣿⣿⣿⣦⣑⠝⢿⣿⣿⣿⣿⣿⡵⢁⣤⣶⣶⣿⢿⢿⢿⡟⢻⣤⢑⢂ ', 
            \ ' ⣾⣿⣿⡿⢟⣛⣻⣿⣿⣿⣦⣬⣙⣻⣿⣿⣷⣿⣿⢟⢝⢕⢕⢕⢕⢽⣿⣿⣷⣔ ', 
            \ ' ⣿⣿⠵⠚⠉⢀⣀⣀⣈⣿⣿⣿⣿⣿⣿⣿⣿⣿⣗⢕⢕⢕⢕⢕⢕⣽⣿⣿⣿⣿ ', 
            \ ' ⢷⣂⣠⣴⣾⡿⡿⡻⡻⣿⣿⣴⣿⣿⣿⣿⣿⣿⣷⣵⣵⣵⣷⣿⣿⣿⣿⣿⣿⡿ ', 
            \ ' ⢌⠻⣿⡿⡫⡪⡪⡪⡪⣺⣿⣿⣿⣿⣿⠿⠿⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠃ ', 
            \ ' ⠣⡁⠹⡪⡪⡪⡪⣪⣾⣿⣿⣿⣿⠋⠐⢉⢍⢄⢌⠻⣿⣿⣿⣿⣿⣿⣿⣿⠏⠈ ', 
            \ ' ⡣⡘⢄⠙⣾⣾⣾⣿⣿⣿⣿⣿⣿⡀⢐⢕⢕⢕⢕⢕⡘⣿⣿⣿⣿⣿⣿⠏⠠⠈ ', 
            \ ' ⠌⢊⢂⢣⠹⣿⣿⣿⣿⣿⣿⣿⣿⣧⢐⢕⢕⢕⢕⢕⢅⣿⣿⣿⣿⡿⢋⢜⠠⠈ ', 
            \ ' ⠄⠁⠕⢝⡢⠈⠻⣿⣿⣿⣿⣿⣿⣿⣷⣕⣑⣑⣑⣵⣿⣿⣿⡿⢋⢔⢕⣿⠠⠈ ',
            \]

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



"let g:header_ascii = [
"            \ '    g@@@@@@@@@@@@@@@@@@@@@@@@b_             ',
"            \ '   0@@@@@@@@@@@@@@@@@@@@@@@@@@@k            ',
"            \ '   0@@@@@@@@@@@@@^^#@@@@@@@@@@@@L           ',
"            \ '    #@@@@@@@@@@"   J@@@@@@@@@@@@@           ',
"            \ '                  J@@@@@@@@@@@@@@b          ',
"            \ '                 d@@@@@##@@@@@@@@@L         ',
"            \ '                d@@@@#   ^@@@@@@@@Q         ',
"            \ '               d@@@@@@r    #@@@@@@@[        ',
"            \ '              d@@@@@@@[     #@@@@@@@r       ',
"            \ '             0@@@@@@@P       0@@@@@@%       ',
"            \ '            0@@@@P            0@@@@@@L      ',
"            \ '           0@@@@^              0@@@@@@      ',
"            \ '          #@@@F                 0@@@@@b     ',
"            \ '         1@@@^                   `@@@@@L    ',
"            \ '                                  ^@@@@@    ',
"            \ '                                   ^@@@@[   ',
"            \ '                                     ##P    ',
"            \ ]

let g:fzf_layout = { 'left': '~50%' }
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


let g:startify_lists = [
        "\ { 'type': 'files',     'header': ['   Files']            },
        \ { 'type': 'dir',       'header': ['   Current Directory '. getcwd()] },
        \ { 'type': 'bookmarks', 'header': ['   Bookmarks']      },
        \ { 'type': 'commands',  'header': ['   Commands']       },
        \ { 'type': 'sessions',  'header': ['   Sessions']       },
        \ ]


let g:startify_bookmarks = [
            \ {'a' : '/var/www/ClienteMaster'}, 
            \ {'v': '~/.vimrc'},
            \]   

let g:startify_custom_header = (g:header_ascii)
"let g:NERDTreeFileExtensionHighlightFullName = 1
let g:WebDevIconsDisableDefaultFolderSymbolColorFromNERDTreeDir = 1
let g:WebDevIconsDisableDefaultFileSymbolColorFromNERDTreeFile = 1
let g:NERDTreeHighlightCursorline = 0
let g:NERDTreeHighlightFolders = 1 " enables folder icon highlighting using exact match
let g:NERDTreeHighlightFoldersFullName = 1 " highlights the folder name


let g:dbs = { }

let g:db_ui_winwidth = 30
let g:db_ui_icons = {
    \ 'expanded': '▾',
    \ 'collapsed': '▸',
    \ 'saved_query': '*',
    \ 'new_query': '+',
    \ 'tables': '~',
    \ 'buffers': '»',
    \ 'connection_ok': '✓',
    \ 'connection_error': '✕',
    \ }


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

Plugin 'tveskag/nvim-blame-line'
Plugin 'sbdchd/neoformat'
Plugin 'romgrk/todoist.nvim', { 'do': ':TodoistInstall' }
Plugin 'maxmellon/vim-jsx-pretty'
Plugin 'nvim-lua/plenary.nvim'
Plugin 'lewis6991/gitsigns.nvim'
Plugin 'kaicataldo/material.vim', { 'branch': 'main' }
Plugin 'ms-jpq/chadtree', {'branch': 'chad', 'do': 'python3 -m chadtree deps'}
Plugin 'tpope/vim-commentary'
Plugin 'airblade/vim-gitgutter'
Plugin 'captbaritone/better-indent-support-for-php-with-html'
Plugin 'mxw/vim-jsx'
Plugin 'romgrk/barbar.nvim'
Plugin 'kyazdani42/nvim-web-devicons'
Plugin 'neoclide/coc.nvim', {'branch': 'release'}
Plugin 'pangloss/vim-javascript'
Plugin 'tpope/vim-dadbod'
Plugin 'kristijanhusak/vim-dadbod-ui'
Plugin 'easymotion/vim-easymotion'
Plugin 'ryanoasis/vim-webdevicons'
Plugin 'gko/vim-coloresque'
Plugin 'tpope/vim-surround'
Plugin 'ryanoasis/vim-devicons'
Plugin 'gmarik/Vundle.vim'
Plugin 'alvan/vim-closetag'
Plugin 'lukas-reineke/indent-blankline.nvim'
Plugin 'junegunn/fzf.vim'
Plugin 'jiangmiao/auto-pairs'
Plugin 'mhinz/vim-startify'
Plugin 'kshenoy/vim-signature'
Plugin 'tpope/vim-fugitive'
"Plugin 'vim-airline/vim-airline'
"Plugin 'vim-airline/vim-airline-themes'
"Plugin 'wellle/context.vim'
"Plugin 'NLKNguyen/papercolor-theme'
"Plugin 'dylanaraps/wal.vim'
"Plugin 'fxn/vim-monochrome'
"Plugin 'jcherven/jummidark.vim'
"Plugin 'patstockwell/vim-monokai-tasty'
"Plugin 'srcery-colors/srcery-vim'
"Plugin 'wfxr/minimap.vim', {'do': ':!cargo install --locked code-minimap'}
"Plugin 'maxmellon/vim-jsx-pretty'
"Plugin 'sjl/badwolf'
"Plugin 'vim-syntastic/syntastic'
"Plugin 'nvie/vim-flake8'
"Plugin 'vim-scripts/indentpython.vim'
"Plugin 'NLKNguyen/papercolor-theme'
"Plugin 'terryma/vim-multiple-cursors'

call vundle#end()            " required

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

let $TERM="xst-256color"
set termguicolors
let $NVIM_TUI_ENABLE_TRUE_COLOR=1
set t_Co=256   " This is may or may not needed.

let g:vim_monokai_tasty_italic=1
let g:molokai_original = 1
let g:rehash256 = 1


inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

""" custom config for nerd tree 
hi NERDTreeCWD                        ctermfg=233     ctermbg=233     cterm=NONE          guifg=#f8f8f2     guibg=#252525     gui=NONE
hi NERDTreeDirSlash                   ctermfg=233     ctermbg=233     cterm=NONE          guifg=#f8f8f2     guibg=#252525     gui=NONE


autocmd FileType php setlocal makeprg=zca\ %<.php                               
autocmd FileType php setlocal errorformat=%f(line\ %l):\ %m
command! -bang -nargs=* Rg call fzf#vim#grep("rg --column --line-number --no-heading --color=always --smart-case ".shellescape(<q-args>), 1, {'options': '--delimiter : --nth 4..'}, <bang>0)
"command! -bang -nargs=* Ag call fzf#vim#ag(<q-args>, {'options': '--delimiter : --nth 4..'}, <bang>0)

set t_Co=256   " This is may or may not needed.
set background=dark
"colorscheme vim-monokai-tasty
"colorscheme jummidark
"colorscheme srcery
"colorscheme PaperColor
"colorscheme monochrome
"colorscheme wal
"colorscheme monokai2


if (has('nvim'))
  let $NVIM_TUI_ENABLE_TRUE_COLOR = 1
endif

if (has('termguicolors'))
  set termguicolors
endif

"let g:material_theme_style = 'default' | 'palenight' | 'ocean' | 'lighter' | 'darker' | 'default-community' | 'palenight-community' | 'ocean-community' | 'lighter-community' | 'darker-community'
let g:material_terminal_italics = 1
let g:material_theme_style = 'darker'
colorscheme material
