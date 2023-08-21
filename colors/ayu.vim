" Initialisation: {{{

hi clear
if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "ayu"
let s:ayu_sign_contrast = get(g:, 'ayu_sign_contrast', 0)
let s:ayu_italic_comment = get(g:, 'ayu_italic_comment', 0)

let s:sign_bg = s:ayu_sign_contrast ? 'ui_bg' : ''

"}}}

" Vim Highlighting: (see :help highlight-groups) {{{

call ayu#hi('Normal', 'editor_fg', 'editor_bg')
call ayu#hi('ColorColumn', '', 'editor_line')
call ayu#hi('CursorColumn', '', 'editor_line')
call ayu#hi('CursorLine', '', 'editor_line')
call ayu#hi('CursorLineNr', 'common_accent', 'editor_line')
call ayu#hi('LineNr', 'editor_gutter_normal', '')
call ayu#hi('Directory', 'syntax_func', '')
call ayu#hi('ErrorMsg', 'editor_fg', 'common_error', 'standout')
call ayu#hi('VertSplit', 'ui_panel_bg', 'ui_panel_bg')
call ayu#hi('Folded', 'extended_fg_idle', 'ui_bg')
hi! FoldColumn NONE
hi! SignColumn NONE
call ayu#hi('FoldColumn', '', s:sign_bg)
call ayu#hi('SignColumn', '', s:sign_bg)

call ayu#hi('MatchParen', 'editor_fg', 'editor_bg', 'underline')
call ayu#hi('ModeMsg', 'syntax_string', '')
call ayu#hi('MoreMsg', 'syntax_string', '')
call ayu#hi('NonText', 'editor_gutter_normal', '')
call ayu#hi('Pmenu', 'editor_fg', 'ui_bg')
call ayu#hi('PmenuSel', '', 'ui_selection_active')
call ayu#hi('Question', 'syntax_string', '')
call ayu#hi('Search', '', 'editor_findMatch_inactive')
call ayu#hi('Include', 'extended_namespace', '', 'bold')
call ayu#hi('IncSearch', '', 'editor_findMatch_active')
call ayu#hi('SpecialKey', 'common_accent', '')
call ayu#hi('SpellCap', 'syntax_tag', '', 'underline')
call ayu#hi('SpellLocal', 'syntax_keyword', '', 'underline')
" TODO: This only works on supported terminals. I.E. it works on Kitty but not
" alacritty
call ayu#hi('SpellBad', '', '', 'undercurl', 'common_error')
call ayu#hi('SpellRare', 'syntax_regexp', '', 'underline')
call ayu#hi('StatusLine', 'editor_fg', 'ui_panel_bg')
call ayu#hi('StatusLineNC', 'extended_fg_idle', 'ui_panel_bg')
call ayu#hi('WildMenu', 'editor_fg', 'syntax_markup')
call ayu#hi('TabLine', 'syntax_comment', 'ui_panel_shadow')
call ayu#hi('TabLineFill', 'editor_fg', 'ui_bg')
call ayu#hi('TabLineSel', 'editor_fg', 'editor_bg')
call ayu#hi('Title', 'syntax_keyword', '')
call ayu#hi('Visual', '', 'editor_selection_inactive')
call ayu#hi('WarningMsg', 'extended_warning', '')

" Extended
call ayu#hi('Conditional', 'extended_conditional', '')
call ayu#hi('Repeat', 'extended_repeat', '')

"}}}

" Mode highlight groups: {{{

call ayu#hi('NormalMode', 'syntax_entity', '')
call ayu#hi('InsertMode', 'syntax_string', '')
call ayu#hi('VisualMode', 'syntax_constant', '')
call ayu#hi('CommandMode', 'syntax_func', '')
call ayu#hi('ReplaceMode', 'vcs_removed', '')
hi! link SelectMode VisualMode

"}}}

" Neovim Highlights: {{{

call ayu#hi('NormalFloat', 'editor_fg', 'ui_panel_bg')
call ayu#hi('FloatBorder', 'editor_fg', 'ui_panel_bg')

