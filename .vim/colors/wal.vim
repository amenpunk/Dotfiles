" wal.vim -- Vim color scheme.
" Author:       Dylan Araps
" Webpage:      https://github.com/dylanaraps/wal
" Description:  A colorscheme that uses your terminal colors, made to work with 'wal'.

hi clear
set background=dark

if exists('syntax_on')
    syntax reset
endif

" Colorscheme name
let g:colors_name = 'wal'

" highlight groups {{{

set t_Co=16
hi javascriptOpSymbol guifg=#f43753 ctermfg=6 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
"#"hi javascriptDocNotation guifg=#6a6b3f ctermfg=242 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
"#"hi javascriptDocNamedParamType guifg=#44778d ctermfg=66 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
"#"hi javascriptDocParamName guifg=#715b2f ctermfg=58 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
"#"hi javascriptDocParamType guifg=#44778d ctermfg=66 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
"#"hi javascriptTemplateSB guifg=#f43753 ctermfg=203 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
"#"hi javascriptRepeat guifg=#c9d05c ctermfg=185 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
"#"hi javascriptObjectLabelColon guifg=#f43753 ctermfg=203 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
"#"hi javascriptObjectMethodName guifg=#c9d05c ctermfg=185 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
"hi javascriptFuncName guifg=#18542c ctermfg=185 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
"#"hi jsParensIfElse guifg=#b3deef ctermfg=153 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
"#"hi jsObjectKey guifg=#b3deef ctermfg=153 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
"#"hi jsArrowFunction guifg=#9faa00 ctermfg=142 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
"#"hi jsFunctionKey guifg=#c9d05c ctermfg=185 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
"#"hi jsFuncName guifg=#c9d05c ctermfg=185 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
"#"hi jsObjectFuncName guifg=#c9d05c ctermfg=185 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
"#"hi jsNull guifg=#ffc24b ctermfg=215 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
"#"hi jsObjectColon guifg=#f43753 ctermfg=203 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
"#"hi jsParens guifg=#b3deef ctermfg=153 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
"#"hi jsFuncParens guifg=#b3deef ctermfg=153 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
"#"hi jsFuncArgs guifg=#ffc24b ctermfg=215 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
"#"hi jsSpecial guifg=#ffc24b ctermfg=215 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
"#"hi jsTemplateBraces guifg=#f43753 ctermfg=203 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
"#"hi jsGlobalObjects guifg=#73cef4 ctermfg=81 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
"#"hi jsGlobalNodeObjects guifg=#b3deef ctermfg=153 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
"#"hi jsImport guifg=#73cef4 ctermfg=81 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
"#"hi jsExport guifg=#73cef4 ctermfg=81 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
"#"hi jsExportDefault guifg=#c9d05c ctermfg=185 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
"#"hi jsExportDefaultGroup guifg=#73cef4 ctermfg=81 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
"#"hi jsFrom guifg=#73cef4 ctermfg=81 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
"#"hi javaScriptOpSymbols guifg=#f43753 ctermfg=203 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
"#"hi javaScriptParens guifg=#b3deef ctermfg=153 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
"#"hi javaScriptDocTags guifg=#6a6b3f ctermfg=242 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
"#"hi javaScriptDocSeeTag guifg=#44778d ctermfg=66 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
"#"hi javaScriptBrowserObjects guifg=#73cef4 ctermfg=81 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
"#"hi javaScriptDOMObjects guifg=#73cef4 ctermfg=81 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
"#"hi javaScriptFuncArg guifg=#ffc24b ctermfg=215 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
"#"hi jsParensIfElse guifg=#b3deef ctermfg=153 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
"

hi ColorColumn guifg=NONE ctermfg=NONE guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi CursorColumn guifg=NONE ctermfg=NONE guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi CursorLine guifg=NONE ctermfg=NONE guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi CursorLineNr guifg=#73cef4 ctermfg=81 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Directory guifg=#b3deef ctermfg=153 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE


hi NERDTreeCWD ctermbg=16 ctermfg=16
hi Normal ctermbg=NONE ctermfg=7
hi NonText ctermbg=NONE ctermfg=0
hi Comment ctermbg=NONE ctermfg=8
hi Conceal ctermbg=NONE
hi Constant ctermbg=NONE ctermfg=3
hi Error ctermbg=1 ctermfg=7
hi Identifier ctermbg=NONE ctermfg=1 cterm=BOLD
hi Ignore ctermbg=8 ctermfg=0
hi PreProc ctermbg=NONE ctermfg=3
hi Special ctermbg=NONE ctermfg=6
hi Statement ctermbg=NONE ctermfg=1
hi String ctermbg=NONE ctermfg=2
hi Number ctermbg=NONE ctermfg=3
hi Todo ctermbg=2 ctermfg=0
hi Type ctermbg=NONE ctermfg=3
hi Underlined ctermbg=NONE ctermfg=8 cterm=underline

