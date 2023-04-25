
local M = {}


function M.set(group, style)

end





function M.setup()
	vim.cmd("highlight clear")

	-- if exists("syntax_on")
	vim.cmd("syntax reset")
	-- endif

	-- set t_Co=256

	vim.g.colors_name = "onedark"

	vim.cmd("source /Users/max/.local/share/nvim/site/pack/packer/start/onedark.vim/colors/onedark.vim")



	local colors = vim.fn['onedark#GetColors']()

	local red = colors.red
	local dark_red = colors.dark_red
	local green = colors.green
	local yellow = colors.yellow
	local dark_yellow = colors.dark_yellow
	local blue = colors.blue
	local purple = colors.purple
	local cyan = colors.cyan
	local white = colors.white
	local black = colors.black
	local foreground = colors.foreground
	local background = colors.background
	local comment_grey = colors.comment_grey
	local gutter_fg_grey = colors.gutter_fg_grey
	local cursor_grey = colors.cursor_grey
	local visual_grey = colors.visual_grey
	local menu_grey = colors.menu_grey
	local special_grey = colors.special_grey
	local vertsplit = colors.vertsplit


	local none = {["nil"] = "nothing"}
	local h = vim.fn['onedark#set_highlight']


	-- terminal colors
	vim.g.terminal_color_0 = black.gui
	vim.g.terminal_color_1 = red.gui
	vim.g.terminal_color_2 = green.gui
	vim.g.terminal_color_3 = yellow.gui
	vim.g.terminal_color_4 = blue.gui
	vim.g.terminal_color_5 = purple.gui
	vim.g.terminal_color_6 = cyan.gui
	vim.g.terminal_color_7 = comment_grey.gui
	vim.g.terminal_color_8 = visual_grey.gui
	vim.g.terminal_color_9 = red.gui
	vim.g.terminal_color_10 = green.gui
	vim.g.terminal_color_11 = yellow.gui
	vim.g.terminal_color_12 = blue.gui
	vim.g.terminal_color_13 = purple.gui
	vim.g.terminal_color_14 = cyan.gui
	vim.g.terminal_color_15 = white.gui
	vim.g.terminal_color_background = background.gui
	vim.g.terminal_color_foreground = foreground.gui

	-- syntax groups
	h("Comment", { fg = comment_grey, gui = "italic", cterm = "italic" }) -- any comment
	h("Constant", { fg = cyan }) -- any constant
	h("String", { fg = green }) -- a string constant: "this is a string"
	h("Character", { fg = green }) -- a character constant: 'c', '\n'
	h("Number", { fg = dark_yellow }) -- a number constant: 234, 0xff
	h("Boolean", { fg = dark_yellow }) -- a boolean constant: TRUE, false
	h("Float", { fg = dark_yellow }) -- a floating point constant: 2.3e10
	h("Identifier", { fg = red }) -- any variable name
	h("Function", { fg = blue }) -- function name (also: methods for classes)
	h("Statement", { fg = purple }) -- any statement
	h("Conditional", { fg = purple }) -- if, then, else, endif, switch, etc.
	h("Repeat", { fg = purple }) -- for, do, while, etc.
	h("Label", { fg = purple }) -- case, default, etc.
	h("Operator", { fg = purple }) -- sizeof", "+", "*", etc.
	h("Keyword", { fg = purple }) -- any other keyword
	h("Exception", { fg = purple }) -- try, catch, throw
	h("PreProc", { fg = yellow }) -- generic Preprocessor
	h("Include", { fg = blue }) -- preprocessor #include
	h("Define", { fg = purple }) -- preprocessor #define
	h("Macro", { fg = purple }) -- same as Define
	h("PreCondit", { fg = yellow }) -- preprocessor #if, #else, #endif, etc.
	h("Type", { fg = yellow }) -- int, long, char, etc.
	h("StorageClass", { fg = yellow }) -- static, register, volatile, etc.
	h("Structure", { fg = yellow }) -- struct, union, enum, etc.
	h("Typedef", { fg = yellow }) -- A typedef
	h("Special", { fg = blue }) -- any special symbol
	h("SpecialChar", { fg = dark_yellow }) -- special character in a constant
	h("Tag", none) -- you can use CTRL-] on this
	h("Delimiter", none) -- character that needs attention
	h("SpecialComment", { fg = comment_grey }) -- special things inside a comment
	h("Debug", none) -- debugging statements
	h("Underlined", { gui = "underline", cterm = "underline" }) -- text that stands out, HTML links
	h("Ignore", none) -- left blank, hidden
	h("Error", { fg = red }) -- any erroneous construct
	h("Todo", { fg = purple }) -- anything that needs extra attention; mostly the keywords TODO FIXME and XXX

	-- highlighting groups

	h("ColorColumn", { bg = cursor_grey })
	h("Conceal", none)
	h("Cursor", { fg = black, bg = blue })
	h("CursorIM", none)
	h("CursorColumn", { bg = cursor_grey })
	h("Directory", { fg = blue })
	h("DiffAdd", { bg = green, fg = black })
	h("DiffChange", { fg = yellow, gui = "underline", cterm = "underline" })
	h("DiffDelete", { bg = red, fg = black })
	h("DiffText", { bg = yellow, fg = black })
	h("ErrorMsg", { fg = red })
	h("VertSplit", { fg = vertsplit })
	h("Folded", { fg = comment_grey })
	h("FoldColumn", none)
	h("SignColumn", none)
	h("IncSearch", { fg = yellow, bg = comment_grey })
	h("LineNr", { fg = gutter_fg_grey })
	h("CursorLineNr", none)
	h("MatchParen", { fg = blue, gui = "underline", cterm = "underline" })
	h("ModeMsg", none)
	h("MoreMsg", none)
	h("NonText", { fg = special_grey })
	h("Normal", { fg = foreground, bg = background })
	h("Pmenu", { fg = white, bg = menu_grey })
	h("PmenuSel", { fg = cursor_grey, bg = blue })
	h("PmenuSbar", { bg = cursor_grey })
	h("PmenuThumb", { bg = white })
	h("Question", { fg = purple })
	h("QuickFixLine", { fg = black, bg = yellow })
	h("Search", { fg = black, bg = yellow })
	h("SpecialKey", { fg = special_grey })
	h("SpellBad", { fg = red, gui = "underline", cterm = "underline" })
	h("SpellCap", { fg = dark_yellow })
	h("SpellLocal", { fg = dark_yellow })
	h("SpellRare", { fg = dark_yellow })
	h("StatusLine", { fg = white, bg = cursor_grey })
	h("StatusLineNC", { fg = comment_grey })
	h("StatusLineTerm", { fg = white, bg = cursor_grey })
	h("StatusLineTermNC", { fg = comment_grey })
	h("TabLine", { fg = comment_grey })
	h("TabLineFill", none)
	h("TabLineSel", { fg = white })
	h("Terminal", { fg = white, bg = black })
	h("Title", { fg = green })
	h("Visual", { bg = visual_grey })
	h("VisualNOS", { bg = visual_grey })
	h("WarningMsg", { fg = yellow })
	h("WildMenu", { fg = black, bg = blue })

	if vim.o.diff then
		--Don't change the background color in diff mode
		h("CursorLine", { gui = "underline" }) --the screen line that the cursor is in when 'cursorline' is set
	else
		h("CursorLine", { bg = cursor_grey }) --the screen line that the cursor is in when 'cursorline' is set
	end

	if hide_end_of_buffer then
		--If enabled, will style end-of-buffer filler lines (~) to appear to be hidden.
		h("EndOfBuffer", { fg = black }) --filler lines (~) after the last line in the buffer
	end

	-- termdebug

	-- language-specific highlighting

	h("cssAttrComma", { fg = purple })
	h("cssAttributeSelector", { fg = green })
	h("cssBraces", { fg = white })
	h("cssClassName", { fg = dark_yellow })
	h("cssClassNameDot", { fg = dark_yellow })
	h("cssDefinition", { fg = purple })
	h("cssFontAttr", { fg = dark_yellow })
	h("cssFontDescriptor", { fg = purple })
	h("cssFunctionName", { fg = blue })
	h("cssIdentifier", { fg = blue })
	h("cssImportant", { fg = purple })
	h("cssInclude", { fg = white })
	h("cssIncludeKeyword", { fg = purple })
	h("cssMediaType", { fg = dark_yellow })
	h("cssProp", { fg = white })
	h("cssPseudoClassId", { fg = dark_yellow })
	h("cssSelectorOp", { fg = purple })
	h("cssSelectorOp2", { fg = purple })
	h("cssTagName", { fg = red })
	h("fishKeyword", { fg = purple })
	h("fishConditional", { fg = purple })
	h("goDeclaration", { fg = purple })
	h("goBuiltins", { fg = cyan })
	h("goFunctionCall", { fg = blue })
	h("goVarDefs", { fg = red })
	h("goVarAssign", { fg = red })
	h("goVar", { fg = purple })
	h("goConst", { fg = purple })
	h("goType", { fg = yellow })
	h("goTypeName", { fg = yellow })
	h("goDeclType", { fg = cyan })
	h("goTypeDecl", { fg = purple })
	h("htmlArg", { fg = dark_yellow })
	h("htmlBold", { fg = dark_yellow, gui = "bold", cterm = "bold" })
	h("htmlBoldItalic", { fg = green, gui = "bold,italic", cterm = "bold,italic" })
	h("htmlEndTag", { fg = white })
	h("htmlH1", { fg = red })
	h("htmlH2", { fg = red })
	h("htmlH3", { fg = red })
	h("htmlH4", { fg = red })
	h("htmlH5", { fg = red })
	h("htmlH6", { fg = red })
	h("htmlItalic", { fg = purple, gui = "italic", cterm = "italic" })
	h("htmlLink", { fg = cyan, gui = "underline", cterm = "underline" })
	h("htmlSpecialChar", { fg = dark_yellow })
	h("htmlSpecialTagName", { fg = red })
	h("htmlTag", { fg = white })
	h("htmlTagN", { fg = red })
	h("htmlTagName", { fg = red })
	h("htmlTitle", { fg = white })
	h("javaScriptBraces", { fg = white })
	h("javaScriptFunction", { fg = purple })
	h("javaScriptIdentifier", { fg = purple })
	h("javaScriptNull", { fg = dark_yellow })
	h("javaScriptNumber", { fg = dark_yellow })
	h("javaScriptRequire", { fg = cyan })
	h("javaScriptReserved", { fg = purple })
	h("jsArrowFunction", { fg = purple })
	h("jsClassKeyword", { fg = purple })
	h("jsClassMethodType", { fg = purple })
	h("jsDocParam", { fg = blue })
	h("jsDocTags", { fg = purple })
	h("jsExport", { fg = purple })
	h("jsExportDefault", { fg = purple })
	h("jsExtendsKeyword", { fg = purple })
	h("jsFrom", { fg = purple })
	h("jsFuncCall", { fg = blue })
	h("jsFunction", { fg = purple })
	h("jsGenerator", { fg = yellow })
	h("jsGlobalObjects", { fg = yellow })
	h("jsImport", { fg = purple })
	h("jsModuleAs", { fg = purple })
	h("jsModuleWords", { fg = purple })
	h("jsModules", { fg = purple })
	h("jsNull", { fg = dark_yellow })
	h("jsOperator", { fg = purple })
	h("jsStorageClass", { fg = purple })
	h("jsSuper", { fg = red })
	h("jsTemplateBraces", { fg = dark_red })
	h("jsTemplateVar", { fg = green })
	h("jsThis", { fg = red })
	h("jsUndefined", { fg = dark_yellow })
	h("javascriptArrowFunc", { fg = purple })
	h("javascriptClassExtends", { fg = purple })
	h("javascriptClassKeyword", { fg = purple })
	h("javascriptDocNotation", { fg = purple })
	h("javascriptDocParamName", { fg = blue })
	h("javascriptDocTags", { fg = purple })
	h("javascriptEndColons", { fg = white })
	h("javascriptExport", { fg = purple })
	h("javascriptFuncArg", { fg = white })
	h("javascriptFuncKeyword", { fg = purple })
	h("javascriptIdentifier", { fg = red })
	h("javascriptImport", { fg = purple })
	h("javascriptMethodName", { fg = white })
	h("javascriptObjectLabel", { fg = white })
	h("javascriptOpSymbol", { fg = cyan })
	h("javascriptOpSymbols", { fg = cyan })
	h("javascriptPropertyName", { fg = green })
	h("javascriptTemplateSB", { fg = dark_red })
	h("javascriptVariable", { fg = purple })
	h("jsonCommentError", { fg = white })
	h("jsonKeyword", { fg = red })
	h("jsonBoolean", { fg = dark_yellow })
	h("jsonNumber", { fg = dark_yellow })
	h("jsonQuote", { fg = white })
	h("jsonMissingCommaError", { fg = red, gui = "reverse" })
	h("jsonNoQuotesError", { fg = red, gui = "reverse" })
	h("jsonNumError", { fg = red, gui = "reverse" })
	h("jsonString", { fg = green })
	h("jsonStringSQError", { fg = red, gui = "reverse" })
	h("jsonSemicolonError", { fg = red, gui = "reverse" })
	h("lessVariable", { fg = purple })
	h("lessAmpersandChar", { fg = white })
	h("lessClass", { fg = dark_yellow })
	h("markdownBlockquote", { fg = comment_grey })
	h("markdownBold", { fg = dark_yellow, gui = "bold", cterm = "bold" })
	h("markdownBoldItalic", { fg = green, gui = "bold,italic", cterm = "bold,italic" })
	h("markdownCode", { fg = green })
	h("markdownCodeBlock", { fg = green })
	h("markdownCodeDelimiter", { fg = green })
	h("markdownH1", { fg = red })
	h("markdownH2", { fg = red })
	h("markdownH3", { fg = red })
	h("markdownH4", { fg = red })
	h("markdownH5", { fg = red })
	h("markdownH6", { fg = red })
	h("markdownHeadingDelimiter", { fg = red })
	h("markdownHeadingRule", { fg = comment_grey })
	h("markdownId", { fg = purple })
	h("markdownIdDeclaration", { fg = blue })
	h("markdownIdDelimiter", { fg = purple })
	h("markdownItalic", { fg = purple, gui = "italic", cterm = "italic" })
	h("markdownLinkDelimiter", { fg = purple })
	h("markdownLinkText", { fg = blue })
	h("markdownListMarker", { fg = red })
	h("markdownOrderedListMarker", { fg = red })
	h("markdownRule", { fg = comment_grey })
	h("markdownUrl", { fg = cyan, gui = "underline", cterm = "underline" })
	h("perlFiledescRead", { fg = green })
	h("perlFunction", { fg = purple })
	h("perlMatchStartEnd",{ fg = blue })
	h("perlMethod", { fg = purple })
	h("perlPOD", { fg = comment_grey })
	h("perlSharpBang", { fg = comment_grey })
	h("perlSpecialString",{ fg = dark_yellow })
	h("perlStatementFiledesc", { fg = red })
	h("perlStatementFlow",{ fg = red })
	h("perlStatementInclude", { fg = purple })
	h("perlStatementScalar",{ fg = purple })
	h("perlStatementStorage", { fg = purple })
	h("perlSubName",{ fg = yellow })
	h("perlVarPlain",{ fg = blue })
	h("phpVarSelector", { fg = red })
	h("phpOperator", { fg = white })
	h("phpParent", { fg = white })
	h("phpMemberSelector", { fg = white })
	h("phpType", { fg = purple })
	h("phpKeyword", { fg = purple })
	h("phpClass", { fg = yellow })
	h("phpUseClass", { fg = white })
	h("phpUseAlias", { fg = white })
	h("phpInclude", { fg = purple })
	h("phpClassExtends", { fg = green })
	h("phpDocTags", { fg = white })
	h("phpFunction", { fg = blue })
	h("phpFunctions", { fg = cyan })
	h("phpMethodsVar", { fg = dark_yellow })
	h("phpMagicConstants", { fg = dark_yellow })
	h("phpSuperglobals", { fg = red })
	h("phpConstants", { fg = dark_yellow })
	h("rubyBlockParameter", { fg = red})
	h("rubyBlockParameterList", { fg = red })
	h("rubyClass", { fg = purple})
	h("rubyConstant", { fg = yellow})
	h("rubyControl", { fg = purple })
	h("rubyEscape", { fg = red})
	h("rubyFunction", { fg = blue})
	h("rubyGlobalVariable", { fg = red})
	h("rubyInclude", { fg = blue})
	h("rubyIncluderubyGlobalVariable", { fg = red})
	h("rubyInstanceVariable", { fg = red})
	h("rubyInterpolation", { fg = cyan })
	h("rubyInterpolationDelimiter", { fg = red })
	h("rubyInterpolationDelimiter", { fg = red})
	h("rubyRegexp", { fg = cyan})
	h("rubyRegexpDelimiter", { fg = cyan})
	h("rubyStringDelimiter", { fg = green})
	h("rubySymbol", { fg = cyan})
	h("sassAmpersand", { fg = red })
	h("sassClass", { fg = dark_yellow })
	h("sassControl", { fg = purple })
	h("sassExtend", { fg = purple })
	h("sassFor", { fg = white })
	h("sassFunction", { fg = cyan })
	h("sassId", { fg = blue })
	h("sassInclude", { fg = purple })
	h("sassMedia", { fg = purple })
	h("sassMediaOperators", { fg = white })
	h("sassMixin", { fg = purple })
	h("sassMixinName", { fg = blue })
	h("sassMixing", { fg = purple })
	h("sassVariable", { fg = purple })
	h("scssExtend", { fg = purple })
	h("scssImport", { fg = purple })
	h("scssInclude", { fg = purple })
	h("scssMixin", { fg = purple })
	h("scssSelectorName", { fg = dark_yellow })
	h("scssVariable", { fg = purple })
	h("texStatement", { fg = purple })
	h("texSubscripts", { fg = dark_yellow })
	h("texSuperscripts", { fg = dark_yellow })
	h("texTodo", { fg = dark_red })
	h("texBeginEnd", { fg = purple })
	h("texBeginEndName", { fg = blue })
	h("texMathMatcher", { fg = blue })
	h("texMathDelim", { fg = blue })
	h("texDelimiter", { fg = dark_yellow })
	h("texSpecialChar", { fg = dark_yellow })
	h("texCite", { fg = blue })
	h("texRefZone", { fg = blue })
	h("typescriptReserved", { fg = purple })
	h("typescriptEndColons", { fg = white })
	h("typescriptBraces", { fg = white })
	h("xmlAttrib", { fg = dark_yellow })
	h("xmlEndTag", { fg = red })
	h("xmlTag", { fg = red })
	h("xmlTagName", { fg = red })

	-- plugin highlighting

	--tpope/vim-fugitive
	h("diffAdded", { fg = green })
	h("diffRemoved", { fg = red })
	--airblade/vim-gitgutter
	h("GitGutterAdd", { fg = green })
	h("GitGutterChange", { fg = yellow })
	h("GitGutterDelete", { fg = red })
	-- lewis6991/gitsigns.nvim
	vim.api.nvim_set_hl(0, "GitSignsAdd",    { link = "GitGutterAdd" })
	vim.api.nvim_set_hl(0, "GitSignsChange", { link = "GitGutterChange" })
	vim.api.nvim_set_hl(0, "GitSignsDelete", { link = "GitGutterDelete" })
	--neoclide/coc.nvim
	h("CocErrorSign", { fg = red })
	h("CocWarningSign", { fg = yellow })
	h("CocInfoSign", { fg = blue })
	h("CocHintSign", { fg = cyan })
	h("CocFadeOut", { fg = comment_grey })
	--https://github.com/joshdick/onedark.vim/issues/313
	-- highlight! link CocMenuSel PmenuSel

	--neomake/neomake
	h("NeomakeErrorSign", { fg = red })
	h("NeomakeWarningSign", { fg = yellow })
	h("NeomakeInfoSign", { fg = blue })


	-- git highlighting

	h("gitcommitComment", { fg = comment_grey })
	h("gitcommitUnmerged", { fg = green })
	h("gitcommitOnBranch", none)
	h("gitcommitBranch", { fg = purple })
	h("gitcommitDiscardedType", { fg = red })
	h("gitcommitSelectedType", { fg = green })
	h("gitcommitHeader", none)
	h("gitcommitUntrackedFile", { fg = cyan })
	h("gitcommitDiscardedFile", { fg = red })
	h("gitcommitSelectedFile", { fg = green })
	h("gitcommitUnmergedFile", { fg = yellow })
	h("gitcommitFile", none)
	h("gitcommitSummary", { fg = white })
	h("gitcommitOverflow", { fg = red })

	vim.api.nvim_set_hl(0, "gitcommitNoBranch",       { link = "gitcommitBranch" })
	vim.api.nvim_set_hl(0, "gitcommitUntracked",      { link = "gitcommitComment" })
	vim.api.nvim_set_hl(0, "gitcommitDiscarded",      { link = "gitcommitComment" })
	vim.api.nvim_set_hl(0, "gitcommitSelected",       { link = "gitcommitComment" })
	vim.api.nvim_set_hl(0, "gitcommitDiscardedArrow", { link = "gitcommitDiscardedFile" })
	vim.api.nvim_set_hl(0, "gitcommitSelectedArrow",  { link = "gitcommitSelectedFile" })
	vim.api.nvim_set_hl(0, "gitcommitUnmergedArrow",  { link = "gitcommitUnmergedFile" })


	-- neovim diagnostics
	h("DiagnosticError", { fg = red })
	h("DiagnosticWarn", { fg = yellow })
	h("DiagnosticInfo", { fg = blue })
	h("DiagnosticHint", { fg = cyan })
	h("DiagnosticUnderlineError", { fg = red, gui = "underline", cterm = "underline" })
	h("DiagnosticUnderlineWarn", { fg = yellow, gui = "underline", cterm = "underline" })
	h("DiagnosticUnderlineInfo", { fg = blue, gui = "underline", cterm = "underline" })
	h("DiagnosticUnderlineHint", { fg = cyan, gui = "underline", cterm = "underline" })

	-- neovim lsp
	vim.api.nvim_set_hl(0, "LspDiagnosticsDefaultError",         { link = "DiagnosticError" })
	vim.api.nvim_set_hl(0, "LspDiagnosticsDefaultWarning",       { link = "DiagnosticWarn" })
	vim.api.nvim_set_hl(0, "LspDiagnosticsDefaultInformation",   { link = "DiagnosticInfo" })
	vim.api.nvim_set_hl(0, "LspDiagnosticsDefaultHint",          { link = "DiagnosticHint" })
	vim.api.nvim_set_hl(0, "LspDiagnosticsUnderlineError",       { link = "DiagnosticUnderlineError" })
	vim.api.nvim_set_hl(0, "LspDiagnosticsUnderlineWarning",     { link = "DiagnosticUnderlineWarn" })
	vim.api.nvim_set_hl(0, "LspDiagnosticsUnderlineInformation", { link = "DiagnosticUnderlineInfo" })
	vim.api.nvim_set_hl(0, "LspDiagnosticsUnderlineHint",        { link = "DiagnosticUnderlineHint" })

	-- termdebug highlighting
	h("debugPC", { bg = special_grey })
	h("debugBreakpoint", { fg = black, bg = red })

end

return M