" }}}

" Generic Syntax Highlighting: (see :help group-name) {{{

call ayu#hi('Comment', 'syntax_comment', '', s:ayu_italic_comment ? 'italic' : '')

call ayu#hi('Constant', 'syntax_constant', '', '')
call ayu#hi('String', 'syntax_string', '')

call ayu#hi('Identifier', 'syntax_entity', '')
call ayu#hi('Function', 'syntax_func', '')

call ayu#hi('Statement', 'syntax_keyword', '')
call ayu#hi('Operator', 'syntax_operator', '')
call ayu#hi('Exception', 'syntax_markup', '')

call ayu#hi('PreProc', 'common_accent', '')

call ayu#hi('Type', 'syntax_entity', '')
call ayu#hi('Structure', 'syntax_special', '')

call ayu#hi('Special', 'common_accent', '')
call ayu#hi('Delimiter', 'syntax_special', '')

call ayu#hi('Underlined', 'syntax_tag', '', 'underline')

call ayu#hi('Ignore', '', '')

call ayu#hi('Error', 'editor_fg', 'common_error')

call ayu#hi('Todo', 'syntax_markup', '')

" Quickfix window highlighting
call ayu#hi('qfLineNr', 'syntax_keyword', '')

call ayu#hi('Conceal', 'syntax_comment', '')
call ayu#hi('CursorLineConceal', 'editor_gutter_normal', 'editor_line')

" Extended
call ayu#hi('PreCondit', 'extended_conditional', '')

"}}}

" Terminal: {{{

if has("nvim")
  let g:terminal_color_0 =  ayu#get_color('editor_bg')
  let g:terminal_color_1 =  ayu#get_color('syntax_markup')
  let g:terminal_color_2 =  ayu#get_color('syntax_string')
  let g:terminal_color_3 =  ayu#get_color('common_accent')
  let g:terminal_color_4 =  ayu#get_color('syntax_tag')
  let g:terminal_color_5 =  ayu#get_color('syntax_constant')
  let g:terminal_color_6 =  ayu#get_color('syntax_regexp')
  let g:terminal_color_7 =  "#FFFFFF"
  let g:terminal_color_8 =  ayu#get_color('extended_fg_idle')
  let g:terminal_color_9 =  ayu#get_color('common_error')
  let g:terminal_color_10 = ayu#get_color('syntax_string')
  let g:terminal_color_11 = ayu#get_color('common_accent')
  let g:terminal_color_12 = ayu#get_color('syntax_tag')
  let g:terminal_color_13 = ayu#get_color('syntax_constant')
  let g:terminal_color_14 = ayu#get_color('syntax_regexp')
  let g:terminal_color_15 = ayu#get_color('syntax_comment')
  let g:terminal_color_background = g:terminal_color_0
  let g:terminal_color_foreground = ayu#get_color('editor_fg')
