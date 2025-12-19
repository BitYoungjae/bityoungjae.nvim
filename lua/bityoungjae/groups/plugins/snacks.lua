-- snacks.nvim 하이라이트
local M = {}

function M.setup(hl, p)
  local util = require("bityoungjae.util")

  -- 알림 (Debug)
  hl(0, "SnacksNotifierDebug", { fg = p.fg, bg = p.bg })
  hl(0, "SnacksNotifierBorderDebug", { fg = util.darken(p.comment, 0.6), bg = p.bg })
  hl(0, "SnacksNotifierIconDebug", { fg = p.comment })
  hl(0, "SnacksNotifierTitleDebug", { fg = p.comment })

  -- 알림 (Error)
  hl(0, "SnacksNotifierError", { fg = p.fg, bg = p.bg })
  hl(0, "SnacksNotifierBorderError", { fg = util.darken(p.error, 0.6), bg = p.bg })
  hl(0, "SnacksNotifierIconError", { fg = p.error })
  hl(0, "SnacksNotifierTitleError", { fg = p.error })

  -- 알림 (Info)
  hl(0, "SnacksNotifierInfo", { fg = p.fg, bg = p.bg })
  hl(0, "SnacksNotifierBorderInfo", { fg = util.darken(p.info, 0.6), bg = p.bg })
  hl(0, "SnacksNotifierIconInfo", { fg = p.info })
  hl(0, "SnacksNotifierTitleInfo", { fg = p.info })

  -- 알림 (Trace)
  hl(0, "SnacksNotifierTrace", { fg = p.fg, bg = p.bg })
  hl(0, "SnacksNotifierBorderTrace", { fg = util.darken(p.keyword, 0.6), bg = p.bg })
  hl(0, "SnacksNotifierIconTrace", { fg = p.keyword })
  hl(0, "SnacksNotifierTitleTrace", { fg = p.keyword })

  -- 알림 (Warning)
  hl(0, "SnacksNotifierWarn", { fg = p.fg, bg = p.bg })
  hl(0, "SnacksNotifierBorderWarn", { fg = util.darken(p.warning, 0.6), bg = p.bg })
  hl(0, "SnacksNotifierIconWarn", { fg = p.warning })
  hl(0, "SnacksNotifierTitleWarn", { fg = p.warning })

  -- 대시보드
  hl(0, "SnacksDashboardDesc", { fg = p.accent3 })
  hl(0, "SnacksDashboardFooter", { fg = p.accent2 })
  hl(0, "SnacksDashboardHeader", { fg = p.accent1 })
  hl(0, "SnacksDashboardIcon", { fg = p.accent2 })
  hl(0, "SnacksDashboardKey", { fg = p.number })
  hl(0, "SnacksDashboardSpecial", { fg = p.keyword })
  hl(0, "SnacksDashboardDir", { fg = p.fg_dark })

  -- 프로파일러
  hl(0, "SnacksProfilerIconInfo", { bg = util.darken(p.info, 0.3), fg = p.info })
  hl(0, "SnacksProfilerBadgeInfo", { bg = util.darken(p.info, 0.15), fg = p.info })
  hl(0, "SnacksFooterKey", { link = "SnacksProfilerIconInfo" })
  hl(0, "SnacksFooterDesc", { link = "SnacksProfilerBadgeInfo" })
  hl(0, "SnacksProfilerIconTrace", { bg = util.darken(p.accent2, 0.3), fg = p.fg_dark })
  hl(0, "SnacksProfilerBadgeTrace", { bg = util.darken(p.accent2, 0.15), fg = p.fg_dark })

  -- 들여쓰기
  hl(0, "SnacksIndent", { fg = p.line_nr, nocombine = true })
  hl(0, "SnacksIndentScope", { fg = p.accent2, nocombine = true })

  -- Zen & Input
  hl(0, "SnacksZenIcon", { fg = p.keyword })
  hl(0, "SnacksInputIcon", { fg = p.accent2 })
  hl(0, "SnacksInputBorder", { fg = p.warning })
  hl(0, "SnacksInputTitle", { fg = p.warning })

  -- 피커
  hl(0, "SnacksPickerInputBorder", { fg = p.number, bg = p.bg_dark })
  hl(0, "SnacksPickerInputTitle", { fg = p.number, bg = p.bg_dark })
  hl(0, "SnacksPickerBoxTitle", { fg = p.number, bg = p.bg_dark })
  hl(0, "SnacksPickerSelected", { fg = p.keyword })
  hl(0, "SnacksPickerToggle", { link = "SnacksProfilerBadgeInfo" })
  hl(0, "SnacksPickerPickWinCurrent", { fg = p.fg, bg = p.keyword, bold = true })
  hl(0, "SnacksPickerPickWin", { fg = p.fg, bg = p.selection, bold = true })

  -- GitHub 연동
  hl(0, "SnacksGhLabel", { fg = p.accent2, bold = true })
  hl(0, "SnacksGhDiffHeader", { bg = util.darken(p.accent2, 0.15), fg = p.accent2 })

  -- 무지개 들여쓰기 (선택 사항 - 팔레트 색상 사용)
  local rainbow_colors = {
    p.error,      -- 빨강
    p.number,     -- 주황
    p.warning,    -- 노랑
    p.string,     -- 초록
    p.info,       -- 파랑
    p.keyword,    -- 보라
  }
  for i, color in ipairs(rainbow_colors) do
    hl(0, "SnacksIndent" .. i, { fg = color, nocombine = true })
  end
end

return M