hi StatusLine ctermbg=0 ctermfg=0
hi StatusLineNC ctermbg=0 ctermfg=0

hi TabLine ctermbg=0 ctermfg=8
hi TabLineFill ctermbg=NONE ctermfg=0
hi TabLineSel ctermbg=0 ctermfg=5
hi TermCursorNC ctermbg=3 ctermfg=0
hi VertSplit ctermbg=8 ctermfg=0
hi Title ctermbg=NONE ctermfg=0
hi CursorLine ctermbg=0 ctermfg=NONE
hi LineNr ctermbg=NONE ctermfg=8
hi CursorLineNr ctermbg=NONE ctermfg=0
hi helpLeadBlank ctermbg=NONE ctermfg=0
hi helpNormal ctermbg=NONE ctermfg=0
hi Visual ctermbg=0 ctermfg=NONE cterm=reverse term=reverse
hi VisualNOS ctermbg=NONE ctermfg=NONE
hi Pmenu ctermbg=0 ctermfg=7
hi PmenuSbar ctermbg=6 ctermfg=7
hi PmenuSel ctermbg=4 ctermfg=0
hi PmenuThumb ctermbg=8 ctermfg=8
hi FoldColumn ctermbg=NONE ctermfg=7
hi Folded ctermbg=NONE ctermfg=8
hi WildMenu ctermbg=2 ctermfg=0
hi SpecialKey ctermbg=NONE ctermfg=8
hi DiffAdd ctermbg=NONE ctermfg=2
hi DiffChange ctermbg=NONE ctermfg=8
hi DiffDelete ctermbg=NONE ctermfg=1
hi DiffText ctermbg=NONE ctermfg=4
hi IncSearch ctermbg=0 ctermfg=6
hi Search ctermbg=3 ctermfg=0
hi Directory ctermbg=NONE ctermfg=8
hi MatchParen ctermbg=1 ctermfg=8
hi ColorColumn ctermbg=4 ctermfg=0
hi signColumn ctermbg=NONE ctermfg=4
hi ErrorMsg ctermbg=NONE ctermfg=8
hi ModeMsg ctermbg=NONE ctermfg=2
hi MoreMsg ctermbg=NONE ctermfg=2
hi Question ctermbg=NONE ctermfg=4
hi WarningMsg ctermbg=1 ctermfg=0
hi Cursor ctermbg=NONE ctermfg=8
hi Structure ctermbg=NONE ctermfg=5
hi CursorColumn ctermbg=8 ctermfg=8
hi ModeMsg ctermbg=NONE ctermfg=7
hi SpellBad ctermbg=NONE ctermfg=1 cterm=underline
hi SpellCap ctermbg=NONE ctermfg=4 cterm=underline
hi SpellLocal ctermbg=NONE ctermfg=5 cterm=underline
hi SpellRare ctermbg=NONE ctermfg=6 cterm=underline
hi Boolean ctermbg=NONE ctermfg=5
hi Character ctermbg=NONE ctermfg=1
hi Conditional ctermbg=NONE ctermfg=5
hi Define ctermbg=NONE ctermfg=5
hi Delimiter ctermbg=NONE ctermfg=5
hi Float ctermbg=NONE ctermfg=5
hi Include ctermbg=NONE ctermfg=4
hi Keyword ctermbg=NONE ctermfg=5
hi Label ctermbg=NONE ctermfg=3
hi Operator ctermbg=NONE ctermfg=7
hi Repeat ctermbg=NONE ctermfg=3
hi SpecialChar ctermbg=NONE ctermfg=5
hi Tag ctermbg=NONE ctermfg=3
hi Typedef ctermbg=NONE ctermfg=3
hi vimUserCommand ctermbg=NONE ctermfg=1 cterm=BOLD
    hi link vimMap vimUserCommand
    hi link vimLet vimUserCommand
    hi link vimCommand vimUserCommand
    hi link vimFTCmd vimUserCommand
    hi link vimAutoCmd vimUserCommand
    hi link vimNotFunc vimUserCommand
hi vimNotation ctermbg=NONE ctermfg=4
hi vimMapModKey ctermbg=NONE ctermfg=4
hi vimBracket ctermbg=NONE ctermfg=7
hi vimCommentString ctermbg=NONE ctermfg=8
hi htmlLink ctermbg=NONE ctermfg=1 cterm=underline
hi htmlBold ctermbg=NONE ctermfg=3 cterm=BOLD
hi htmlItalic ctermbg=NONE ctermfg=5
hi htmlEndTag ctermbg=NONE ctermfg=7
hi htmlTag ctermbg=NONE ctermfg=7
hi htmlTagName ctermbg=NONE ctermfg=1 cterm=BOLD
hi htmlH1 ctermbg=NONE ctermfg=7
    hi link htmlH2 htmlH1
    hi link htmlH3 htmlH1
    hi link htmlH4 htmlH1
    hi link htmlH5 htmlH1
    hi link htmlH6 htmlH1