else
  let g:terminal_ansi_colors =  [ayu#get_color('editor_bg'),        ayu#get_color('syntax_markup')]
  let g:terminal_ansi_colors += [ayu#get_color('syntax_string'),  ayu#get_color('common_accent')]
  let g:terminal_ansi_colors += [ayu#get_color('syntax_tag'),     ayu#get_color('syntax_constant')]
  let g:terminal_ansi_colors += [ayu#get_color('syntax_regexp'),  "#FFFFFF"]
  let g:terminal_ansi_colors += [ayu#get_color('extended_fg_idle'), ayu#get_color('common_error')]
  let g:terminal_ansi_colors += [ayu#get_color('syntax_string'),  ayu#get_color('common_accent')]
  let g:terminal_ansi_colors += [ayu#get_color('syntax_tag'),     ayu#get_color('syntax_constant')]
  let g:terminal_ansi_colors += [ayu#get_color('syntax_regexp'),  ayu#get_color('syntax_comment')]
endif

" }}}

" Diff Syntax Highlighting: {{{
call ayu#hi('DiffAdd', 'vcs_added', 'editor_gutter_normal')
call ayu#hi('DiffAdded', 'vcs_added', '')
call ayu#hi('DiffChange', 'vcs_modified', 'editor_gutter_normal')
call ayu#hi('DiffDelete', 'vcs_removed', 'editor_gutter_normal')
call ayu#hi('DiffRemoved', 'vcs_removed', '')
call ayu#hi('DiffText', 'vcs_modified', 'editor_gutter_active')
"}}}

" Netrw: {{{
call ayu#hi('netrwClassify', 'syntax_special', '')
" }}}

" GitGutter: {{{
call ayu#hi('GitGutterAdd', 'vcs_added', s:sign_bg)
call ayu#hi('GitGutterChange', 'vcs_modified', s:sign_bg)
call ayu#hi('GitGutterDelete', 'vcs_removed', s:sign_bg)
call ayu#hi('GitGutterChangeDelete', 'vcs_modified', s:sign_bg, 'underline')
" }}}

" Signify: {{{
call ayu#hi('SignifySignAdd', 'vcs_added', s:sign_bg)
call ayu#hi('SignifySignChange', 'vcs_modified', s:sign_bg)
call ayu#hi('SignifySignDelete', 'vcs_removed', s:sign_bg)
call ayu#hi('SignifySignChangeDelete', 'vcs_modified', s:sign_bg, 'underline')
" }}}

" NERDTree: {{{
call ayu#hi('NERDTreeOpenable', 'extended_fg_idle', '')
call ayu#hi('NERDTreeClosable', 'common_accent', '')
call ayu#hi('NERDTreeUp', 'extended_fg_idle', '')
call ayu#hi('NERDTreeDir', 'syntax_func', '')
call ayu#hi('NERDTreeFile', '', '')
call ayu#hi('NERDTreeDirSlash', 'syntax_special', '')
" }}}

" Telescope: {{{
call ayu#hi('TelescopeMatching', 'common_accent', '')
" }}}

" YATS: {{{

call ayu#hi('typescriptDecorator', 'syntax_markup', '')
call ayu#hi('typescriptImport', 'extended_import', '')
call ayu#hi('typescriptExport', 'common_accent', '')
call ayu#hi('typescriptIdentifier', 'syntax_tag', '', 'italic')
call ayu#hi('typescriptAssign', 'syntax_operator', '')
call ayu#hi('typescriptBinaryOp', 'syntax_operator', '')
call ayu#hi('typescriptTernaryOp', 'syntax_operator', '')
call ayu#hi('typescriptModule', 'syntax_keyword', '')
call ayu#hi('typescriptTypeBrackets', 'syntax_special', '')
call ayu#hi('typescriptClassName', 'syntax_tag', '')
call ayu#hi('typescriptAmbientDeclaration', 'syntax_keyword', '')
call ayu#hi('typescriptRegexpString', 'syntax_regexp', '')
call ayu#hi('typescriptTry', 'syntax_markup', '')
call ayu#hi('typescriptExceptions', 'syntax_markup', '')
call ayu#hi('typescriptDebugger', 'syntax_markup', '', 'bold')
call ayu#hi('typescriptParens', 'syntax_special', '')
call ayu#hi('typescriptVariable', 'syntax_keyword', '')
call ayu#hi('typescriptObjectLabel', 'syntax_tag', '')
call ayu#hi('typescriptOperator', 'syntax_keyword', '')
call ayu#hi('typescriptArrowFunc', 'syntax_operator', '')
call ayu#hi('typescriptBraces', 'syntax_special', '')
call ayu#hi('typescriptGlobal', 'common_accent', '')

" Prop
call ayu#hi('typescriptDOMFormProp', 'syntax_entity', '')
call ayu#hi('typescriptDOMEventProp', 'syntax_entity', '')
call ayu#hi('typescriptBOMWindowProp', 'common_accent', '')

" Method
call ayu#hi('typescriptDateMethod', 'syntax_func', '')
call ayu#hi('typescriptBlobMethod', 'syntax_func', '')
call ayu#hi('typescriptArrayMethod', 'syntax_func', '')
call ayu#hi('typescriptArrayStaticMethod', 'syntax_func', '')
call ayu#hi('typescriptStringMethod', 'syntax_func', '')
call ayu#hi('typescriptPaymentMethod', 'syntax_func', '')
call ayu#hi('typescriptHeadersMethod', 'syntax_func', '')
call ayu#hi('typescriptCacheMethod', 'syntax_func', '')
call ayu#hi('typescriptDOMEventMethod', 'syntax_func', '')
call ayu#hi('typescriptDOMEventTargetMethod', 'syntax_func', '')
call ayu#hi('typescriptBOMWindowMethod', 'syntax_func', '')
call ayu#hi('typescriptDOMStorageMethod', 'syntax_func', '')
call ayu#hi('typescriptPromiseMethod', 'syntax_func', '')
call ayu#hi('typescriptGlobalMethod', 'syntax_func', '')
call ayu#hi('typescriptFunctionMethod', 'syntax_func', '')
call ayu#hi('typescriptBOMLocationMethod', 'syntax_func', '')

" Extended
call ayu#hi('typescriptFuncKeyword', 'extended_keyword_func', '')
call ayu#hi('typescriptConditional', 'extended_conditional', '')
call ayu#hi('typescriptCase', 'extended_conditional', '')
call ayu#hi('typescriptRepeat', 'extended_repeat', '')
call ayu#hi('typescriptBranch', 'extended_repeat', '')
call ayu#hi('typescriptCall', 'extended_parameter', '')
call ayu#hi('typescriptArrowFuncArg', 'extended_parameter', '')

" }}}

" Javascript: {{{

call ayu#hi('jsNull', 'syntax_constant', '')
call ayu#hi('jsThis', 'syntax_constant', '', 'italic')

call ayu#hi('jsBrackets', 'syntax_special', '')
call ayu#hi('jsDot', 'syntax_special', '')
call ayu#hi('jsParens', 'syntax_special', '')
call ayu#hi('jsFuncParens', 'syntax_special', '')
call ayu#hi('jsFuncBraces', 'syntax_special', '')
call ayu#hi('jsIfElseBraces', 'syntax_special', '')

call ayu#hi('jsObjectKey', 'syntax_tag', '')
call ayu#hi('jsObjectProp', 'syntax_tag', '')

call ayu#hi('jsRegexpString', 'syntax_regexp', '')

call ayu#hi('jsStorageClass', 'syntax_keyword', '')

call ayu#hi('jsArrowFunction', 'syntax_operator', '')

" Extended
call ayu#hi('jsFunction', 'extended_keyword_func', '')

" }}}

" Fugitive: {{{
call ayu#hi('fugitiveUntrackedHeading', 'common_accent', '')
call ayu#hi('fugitiveUnstagedHeading', 'common_accent', '')
call ayu#hi('fugitiveStagedHeading', 'common_accent', '')
call ayu#hi('fugitiveHeading', 'common_accent', '')
" }}}

" Git Commit: {{{
call ayu#hi('gitcommitBranch', 'syntax_func', '')
call ayu#hi('gitcommitHeader', 'common_accent', '')
call ayu#hi('gitcommitSummary', 'editor_fg', '')
call ayu#hi('gitcommitOverflow', 'syntax_markup', '')
" }}}

" Startify: {{{
call ayu#hi('StartifyFile', 'editor_fg', '')
" }}}

" Vim: {{{
call ayu#hi('vimUserFunc', 'syntax_func', '')
hi! link vimVar NONE
call ayu#hi('vimFunction', 'syntax_func', '')
call ayu#hi('vimIsCommand', '', '')
" }}}

" XML: {{{

call ayu#hi('xmlTag', 'syntax_special', '')
call ayu#hi('xmlTagName', 'syntax_keyword', '')
call ayu#hi('xmlEntity', 'syntax_tag', '')
call ayu#hi('xmlEntityPunct', 'syntax_operator', '')
call ayu#hi('xmlEqual', 'syntax_operator', '')

" }}}

" INI: {{{
call ayu#hi('dosiniHeader', 'syntax_keyword', '')
" }}}

" Pandoc: {{{

call ayu#hi('pandocPipeTableHeader', 'syntax_keyword', '')
call ayu#hi('pandocPipeTableDelims', 'syntax_keyword', '')
call ayu#hi('pandocDelimitedCodeBlock', 'common_accent', '')

" }}}

" Shell: {{{

call ayu#hi('shTestOpr', 'syntax_operator', '')
call ayu#hi('shOption', 'syntax_special', '')
call ayu#hi('shQuote', 'syntax_string', '')

" }}}

" Haskell: {{{

call ayu#hi('haskellDeclKeyword', 'syntax_keyword', '')
call ayu#hi('haskellLet', 'syntax_keyword', '')
call ayu#hi('haskellWhere', 'syntax_keyword', '')
call ayu#hi('haskellIdentifier', 'syntax_tag', '')

" }}}

" PHP: {{{

call ayu#hi('phpDefine', 'syntax_keyword', '')
call ayu#hi('phpStructure', 'syntax_keyword', '')

" }}}

" Ruby: {{{

call ayu#hi('rubyModule', 'syntax_keyword', '')
call ayu#hi('rubyRegexp', 'syntax_regexp', '')
call ayu#hi('rubyRegexpDelimiter', 'syntax_regexp', '')
call ayu#hi('rubyStringDelimiter', 'syntax_string', '')

" }}}

" Compe: {{{

hi! link CompeDocumentation NormalFloat

" }}}

" Cmp: {{{

call ayu#hi('CmpItemAbbrMatch', 'common_accent', '')
call ayu#hi('CmpItemAbbrMatchFuzzy', 'common_accent', '')

" Highlights for cmp item types
call ayu#hi('CmpItemAbbrDeprecated', '', '', 'strikethrough')

call ayu#hi('CmpItemKindClass', 'syntax_entity', '')
call ayu#hi('CmpItemKindConstant', 'syntax_constant', '')
call ayu#hi('CmpItemKindConstructor', 'common_accent', '')
call ayu#hi('CmpItemKindEnum', 'extended_enum', '')
call ayu#hi('CmpItemKindEnumMember', 'syntax_constant', '')
call ayu#hi('CmpItemKindField', 'syntax_tag', '')
call ayu#hi('CmpItemKindFunction', 'syntax_func', '')
call ayu#hi('CmpItemKindInterface', 'extended_interface', '')
call ayu#hi('CmpItemKindKeyword', 'syntax_keyword', '')
call ayu#hi('CmpItemKindMethod', 'syntax_func', '')
call ayu#hi('CmpItemKindModule', 'extended_namespace', '')
call ayu#hi('CmpItemKindOperator', 'syntax_keyword', '')
call ayu#hi('CmpItemKindProperty', 'syntax_tag', '')
call ayu#hi('CmpItemKindSnippet', 'syntax_comment', '')
call ayu#hi('CmpItemKindStruct', 'extended_struct', '')
call ayu#hi('CmpItemKindText', 'syntax_comment', '')
call ayu#hi('CmpItemKindTypeParameter', 'extended_generic', '')
call ayu#hi('CmpItemKindVariable', 'editor_fg', '')

" }}}

" Indent Blankline: {{{

call ayu#hi('IndentBlanklineChar', 'editor_indentGuide_normal', '')
call ayu#hi('IndentBlanklineContextChar', 'editor_indentGuide_active', '')

" }}}

" vim-illuminate: {{{

hi! link IlluminatedWordRead Visual
hi! link IlluminatedWordText Visual
call ayu#hi('IlluminatedWordWrite', '', 'editor_selection_active')

" }}}

" nvim-lspconfig: {{{

hi! link LspInfoBorder FloatBorder

" }}}

" nvim-navic: {{{

"vim.api.nvim_set_hl(0, "NavicIconsFile",          {default = true, bg = "#000000", fg = "#ffffff"})
hi! link NavicIconsModule Include
hi! link NavicIconsNamespace Include
hi! link NavicIconsPackage Include
hi! link NavicIconsClass Keyword
hi! link NavicIconsMethod Function
call ayu#hi('NavicIconsProperty', 'syntax_tag', '')
call ayu#hi('NavicIconsField', 'syntax_tag', '')
hi! link NavicIconsConstructor Special
call ayu#hi('NavicIconsEnum', 'extended_enum', '')
hi! link NavicIconsEnumMember Constant
call ayu#hi('NavicIconsInterface', 'extended_interface', '')
hi! link NavicIconsFunction Function
call ayu#hi('NavicIconsVariable', 'editor_fg', '')
hi! link NavicIconsConstant Constant
hi! link NavicIconsString String
hi! link NavicIconsNumber Number
hi! link NavicIconsBoolean Boolean
hi! link NavicIconsArray Operator
hi! link NavicIconsObject Operator
"vim.api.nvim_set_hl(0, "NavicIconsKey",           {default = true, bg = "#000000", fg = "#ffffff"})
hi! link NavicIconsNull Constant
call ayu#hi('NavicIconsStruct', 'extended_struct', '')
"vim.api.nvim_set_hl(0, "NavicIconsEvent",         {default = true, bg = "#000000", fg = "#ffffff"})
hi! link NavicIconsOperator Operator
call ayu#hi('NavicIconsTypeParameter', 'extended_generic', '')
hi! link NavicText Comment
hi! link NavicSeparator Comment

" }}}

" CoC.nvim: {{{

call ayu#hi('CocInlayHint', 'extended_fg_idle', '', 'italic')
call ayu#hi('CocSearch', 'common_accent', '')

call ayu#hi('CocSemVariable', 'editor_fg', '')
call ayu#hi('CocSemInterface', 'extended_interface', '')
call ayu#hi('CocSemStruct', 'extended_struct', '')
call ayu#hi('CocSemParameter', 'extended_parameter', '')
call ayu#hi('CocSemTypeParameter', 'extended_generic', '')
call ayu#hi('CocSemEnum', 'extended_enum', '')
call ayu#hi('CocSemProperty', 'syntax_tag', '')
call ayu#hi('CocSemRegexp', 'syntax_regexp', '')

" }}}

" Rust: {{{

call ayu#hi('rustRepeat', 'extended_repeat', '')

" }}}

" Neovim: {{{

if has('nvim')
    " Diagnostics:
    if has('nvim-0.6')
        call ayu#hi('DiagnosticDefaultError', 'common_error', '')
        hi! link DiagnosticError DiagnosticDefaultError
        call ayu#hi('DiagnosticUnderlineError', 'common_error', '', 'underline')
        call ayu#hi('DiagnosticSignError', 'common_error', s:sign_bg)

        call ayu#hi('DiagnosticWarn', 'extended_warning', '')
        call ayu#hi('DiagnosticDefaultWarn', 'extended_warning', '')
        call ayu#hi('DiagnosticUnderlineWarn', 'extended_warning', '', 'underline')
        call ayu#hi('DiagnosticSignWarn', 'extended_warning', s:sign_bg)

        call ayu#hi('DiagnosticVirtualTextHint', 'extended_fg_idle', '')
        call ayu#hi('DiagnosticSignHint', 'editor_fg', s:sign_bg)

        call ayu#hi('DiagnosticVirtualTextInfo', 'extended_fg_idle', '')
        call ayu#hi('DiagnosticSignInfo', 'editor_fg', s:sign_bg)
    else
        call ayu#hi('LspDiagnosticsDefaultError', 'common_error', '')
        call ayu#hi('LspDiagnosticsUnderlineError', 'common_error', '', 'underline')
        call ayu#hi('LspDiagnosticsSignError', 'common_error', s:sign_bg)

        call ayu#hi('LspDiagnosticsDefaultWarning', 'extended_warning', '')
        call ayu#hi('LspDiagnosticsUnderlineWarning', 'extended_warning', '', 'underline')
        call ayu#hi('LspDiagnosticsSignWarning', 'extended_warning', s:sign_bg)

        call ayu#hi('LspDiagnosticsVirtualTextHint', 'extended_fg_idle', '')
        call ayu#hi('LspDiagnosticsSignHint', 'editor_fg', s:sign_bg)

        call ayu#hi('LspDiagnosticsVirtualTextInformation', 'extended_fg_idle', '')
        call ayu#hi('LspDiagnosticsSignInformation', 'editor_fg', s:sign_bg)
    endif

    hi! link LspReferenceRead Visual

    call ayu#hi('@struct', 'extended_struct', '')
    call ayu#hi('@interface', 'extended_interface', '')
    call ayu#hi('@enum', 'extended_enum', '')
    call ayu#hi('@typeParameter', 'extended_generic', '')
    hi! link @builtinType Type
    hi! link @class Type

    call ayu#hi('@controlFlow', 'extended_conditional', '')
    hi! link @annotation PreProc
    call ayu#hi('@attribute', 'syntax_markup', '')

    call ayu#hi('@conditional', 'extended_conditional', '')
    call ayu#hi('@constant.builtin', 'syntax_constant', '')

    call ayu#hi('@field', 'syntax_tag', '')
    hi! link @function.call @function
    call ayu#hi('@function.macro', 'syntax_func', '')

    call ayu#hi('@include', 'extended_import', '')

    call ayu#hi('@keyword.function', 'extended_keyword_func', '')
    hi! link @keyword.operator @operator
    call ayu#hi('@keyword.return', 'extended_conditional', '')

    hi! link @method.call @method

    hi! link @namespace Include

    call ayu#hi('@parameter', 'extended_parameter', '')
    hi! link @parameter.reference @parameter
    call ayu#hi('@property', 'syntax_tag', '')
    hi! link @punctuation.delimiter @punctuation
    hi! link @punctuation.bracket @punctuation
    hi! link @punctuation.special @punctuation

    call ayu#hi('@repeat', 'extended_repeat', '')

    hi! link @storageclass Keyword
    call ayu#hi('@string.regex', 'syntax_regexp', '')
    hi! link @string.special SpecialChar
    hi! link @symbol Identifier

    call ayu#hi('@tag', 'syntax_keyword', '')
    hi! link @tag.delimiter Delimiter
    call ayu#hi('@tag.attribute', 'syntax_tag', '')

    hi @text.strong gui=bold
    hi @text.emphasis gui=italic
    hi @text.underline gui=underline
    hi @text.strike gui=strikethrough
    hi! link @text.title Title
    hi! link @text.literal String
    hi! link @text.uri Underlined
    hi! link @text.math Special
    hi! link @text.reference Constant
    hi! link @text.environment Macro
    hi! link @text.environment.name Type
    hi! link @text.note SpecialComment
    call ayu#hi('@text.todo.checked.markdown', 'vcs_added', '', '')
    call ayu#hi('@text.todo.unchecked.markdown', 'vcs_removed', '', '')
    hi! link @text.warning Todo
    hi! link @text.danger WarningMsg
    call ayu#hi('@type.builtin', 'syntax_entity', '', 'italic')
    hi! link @builtinType @type.builtin
    hi! link @type.qualifier Keyword
    call ayu#hi('@variable', 'editor_fg', '')
    call ayu#hi('@variable.builtin', 'syntax_constant', '', 'italic')

    " Builtin LSP

    hi! link @lsp.type.namespace @namespace
    hi! link @lsp.type.class @class
    hi! link @lsp.type.interface @interface
    hi! link @lsp.type.enum @enum
    hi! link @lsp.type.typeParameter @typeParameter
    hi! link @lsp.type.parameter @parameter
    hi! link @lsp.type.property @property
    hi! link @lsp.type.field @property
    hi! link @lsp.type.struct @struct
    hi! link @lsp.type.variable @variable
    hi! link @lsp.type.keyword Keyword
    hi! link @lsp.type.constant Constant
    hi! link @lsp.type.delegate @function
    hi! link @lsp.type.conditional @conditional

    " hlargs.nvim: {{{

    hi! link Hlargs @parameter

    " }}}
endif

" }}}
