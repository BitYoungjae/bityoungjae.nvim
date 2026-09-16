-- snacks.nvim 하이라이트
local M = {}

function M.setup(hl, p)
  local util = require("bityoungjae.util")

  hl(0, "SnacksNotifierDebug", { fg = p.fg, bg = p.bg })
  hl(0, "SnacksNotifierBorderDebug", { fg = util.darken(p.comment, 0.6), bg = p.bg })
  hl(0, "SnacksNotifierIconDebug", { fg = p.comment })
  hl(0, "SnacksNotifierTitleDebug", { fg = p.comment })

  hl(0, "SnacksNotifierError", { fg = p.fg, bg = p.bg })
  hl(0, "SnacksNotifierBorderError", { fg = util.darken(p.error, 0.6), bg = p.bg })
  hl(0, "SnacksNotifierIconError", { fg = p.error })
  hl(0, "SnacksNotifierTitleError", { fg = p.error })

  hl(0, "SnacksNotifierInfo", { fg = p.fg, bg = p.bg })
  hl(0, "SnacksNotifierBorderInfo", { fg = util.darken(p.info, 0.6), bg = p.bg })
  hl(0, "SnacksNotifierIconInfo", { fg = p.info })
  hl(0, "SnacksNotifierTitleInfo", { fg = p.info })

  hl(0, "SnacksNotifierTrace", { fg = p.fg, bg = p.bg })
  hl(0, "SnacksNotifierBorderTrace", { fg = util.darken(p.keyword, 0.6), bg = p.bg })
  hl(0, "SnacksNotifierIconTrace", { fg = p.keyword })
  hl(0, "SnacksNotifierTitleTrace", { fg = p.keyword })

  hl(0, "SnacksNotifierWarn", { fg = p.fg, bg = p.bg })
  hl(0, "SnacksNotifierBorderWarn", { fg = util.darken(p.warning, 0.6), bg = p.bg })
  hl(0, "SnacksNotifierIconWarn", { fg = p.warning })
  hl(0, "SnacksNotifierTitleWarn", { fg = p.warning })

  hl(0, "SnacksDashboardDesc", { fg = p.property })
  hl(0, "SnacksDashboardFooter", { fg = p.type })
  hl(0, "SnacksDashboardHeader", { fg = p.ui_accent })
  hl(0, "SnacksDashboardIcon", { fg = p.func })
  hl(0, "SnacksDashboardKey", { fg = p.number })
  hl(0, "SnacksDashboardSpecial", { fg = p.keyword })
  hl(0, "SnacksDashboardDir", { fg = p.fg_dark })

  hl(0, "SnacksProfilerIconInfo", { bg = util.darken(p.info, 0.3), fg = p.info })
  hl(0, "SnacksProfilerBadgeInfo", { bg = util.darken(p.info, 0.15), fg = p.info })
  hl(0, "SnacksFooterKey", { link = "SnacksProfilerIconInfo" })
  hl(0, "SnacksFooterDesc", { link = "SnacksProfilerBadgeInfo" })
  hl(0, "SnacksProfilerIconTrace", { bg = util.darken(p.type, 0.3), fg = p.fg_dark })
  hl(0, "SnacksProfilerBadgeTrace", { bg = util.darken(p.type, 0.15), fg = p.fg_dark })

  hl(0, "SnacksIndent", { fg = p.line_nr, nocombine = true })
  hl(0, "SnacksIndentScope", { fg = p.func, nocombine = true })

  hl(0, "SnacksZenIcon", { fg = p.keyword })
  hl(0, "SnacksInputIcon", { fg = p.func })
  hl(0, "SnacksInputBorder", { fg = p.border })
  hl(0, "SnacksInputTitle", { fg = p.ui_accent })

  hl(0, "SnacksPickerInputBorder", { fg = p.func, bg = p.bg_dark })
  hl(0, "SnacksPickerInputTitle", { fg = p.func, bg = p.bg_dark })
  hl(0, "SnacksPickerBoxTitle", { fg = p.func, bg = p.bg_dark })
  hl(0, "SnacksPickerSelected", { fg = p.keyword })
  hl(0, "SnacksPickerToggle", { link = "SnacksProfilerBadgeInfo" })
  hl(0, "SnacksPickerPickWinCurrent", { fg = p.bg, bg = p.keyword, bold = true })
  hl(0, "SnacksPickerPickWin", { fg = p.fg, bg = p.selection, bold = true })

  -- snacks 기본값은 ignored·hidden·경로 접두사 등을 NonText(리스트 문자용
  -- 극도 디밍 슬롯)로 연결한다. 무시된 항목도 읽혀야 하므로 주석 톤으로 재정의.
  local dim_text = p.comment
  hl(0, "SnacksPickerPathIgnored", { fg = dim_text })
  hl(0, "SnacksPickerPathHidden", { fg = dim_text })
  hl(0, "SnacksPickerDir", { fg = dim_text })
  hl(0, "SnacksPickerTotals", { fg = dim_text })
  hl(0, "SnacksPickerUnselected", { fg = dim_text })
  hl(0, "SnacksPickerBufFlags", { fg = dim_text })
  hl(0, "SnacksPickerKeymapRhs", { fg = dim_text })
  hl(0, "SnacksPickerGitStatusIgnored", { fg = dim_text })
  hl(0, "SnacksPickerGitStatusUntracked", { fg = dim_text })
  hl(0, "SnacksPickerFile", { fg = p.fg })
  hl(0, "SnacksPickerDirectory", { fg = p.ui_accent })

  hl(0, "SnacksGhLabel", { fg = p.type, bold = true })
  hl(0, "SnacksGhDiffHeader", { bg = util.darken(p.type, 0.15), fg = p.type })

  -- 저채도 남색 스텝 (에러 빨강을 1번에 쓰지 않음)
  local rainbow = {
    util.blend(p.func, 0.22, p.bg),
    util.blend(p.property, 0.22, p.bg),
    util.blend(p.keyword, 0.22, p.bg),
    util.blend(p.string, 0.22, p.bg),
    util.blend(p.type, 0.22, p.bg),
    util.blend(p.cursor, 0.22, p.bg),
  }
  for i, color in ipairs(rainbow) do
    hl(0, "SnacksIndent" .. i, { fg = color, nocombine = true })
  end
end

return M
