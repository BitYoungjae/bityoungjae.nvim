-- 에디터 UI 하이라이트
local M = {}

function M.setup(hl, p)
  hl(0, "Normal", { fg = p.fg, bg = p.bg })
  hl(0, "NormalNC", { fg = p.fg, bg = p.bg })
  hl(0, "NormalFloat", { fg = p.fg, bg = p.float })
  hl(0, "FloatBorder", { fg = p.float_border, bg = p.float })
  hl(0, "FloatTitle", { fg = p.ui_accent, bg = p.float, bold = true })

  hl(0, "Cursor", { fg = p.bg, bg = p.cursor })
  hl(0, "CursorIM", { fg = p.bg, bg = p.cursor })
  hl(0, "CursorLine", { bg = p.cursor_line })
  hl(0, "CursorColumn", { bg = p.cursor_line })
  hl(0, "TermCursor", { fg = p.bg, bg = p.cursor })
  hl(0, "TermCursorNC", { fg = p.bg, bg = p.fg_dark })

  hl(0, "LineNr", { fg = p.line_nr })
  hl(0, "CursorLineNr", { fg = p.line_nr_cur, bold = true })
  hl(0, "LineNrAbove", { fg = p.line_nr })
  hl(0, "LineNrBelow", { fg = p.line_nr })

  hl(0, "Visual", { bg = p.visual })
  hl(0, "VisualNOS", { bg = p.visual })

  hl(0, "Search", { fg = p.fg_light, bg = p.bg_search })
  hl(0, "IncSearch", { fg = p.fg_light, bg = p.bg_search_inc })
  hl(0, "CurSearch", { fg = p.fg_light, bg = p.bg_search_inc })
  hl(0, "Substitute", { fg = p.fg_light, bg = p.bg_search })

  hl(0, "VertSplit", { fg = p.border })
  hl(0, "WinSeparator", { fg = p.border })
  hl(0, "WinBar", { fg = p.fg, bg = p.bg })
  hl(0, "WinBarNC", { fg = p.fg_dark, bg = p.bg })

  hl(0, "StatusLine", { fg = p.fg, bg = p.bg_dark })
  hl(0, "StatusLineNC", { fg = p.fg_dark, bg = p.bg_dark })

  hl(0, "TabLine", { fg = p.fg_dark, bg = p.bg_dark })
  hl(0, "TabLineFill", { bg = p.bg_dark })
  hl(0, "TabLineSel", { fg = p.fg, bg = p.bg, bold = true })

  hl(0, "Pmenu", { fg = p.fg, bg = p.bg_dark })
  hl(0, "PmenuSel", { fg = p.fg, bg = p.selection })
  hl(0, "PmenuSbar", { bg = p.bg_dark })
  hl(0, "PmenuThumb", { bg = p.fg_dark })
  hl(0, "PmenuKind", { fg = p.ui_accent, bg = p.bg_dark })
  hl(0, "PmenuKindSel", { fg = p.ui_accent, bg = p.selection })
  hl(0, "PmenuExtra", { fg = p.fg_dark, bg = p.bg_dark })
  hl(0, "PmenuExtraSel", { fg = p.fg_dark, bg = p.selection })

  hl(0, "MsgArea", { fg = p.fg })
  hl(0, "MsgSeparator", { fg = p.border })
  hl(0, "ModeMsg", { fg = p.ui_accent, bold = true })
  hl(0, "MoreMsg", { fg = p.ui_accent })
  hl(0, "Question", { fg = p.ui_accent })
  hl(0, "ErrorMsg", { fg = p.error })
  hl(0, "WarningMsg", { fg = p.warning })

  hl(0, "SignColumn", { fg = p.fg_dark, bg = p.bg })
  hl(0, "FoldColumn", { fg = p.fg_dark, bg = p.bg })
  hl(0, "ColorColumn", { bg = p.bg_light })
  hl(0, "Folded", { fg = p.fg_dark, bg = p.bg_light })

  hl(0, "Directory", { fg = p.ui_accent })
  hl(0, "Title", { fg = p.ui_accent, bold = true })
  hl(0, "NonText", { fg = p.whitespace })
  hl(0, "EndOfBuffer", { fg = p.bg })
  hl(0, "Whitespace", { fg = p.whitespace })
  hl(0, "SpecialKey", { fg = p.line_nr })
  hl(0, "Conceal", { fg = p.fg_dark })
  -- nvim 기본 링크(ComplHint→NonText)는 극도 디밍 슬롯이라 완성 힌트가 묻힌다
  hl(0, "ComplHint", { fg = p.ghost })
  hl(0, "MatchParen", { fg = p.cursor, bold = true })
  hl(0, "WildMenu", { fg = p.bg, bg = p.ui_accent })

  hl(0, "SpellBad", { undercurl = true, sp = p.error })
  hl(0, "SpellCap", { undercurl = true, sp = p.warning })
  hl(0, "SpellLocal", { undercurl = true, sp = p.info })
  hl(0, "SpellRare", { undercurl = true, sp = p.hint })

  hl(0, "qfLineNr", { fg = p.line_nr })
  hl(0, "qfFileName", { fg = p.ui_accent })
end

return M
