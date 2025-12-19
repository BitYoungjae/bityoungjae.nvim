-- grug-far.nvim 하이라이트
local M = {}

function M.setup(hl, p)
  -- 도움말 섹션
  hl(0, "GrugFarHelpHeader", { fg = p.comment })
  hl(0, "GrugFarHelpHeaderKey", { fg = p.accent3 })

  -- 입력 필드
  hl(0, "GrugFarInputLabel", { fg = p.accent2 })
  hl(0, "GrugFarInputPlaceholder", { fg = p.fg_dark })

  -- 결과 섹션
  hl(0, "GrugFarResultsChangeIndicator", { fg = p.git_change })
  hl(0, "GrugFarResultsHeader", { fg = p.warning })
  hl(0, "GrugFarResultsLineColumn", { fg = p.fg_dark })
  hl(0, "GrugFarResultsLineNo", { fg = p.fg_dark })
  hl(0, "GrugFarResultsMatch", { fg = p.bg, bg = p.error })
  hl(0, "GrugFarResultsStats", { fg = p.info })
end

return M
