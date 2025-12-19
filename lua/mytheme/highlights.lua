-- =============================================================================
-- Highlight Groups Definition
-- =============================================================================
-- This file defines all highlight groups using colors from palette.lua
-- You generally don't need to modify this file - just edit palette.lua
-- =============================================================================

local M = {}

function M.setup(p)
  local hl = vim.api.nvim_set_hl

  -- ===========================================================================
  -- EDITOR (UI Elements)
  -- ===========================================================================
  -- Basic
  hl(0, "Normal", { fg = p.fg, bg = p.bg })
  hl(0, "NormalNC", { fg = p.fg, bg = p.bg })
  hl(0, "NormalFloat", { fg = p.fg, bg = p.bg_dark })
  hl(0, "FloatBorder", { fg = p.border, bg = p.bg_dark })
  hl(0, "FloatTitle", { fg = p.accent1, bg = p.bg_dark, bold = true })

  -- Cursor
  hl(0, "Cursor", { fg = p.bg, bg = p.fg })
  hl(0, "CursorIM", { fg = p.bg, bg = p.fg })
  hl(0, "CursorLine", { bg = p.cursor_line })
  hl(0, "CursorColumn", { bg = p.cursor_line })
  hl(0, "TermCursor", { fg = p.bg, bg = p.fg })
  hl(0, "TermCursorNC", { fg = p.bg, bg = p.fg_dark })

  -- Line numbers
  hl(0, "LineNr", { fg = p.line_nr })
  hl(0, "CursorLineNr", { fg = p.line_nr_cur, bold = true })
  hl(0, "LineNrAbove", { fg = p.line_nr })
  hl(0, "LineNrBelow", { fg = p.line_nr })

  -- Selection
  hl(0, "Visual", { bg = p.selection })
  hl(0, "VisualNOS", { bg = p.selection })

  -- Search
  hl(0, "Search", { fg = p.bg, bg = p.accent1 })
  hl(0, "IncSearch", { fg = p.bg, bg = p.accent2 })
  hl(0, "CurSearch", { fg = p.bg, bg = p.accent2 })
  hl(0, "Substitute", { fg = p.bg, bg = p.accent1 })

  -- Splits and windows
  hl(0, "VertSplit", { fg = p.border })
  hl(0, "WinSeparator", { fg = p.border })
  hl(0, "WinBar", { fg = p.fg, bg = p.bg })
  hl(0, "WinBarNC", { fg = p.fg_dark, bg = p.bg })

  -- Status line
  hl(0, "StatusLine", { fg = p.fg, bg = p.bg_dark })
  hl(0, "StatusLineNC", { fg = p.fg_dark, bg = p.bg_dark })

  -- Tab line
  hl(0, "TabLine", { fg = p.fg_dark, bg = p.bg_dark })
  hl(0, "TabLineFill", { bg = p.bg_dark })
  hl(0, "TabLineSel", { fg = p.fg, bg = p.bg, bold = true })

  -- Popup menu (completion)
  hl(0, "Pmenu", { fg = p.fg, bg = p.bg_dark })
  hl(0, "PmenuSel", { fg = p.fg, bg = p.selection })
  hl(0, "PmenuSbar", { bg = p.bg_dark })
  hl(0, "PmenuThumb", { bg = p.fg_dark })
  hl(0, "PmenuKind", { fg = p.accent1, bg = p.bg_dark })
  hl(0, "PmenuKindSel", { fg = p.accent1, bg = p.selection })
  hl(0, "PmenuExtra", { fg = p.fg_dark, bg = p.bg_dark })
  hl(0, "PmenuExtraSel", { fg = p.fg_dark, bg = p.selection })

  -- Messages
  hl(0, "MsgArea", { fg = p.fg })
  hl(0, "MsgSeparator", { fg = p.border })
  hl(0, "ModeMsg", { fg = p.accent1, bold = true })
  hl(0, "MoreMsg", { fg = p.accent1 })
  hl(0, "Question", { fg = p.accent1 })
  hl(0, "ErrorMsg", { fg = p.error })
  hl(0, "WarningMsg", { fg = p.warning })

  -- Columns and signs
  hl(0, "SignColumn", { fg = p.fg_dark, bg = p.bg })
  hl(0, "FoldColumn", { fg = p.fg_dark, bg = p.bg })
  hl(0, "ColorColumn", { bg = p.bg_light })
  hl(0, "Folded", { fg = p.fg_dark, bg = p.bg_light })

  -- Misc
  hl(0, "Directory", { fg = p.accent1 })
  hl(0, "Title", { fg = p.accent1, bold = true })
  hl(0, "NonText", { fg = p.fg_dark })
  hl(0, "EndOfBuffer", { fg = p.bg })
  hl(0, "Whitespace", { fg = p.fg_dark })
  hl(0, "SpecialKey", { fg = p.fg_dark })
  hl(0, "Conceal", { fg = p.fg_dark })
  hl(0, "MatchParen", { fg = p.accent2, bold = true })
  hl(0, "WildMenu", { fg = p.bg, bg = p.accent1 })

  -- ===========================================================================
  -- SYNTAX (Code Highlighting)
  -- ===========================================================================
  -- Comments
  hl(0, "Comment", { fg = p.comment, italic = true })

  -- Constants
  hl(0, "Constant", { fg = p.constant })
  hl(0, "String", { fg = p.string })
  hl(0, "Character", { fg = p.string })
  hl(0, "Number", { fg = p.number })
  hl(0, "Boolean", { fg = p.number })
  hl(0, "Float", { fg = p.number })

  -- Identifiers
  hl(0, "Identifier", { fg = p.variable })
  hl(0, "Function", { fg = p.func })

  -- Statements
  hl(0, "Statement", { fg = p.keyword })
  hl(0, "Conditional", { fg = p.keyword })
  hl(0, "Repeat", { fg = p.keyword })
  hl(0, "Label", { fg = p.label })
  hl(0, "Operator", { fg = p.operator })
  hl(0, "Keyword", { fg = p.keyword })
  hl(0, "Exception", { fg = p.keyword })

  -- Preprocessor
  hl(0, "PreProc", { fg = p.macro })
  hl(0, "Include", { fg = p.macro })
  hl(0, "Define", { fg = p.macro })
  hl(0, "Macro", { fg = p.macro })
  hl(0, "PreCondit", { fg = p.macro })

  -- Types
  hl(0, "Type", { fg = p.type })
  hl(0, "StorageClass", { fg = p.keyword })
  hl(0, "Structure", { fg = p.type })
  hl(0, "Typedef", { fg = p.type })

  -- Special
  hl(0, "Special", { fg = p.special })
  hl(0, "SpecialChar", { fg = p.special })
  hl(0, "Tag", { fg = p.accent1 })
  hl(0, "Delimiter", { fg = p.punctuation })
  hl(0, "SpecialComment", { fg = p.comment, bold = true })
  hl(0, "Debug", { fg = p.warning })

  -- Other
  hl(0, "Underlined", { underline = true })
  hl(0, "Ignore", { fg = p.fg_dark })
  hl(0, "Error", { fg = p.error })
  hl(0, "Todo", { fg = p.bg, bg = p.accent1, bold = true })

  -- ===========================================================================
  -- TREESITTER
  -- ===========================================================================
  -- Identifiers
  hl(0, "@variable", { fg = p.variable })
  hl(0, "@variable.builtin", { fg = p.special })
  hl(0, "@variable.parameter", { fg = p.parameter })
  hl(0, "@variable.member", { fg = p.property })

  hl(0, "@constant", { fg = p.constant })
  hl(0, "@constant.builtin", { fg = p.constant })
  hl(0, "@constant.macro", { fg = p.macro })

  hl(0, "@module", { fg = p.namespace })
  hl(0, "@module.builtin", { fg = p.namespace })
  hl(0, "@label", { fg = p.label })

  -- Literals
  hl(0, "@string", { fg = p.string })
  hl(0, "@string.documentation", { fg = p.string })
  hl(0, "@string.regexp", { fg = p.special })
  hl(0, "@string.escape", { fg = p.special })
  hl(0, "@string.special", { fg = p.special })
  hl(0, "@string.special.symbol", { fg = p.constant })
  hl(0, "@string.special.url", { fg = p.accent1, underline = true })
  hl(0, "@string.special.path", { fg = p.accent1 })

  hl(0, "@character", { fg = p.string })
  hl(0, "@character.special", { fg = p.special })

  hl(0, "@boolean", { fg = p.number })
  hl(0, "@number", { fg = p.number })
  hl(0, "@number.float", { fg = p.number })

  -- Types
  hl(0, "@type", { fg = p.type })
  hl(0, "@type.builtin", { fg = p.type })
  hl(0, "@type.definition", { fg = p.type })
  hl(0, "@type.qualifier", { fg = p.keyword })

  hl(0, "@attribute", { fg = p.macro })
  hl(0, "@attribute.builtin", { fg = p.macro })
  hl(0, "@property", { fg = p.property })

  -- Functions
  hl(0, "@function", { fg = p.func })
  hl(0, "@function.builtin", { fg = p.func })
  hl(0, "@function.call", { fg = p.func })
  hl(0, "@function.macro", { fg = p.macro })
  hl(0, "@function.method", { fg = p.func })
  hl(0, "@function.method.call", { fg = p.func })

  hl(0, "@constructor", { fg = p.type })

  -- Keywords
  hl(0, "@keyword", { fg = p.keyword })
  hl(0, "@keyword.coroutine", { fg = p.keyword })
  hl(0, "@keyword.function", { fg = p.keyword })
  hl(0, "@keyword.operator", { fg = p.keyword })
  hl(0, "@keyword.import", { fg = p.macro })
  hl(0, "@keyword.type", { fg = p.keyword })
  hl(0, "@keyword.modifier", { fg = p.keyword })
  hl(0, "@keyword.repeat", { fg = p.keyword })
  hl(0, "@keyword.return", { fg = p.keyword })
  hl(0, "@keyword.debug", { fg = p.warning })
  hl(0, "@keyword.exception", { fg = p.keyword })
  hl(0, "@keyword.conditional", { fg = p.keyword })
  hl(0, "@keyword.conditional.ternary", { fg = p.keyword })
  hl(0, "@keyword.directive", { fg = p.macro })
  hl(0, "@keyword.directive.define", { fg = p.macro })

  -- Punctuation
  hl(0, "@punctuation.delimiter", { fg = p.punctuation })
  hl(0, "@punctuation.bracket", { fg = p.punctuation })
  hl(0, "@punctuation.special", { fg = p.special })

  -- Comments
  hl(0, "@comment", { fg = p.comment, italic = true })
  hl(0, "@comment.documentation", { fg = p.comment, italic = true })
  hl(0, "@comment.error", { fg = p.error })
  hl(0, "@comment.warning", { fg = p.warning })
  hl(0, "@comment.todo", { fg = p.bg, bg = p.accent1, bold = true })
  hl(0, "@comment.note", { fg = p.info })

  -- Markup
  hl(0, "@markup.strong", { bold = true })
  hl(0, "@markup.italic", { italic = true })
  hl(0, "@markup.strikethrough", { strikethrough = true })
  hl(0, "@markup.underline", { underline = true })
  hl(0, "@markup.heading", { fg = p.accent1, bold = true })
  hl(0, "@markup.heading.1", { fg = p.accent1, bold = true })
  hl(0, "@markup.heading.2", { fg = p.accent1, bold = true })
  hl(0, "@markup.heading.3", { fg = p.accent1, bold = true })
  hl(0, "@markup.heading.4", { fg = p.accent1 })
  hl(0, "@markup.heading.5", { fg = p.accent1 })
  hl(0, "@markup.heading.6", { fg = p.accent1 })
  hl(0, "@markup.quote", { fg = p.comment, italic = true })
  hl(0, "@markup.math", { fg = p.accent2 })
  hl(0, "@markup.link", { fg = p.accent1 })
  hl(0, "@markup.link.label", { fg = p.accent1 })
  hl(0, "@markup.link.url", { fg = p.accent1, underline = true })
  hl(0, "@markup.raw", { fg = p.string })
  hl(0, "@markup.raw.block", { fg = p.string })
  hl(0, "@markup.list", { fg = p.accent1 })
  hl(0, "@markup.list.checked", { fg = p.git_add })
  hl(0, "@markup.list.unchecked", { fg = p.fg_dark })

  -- Diff
  hl(0, "@diff.plus", { fg = p.git_add })
  hl(0, "@diff.minus", { fg = p.git_delete })
  hl(0, "@diff.delta", { fg = p.git_change })

  -- Tags (HTML/JSX)
  hl(0, "@tag", { fg = p.accent1 })
  hl(0, "@tag.builtin", { fg = p.accent1 })
  hl(0, "@tag.attribute", { fg = p.property })
  hl(0, "@tag.delimiter", { fg = p.punctuation })

  -- Misc
  hl(0, "@operator", { fg = p.operator })
  hl(0, "@none", {})

  -- ===========================================================================
  -- LSP SEMANTIC TOKENS
  -- ===========================================================================
  hl(0, "@lsp.type.class", { fg = p.type })
  hl(0, "@lsp.type.comment", { fg = p.comment, italic = true })
  hl(0, "@lsp.type.decorator", { fg = p.macro })
  hl(0, "@lsp.type.enum", { fg = p.type })
  hl(0, "@lsp.type.enumMember", { fg = p.constant })
  hl(0, "@lsp.type.function", { fg = p.func })
  hl(0, "@lsp.type.interface", { fg = p.type })
  hl(0, "@lsp.type.keyword", { fg = p.keyword })
  hl(0, "@lsp.type.macro", { fg = p.macro })
  hl(0, "@lsp.type.method", { fg = p.func })
  hl(0, "@lsp.type.namespace", { fg = p.namespace })
  hl(0, "@lsp.type.number", { fg = p.number })
  hl(0, "@lsp.type.operator", { fg = p.operator })
  hl(0, "@lsp.type.parameter", { fg = p.parameter })
  hl(0, "@lsp.type.property", { fg = p.property })
  hl(0, "@lsp.type.regexp", { fg = p.special })
  hl(0, "@lsp.type.string", { fg = p.string })
  hl(0, "@lsp.type.struct", { fg = p.type })
  hl(0, "@lsp.type.type", { fg = p.type })
  hl(0, "@lsp.type.typeParameter", { fg = p.type })
  hl(0, "@lsp.type.variable", { fg = p.variable })

  -- LSP modifiers
  hl(0, "@lsp.mod.deprecated", { strikethrough = true })
  hl(0, "@lsp.mod.readonly", { italic = true })
  hl(0, "@lsp.mod.defaultLibrary", {})
  hl(0, "@lsp.mod.async", {})

  -- ===========================================================================
  -- DIAGNOSTICS
  -- ===========================================================================
  hl(0, "DiagnosticError", { fg = p.error })
  hl(0, "DiagnosticWarn", { fg = p.warning })
  hl(0, "DiagnosticInfo", { fg = p.info })
  hl(0, "DiagnosticHint", { fg = p.hint })
  hl(0, "DiagnosticOk", { fg = p.git_add })

  hl(0, "DiagnosticVirtualTextError", { fg = p.error })
  hl(0, "DiagnosticVirtualTextWarn", { fg = p.warning })
  hl(0, "DiagnosticVirtualTextInfo", { fg = p.info })
  hl(0, "DiagnosticVirtualTextHint", { fg = p.hint })
  hl(0, "DiagnosticVirtualTextOk", { fg = p.git_add })

  hl(0, "DiagnosticUnderlineError", { undercurl = true, sp = p.error })
  hl(0, "DiagnosticUnderlineWarn", { undercurl = true, sp = p.warning })
  hl(0, "DiagnosticUnderlineInfo", { undercurl = true, sp = p.info })
  hl(0, "DiagnosticUnderlineHint", { undercurl = true, sp = p.hint })
  hl(0, "DiagnosticUnderlineOk", { undercurl = true, sp = p.git_add })

  hl(0, "DiagnosticFloatingError", { fg = p.error })
  hl(0, "DiagnosticFloatingWarn", { fg = p.warning })
  hl(0, "DiagnosticFloatingInfo", { fg = p.info })
  hl(0, "DiagnosticFloatingHint", { fg = p.hint })
  hl(0, "DiagnosticFloatingOk", { fg = p.git_add })

  hl(0, "DiagnosticSignError", { fg = p.error })
  hl(0, "DiagnosticSignWarn", { fg = p.warning })
  hl(0, "DiagnosticSignInfo", { fg = p.info })
  hl(0, "DiagnosticSignHint", { fg = p.hint })
  hl(0, "DiagnosticSignOk", { fg = p.git_add })

  -- ===========================================================================
  -- LSP
  -- ===========================================================================
  hl(0, "LspReferenceText", { bg = p.bg_light })
  hl(0, "LspReferenceRead", { bg = p.bg_light })
  hl(0, "LspReferenceWrite", { bg = p.bg_light })

  hl(0, "LspSignatureActiveParameter", { bg = p.selection })
  hl(0, "LspCodeLens", { fg = p.fg_dark })
  hl(0, "LspCodeLensSeparator", { fg = p.fg_dark })
  hl(0, "LspInlayHint", { fg = p.fg_dark, bg = p.bg_light })

  -- ===========================================================================
  -- GIT
  -- ===========================================================================
  hl(0, "DiffAdd", { bg = p.git_add .. "30" })
  hl(0, "DiffChange", { bg = p.git_change .. "30" })
  hl(0, "DiffDelete", { bg = p.git_delete .. "30" })
  hl(0, "DiffText", { bg = p.git_change .. "50" })

  hl(0, "Added", { fg = p.git_add })
  hl(0, "Changed", { fg = p.git_change })
  hl(0, "Removed", { fg = p.git_delete })

  -- ===========================================================================
  -- SPELLING
  -- ===========================================================================
  hl(0, "SpellBad", { undercurl = true, sp = p.error })
  hl(0, "SpellCap", { undercurl = true, sp = p.warning })
  hl(0, "SpellLocal", { undercurl = true, sp = p.info })
  hl(0, "SpellRare", { undercurl = true, sp = p.hint })

  -- ===========================================================================
  -- QUICK FIX
  -- ===========================================================================
  hl(0, "qfLineNr", { fg = p.line_nr })
  hl(0, "qfFileName", { fg = p.accent1 })

  -- ===========================================================================
  -- COMMON PLUGINS (Optional - uncomment if using these plugins)
  -- ===========================================================================

  -- nvim-cmp
  hl(0, "CmpItemAbbr", { fg = p.fg })
  hl(0, "CmpItemAbbrDeprecated", { fg = p.fg_dark, strikethrough = true })
  hl(0, "CmpItemAbbrMatch", { fg = p.accent1, bold = true })
  hl(0, "CmpItemAbbrMatchFuzzy", { fg = p.accent1, bold = true })
  hl(0, "CmpItemMenu", { fg = p.fg_dark })
  hl(0, "CmpItemKindDefault", { fg = p.fg_dark })
  hl(0, "CmpItemKindKeyword", { fg = p.keyword })
  hl(0, "CmpItemKindVariable", { fg = p.variable })
  hl(0, "CmpItemKindConstant", { fg = p.constant })
  hl(0, "CmpItemKindReference", { fg = p.variable })
  hl(0, "CmpItemKindValue", { fg = p.constant })
  hl(0, "CmpItemKindFunction", { fg = p.func })
  hl(0, "CmpItemKindMethod", { fg = p.func })
  hl(0, "CmpItemKindConstructor", { fg = p.type })
  hl(0, "CmpItemKindClass", { fg = p.type })
  hl(0, "CmpItemKindInterface", { fg = p.type })
  hl(0, "CmpItemKindStruct", { fg = p.type })
  hl(0, "CmpItemKindEvent", { fg = p.type })
  hl(0, "CmpItemKindEnum", { fg = p.type })
  hl(0, "CmpItemKindUnit", { fg = p.type })
  hl(0, "CmpItemKindModule", { fg = p.namespace })
  hl(0, "CmpItemKindProperty", { fg = p.property })
  hl(0, "CmpItemKindField", { fg = p.property })
  hl(0, "CmpItemKindTypeParameter", { fg = p.type })
  hl(0, "CmpItemKindEnumMember", { fg = p.constant })
  hl(0, "CmpItemKindOperator", { fg = p.operator })
  hl(0, "CmpItemKindSnippet", { fg = p.special })
  hl(0, "CmpItemKindText", { fg = p.fg })
  hl(0, "CmpItemKindFile", { fg = p.fg })
  hl(0, "CmpItemKindFolder", { fg = p.accent1 })
  hl(0, "CmpItemKindColor", { fg = p.special })

  -- Telescope
  hl(0, "TelescopeBorder", { fg = p.border })
  hl(0, "TelescopeNormal", { fg = p.fg, bg = p.bg_dark })
  hl(0, "TelescopePromptBorder", { fg = p.border })
  hl(0, "TelescopePromptNormal", { fg = p.fg })
  hl(0, "TelescopePromptPrefix", { fg = p.accent1 })
  hl(0, "TelescopePromptTitle", { fg = p.accent1, bold = true })
  hl(0, "TelescopePreviewTitle", { fg = p.accent1, bold = true })
  hl(0, "TelescopeResultsTitle", { fg = p.accent1, bold = true })
  hl(0, "TelescopeSelection", { bg = p.selection })
  hl(0, "TelescopeSelectionCaret", { fg = p.accent1 })
  hl(0, "TelescopeMatching", { fg = p.accent1, bold = true })

  -- Neo-tree
  hl(0, "NeoTreeNormal", { fg = p.fg, bg = p.bg_dark })
  hl(0, "NeoTreeNormalNC", { fg = p.fg, bg = p.bg_dark })
  hl(0, "NeoTreeDirectoryName", { fg = p.accent1 })
  hl(0, "NeoTreeDirectoryIcon", { fg = p.accent1 })
  hl(0, "NeoTreeRootName", { fg = p.accent1, bold = true })
  hl(0, "NeoTreeFileName", { fg = p.fg })
  hl(0, "NeoTreeFileIcon", { fg = p.fg })
  hl(0, "NeoTreeGitAdded", { fg = p.git_add })
  hl(0, "NeoTreeGitModified", { fg = p.git_change })
  hl(0, "NeoTreeGitDeleted", { fg = p.git_delete })
  hl(0, "NeoTreeGitConflict", { fg = p.error })
  hl(0, "NeoTreeGitUntracked", { fg = p.warning })
  hl(0, "NeoTreeIndentMarker", { fg = p.border })

  -- Gitsigns
  hl(0, "GitSignsAdd", { fg = p.git_add })
  hl(0, "GitSignsChange", { fg = p.git_change })
  hl(0, "GitSignsDelete", { fg = p.git_delete })
  hl(0, "GitSignsAddNr", { fg = p.git_add })
  hl(0, "GitSignsChangeNr", { fg = p.git_change })
  hl(0, "GitSignsDeleteNr", { fg = p.git_delete })
  hl(0, "GitSignsAddLn", { bg = p.git_add .. "30" })
  hl(0, "GitSignsChangeLn", { bg = p.git_change .. "30" })
  hl(0, "GitSignsDeleteLn", { bg = p.git_delete .. "30" })

  -- Indent blankline
  hl(0, "IblIndent", { fg = p.border })
  hl(0, "IblScope", { fg = p.accent1 })

  -- Which-key
  hl(0, "WhichKey", { fg = p.accent1 })
  hl(0, "WhichKeyGroup", { fg = p.accent2 })
  hl(0, "WhichKeyDesc", { fg = p.fg })
  hl(0, "WhichKeySeperator", { fg = p.fg_dark })
  hl(0, "WhichKeySeparator", { fg = p.fg_dark })
  hl(0, "WhichKeyFloat", { bg = p.bg_dark })
  hl(0, "WhichKeyValue", { fg = p.fg_dark })

  -- Lazy.nvim
  hl(0, "LazyButton", { fg = p.fg, bg = p.bg_light })
  hl(0, "LazyButtonActive", { fg = p.bg, bg = p.accent1 })
  hl(0, "LazyH1", { fg = p.bg, bg = p.accent1, bold = true })
  hl(0, "LazyH2", { fg = p.accent1, bold = true })
  hl(0, "LazySpecial", { fg = p.accent2 })
  hl(0, "LazyProgressDone", { fg = p.accent1 })
  hl(0, "LazyProgressTodo", { fg = p.border })

  -- Mason
  hl(0, "MasonNormal", { fg = p.fg, bg = p.bg_dark })
  hl(0, "MasonHeader", { fg = p.bg, bg = p.accent1, bold = true })
  hl(0, "MasonHighlight", { fg = p.accent1 })
  hl(0, "MasonHighlightBlock", { fg = p.bg, bg = p.accent1 })
  hl(0, "MasonHighlightBlockBold", { fg = p.bg, bg = p.accent1, bold = true })
  hl(0, "MasonMuted", { fg = p.fg_dark })
  hl(0, "MasonMutedBlock", { fg = p.bg, bg = p.fg_dark })

  -- Dashboard / Alpha
  hl(0, "DashboardHeader", { fg = p.accent1 })
  hl(0, "DashboardCenter", { fg = p.fg })
  hl(0, "DashboardFooter", { fg = p.fg_dark })
  hl(0, "DashboardShortCut", { fg = p.accent2 })

  -- Noice
  hl(0, "NoiceCmdline", { fg = p.fg })
  hl(0, "NoiceCmdlineIcon", { fg = p.accent1 })
  hl(0, "NoiceCmdlineIconSearch", { fg = p.warning })
  hl(0, "NoiceCmdlinePopupBorder", { fg = p.border })
  hl(0, "NoiceCmdlinePopupTitle", { fg = p.accent1 })
  hl(0, "NoiceConfirm", { fg = p.fg, bg = p.bg_dark })
  hl(0, "NoiceConfirmBorder", { fg = p.border })
end

return M
