-- 진단 하이라이트
local M = {}

function M.setup(hl, p)
  local util = require("bityoungjae.util")

  hl(0, "DiagnosticError", { fg = p.error })
  hl(0, "DiagnosticWarn", { fg = p.warning })
  hl(0, "DiagnosticInfo", { fg = p.info })
  hl(0, "DiagnosticHint", { fg = p.hint })
  hl(0, "DiagnosticOk", { fg = p.git_add })

  hl(0, "DiagnosticVirtualTextError", { fg = p.error, bg = util.blend(p.error, 0.12, p.bg) })
  hl(0, "DiagnosticVirtualTextWarn", { fg = p.warning, bg = util.blend(p.warning, 0.12, p.bg) })
  hl(0, "DiagnosticVirtualTextInfo", { fg = p.info, bg = util.blend(p.info, 0.12, p.bg) })
  hl(0, "DiagnosticVirtualTextHint", { fg = p.hint, bg = util.blend(p.hint, 0.12, p.bg) })
  hl(0, "DiagnosticVirtualTextOk", { fg = p.git_add, bg = util.blend(p.git_add, 0.12, p.bg) })

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
end

return M
