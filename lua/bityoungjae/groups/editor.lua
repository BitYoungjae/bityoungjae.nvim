-- 에디터 UI 하이라이트
local M = {}

function M.setup(hl, p)
  -- 기본
  hl(0, "Normal", { fg = p.fg, bg = p.bg })
  hl(0, "NormalNC", { fg = p.fg, bg = p.bg })
  hl(0, "NormalFloat", { fg = p.fg, bg = p.bg_dark })
  hl(0, "FloatBorder", { fg = p.border, bg = p.bg_dark })
  hl(0, "FloatTitle", { fg = p.accent1, bg = p.bg_dark, bold = true })

  -- 커서 (Cyber Pink)
  hl(0, "Cursor", { fg = p.bg, bg = p.accent1 })
  hl(0, "CursorIM", { fg = p.bg, bg = p.accent1 })
  hl(0, "CursorLine", { bg = p.cursor_line })
  hl(0, "CursorColumn", { bg = p.cursor_line })
  hl(0, "TermCursor", { fg = p.bg, bg = p.accent1 })
  hl(0, "TermCursorNC", { fg = p.bg, bg = p.fg_dark })

  -- 줄 번호
  hl(0, "LineNr", { fg = p.line_nr })
  hl(0, "CursorLineNr", { fg = p.line_nr_cur, bold = true })
  hl(0, "LineNrAbove", { fg = p.line_nr })
  hl(0, "LineNrBelow", { fg = p.line_nr })

  -- 선택 영역
  hl(0, "Visual", { bg = p.selection })
  hl(0, "VisualNOS", { bg = p.selection })

  -- 검색
  hl(0, "Search", { fg = p.bg, bg = p.accent1 })
  hl(0, "IncSearch", { fg = p.bg, bg = p.accent2 })
  hl(0, "CurSearch", { fg = p.bg, bg = p.accent2 })
  hl(0, "Substitute", { fg = p.bg, bg = p.accent1 })

  -- 분할 창
  hl(0, "VertSplit", { fg = p.border })
  hl(0, "WinSeparator", { fg = p.border })
  hl(0, "WinBar", { fg = p.fg, bg = p.bg })
  hl(0, "WinBarNC", { fg = p.fg_dark, bg = p.bg })

  -- 상태 표시줄
  hl(0, "StatusLine", { fg = p.fg, bg = p.bg_dark })
  hl(0, "StatusLineNC", { fg = p.fg_dark, bg = p.bg_dark })

  -- 탭 라인
  hl(0, "TabLine", { fg = p.fg_dark, bg = p.bg_dark })
  hl(0, "TabLineFill", { bg = p.bg_dark })
  hl(0, "TabLineSel", { fg = p.fg, bg = p.bg, bold = true })

  -- 팝업 메뉴 (자동완성)
  hl(0, "Pmenu", { fg = p.fg, bg = p.bg_dark })
  hl(0, "PmenuSel", { fg = p.fg, bg = p.selection })
  hl(0, "PmenuSbar", { bg = p.bg_dark })
  hl(0, "PmenuThumb", { bg = p.fg_dark })
  hl(0, "PmenuKind", { fg = p.accent1, bg = p.bg_dark })
  hl(0, "PmenuKindSel", { fg = p.accent1, bg = p.selection })
  hl(0, "PmenuExtra", { fg = p.fg_dark, bg = p.bg_dark })
  hl(0, "PmenuExtraSel", { fg = p.fg_dark, bg = p.selection })

  -- 메시지
  hl(0, "MsgArea", { fg = p.fg })
  hl(0, "MsgSeparator", { fg = p.border })
  hl(0, "ModeMsg", { fg = p.accent1, bold = true })
  hl(0, "MoreMsg", { fg = p.accent1 })
  hl(0, "Question", { fg = p.accent1 })
  hl(0, "ErrorMsg", { fg = p.error })
  hl(0, "WarningMsg", { fg = p.warning })

  -- 컬럼과 사인
  hl(0, "SignColumn", { fg = p.fg_dark, bg = p.bg })
  hl(0, "FoldColumn", { fg = p.fg_dark, bg = p.bg })
  hl(0, "ColorColumn", { bg = p.bg_light })
  hl(0, "Folded", { fg = p.fg_dark, bg = p.bg_light })

  -- 기타
  hl(0, "Directory", { fg = p.accent1 })
  hl(0, "Title", { fg = p.accent1, bold = true })
  hl(0, "NonText", { fg = p.fg_dark })
  hl(0, "EndOfBuffer", { fg = p.bg })
  hl(0, "Whitespace", { fg = p.fg_dark })
  hl(0, "SpecialKey", { fg = p.fg_dark })
  hl(0, "Conceal", { fg = p.fg_dark })
  hl(0, "MatchParen", { fg = p.accent2, bold = true })
  hl(0, "WildMenu", { fg = p.bg, bg = p.accent1 })

  -- 맞춤법 검사
  hl(0, "SpellBad", { undercurl = true, sp = p.error })
  hl(0, "SpellCap", { undercurl = true, sp = p.warning })
  hl(0, "SpellLocal", { undercurl = true, sp = p.info })
  hl(0, "SpellRare", { undercurl = true, sp = p.hint })

  -- 퀵픽스
  hl(0, "qfLineNr", { fg = p.line_nr })
  hl(0, "qfFileName", { fg = p.accent1 })
end

return M