hi cssMultiColumnAttr ctermbg=NONE ctermfg=2
    hi link cssFontAttr cssMultiColumnAttr
    hi link cssFlexibleBoxAttr cssMultiColumnAttr
hi cssBraces ctermbg=NONE ctermfg=7
    hi link cssAttrComma cssBraces
hi cssValueLength ctermbg=NONE ctermfg=7
hi cssUnitDecorators ctermbg=NONE ctermfg=7
hi cssValueNumber ctermbg=NONE ctermfg=7
    hi link cssValueLength cssValueNumber
hi cssNoise ctermbg=NONE ctermfg=8
hi cssTagName ctermbg=NONE ctermfg=1
hi cssFunctionName ctermbg=NONE ctermfg=4
hi scssSelectorChar ctermbg=NONE ctermfg=7
hi scssAttribute ctermbg=NONE ctermfg=7
    hi link scssDefinition cssNoise
hi sassidChar ctermbg=NONE ctermfg=1
hi sassClassChar ctermbg=NONE ctermfg=5
hi sassInclude ctermbg=NONE ctermfg=5
hi sassMixing ctermbg=NONE ctermfg=5
hi sassMixinName ctermbg=NONE ctermfg=4
hi javaScript ctermbg=NONE ctermfg=6
hi javaScriptBraces ctermbg=NONE ctermfg=7
hi javaScriptNumber ctermbg=NONE ctermfg=5
hi markdownH1 ctermbg=NONE ctermfg=7
    hi link markdownH2 markdownH1
    hi link markdownH3 markdownH1
    hi link markdownH4 markdownH1
    hi link markdownH5 markdownH1
    hi link markdownH6 markdownH1
hi markdownAutomaticLink ctermbg=NONE ctermfg=2 cterm=underline
    hi link markdownUrl markdownAutomaticLink
hi markdownError ctermbg=NONE ctermfg=7
hi markdownCode ctermbg=NONE ctermfg=3
hi markdownCodeBlock ctermbg=NONE ctermfg=3
hi markdownCodeDelimiter ctermbg=NONE ctermfg=5
hi markdownItalic cterm=Italic
hi markdownBold cterm=Bold
hi xdefaultsValue ctermbg=NONE ctermfg=7
hi rubyInclude ctermbg=NONE ctermfg=4
hi rubyDefine ctermbg=NONE ctermfg=5
hi rubyFunction ctermbg=NONE ctermfg=4
hi rubyStringDelimiter ctermbg=NONE ctermfg=2
hi rubyInteger ctermbg=NONE ctermfg=3
hi rubyAttribute ctermbg=NONE ctermfg=4
hi rubyConstant ctermbg=NONE ctermfg=3
hi rubyInterpolation ctermbg=NONE ctermfg=2
hi rubyInterpolationDelimiter ctermbg=NONE ctermfg=3
hi rubyRegexp ctermbg=NONE ctermfg=6
hi rubySymbol ctermbg=NONE ctermfg=2
hi rubyTodo ctermbg=NONE ctermfg=8
hi rubyRegexpAnchor ctermbg=NONE ctermfg=7
    hi link rubyRegexpQuantifier rubyRegexpAnchor
hi pythonOperator ctermbg=NONE ctermfg=5
hi pythonFunction ctermbg=NONE ctermfg=4
hi pythonRepeat ctermbg=NONE ctermfg=5
hi pythonStatement ctermbg=NONE ctermfg=1 cterm=Bold
hi pythonBuiltIn ctermbg=NONE ctermfg=4
hi phpMemberSelector ctermbg=NONE ctermfg=7
hi phpComparison ctermbg=NONE ctermfg=7
hi phpParent ctermbg=NONE ctermfg=7
hi cOperator ctermbg=NONE ctermfg=6
hi cPreCondit ctermbg=NONE ctermfg=5
hi SignifySignAdd ctermbg=NONE ctermfg=2
hi SignifySignChange ctermbg=NONE ctermfg=4
hi SignifySignDelete ctermbg=NONE ctermfg=1
hi NERDTreeDirSlash ctermbg=NONE ctermfg=16
hi NERDTreeExecFile ctermbg=NONE ctermfg=NONE
hi ALEErrorSign ctermbg=NONE ctermfg=1
hi ALEWarningSign ctermbg=NONE ctermfg=3
hi ALEError ctermbg=NONE ctermfg=1
hi ALEWarning ctermbg=NONE ctermfg=3

hi Directory guifg=NONE ctermfg=white
" }}}

" Plugin options {{{

let g:limelight_conceal_ctermfg = 8

" }}}
