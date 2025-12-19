-- nvim-treesitter-context 하이라이트
local M = {}

function M.setup(hl, p)
  local util = require("bityoungjae.util")

  -- fg_dark와 bg를 혼합하여 은은한 배경 생성
  -- fg_dark의 40%와 bg의 60%를 혼합하여 은은하게 강조
  local context_bg = util.darken(p.fg_dark, 0.4, p.bg)

  hl(0, "TreesitterContext", { bg = context_bg })
  hl(0, "TreesitterContextLineNumber", { fg = p.line_nr, bg = context_bg })
  hl(0, "TreesitterContextSeparator", { fg = p.border, bg = context_bg })
end

return M
