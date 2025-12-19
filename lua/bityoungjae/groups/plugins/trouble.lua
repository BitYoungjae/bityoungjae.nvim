-- trouble.nvim 하이라이트
local M = {}

function M.setup(hl, p)
  -- trouble 리스트 텍스트
  hl(0, "TroubleText", { fg = p.fg_dark })

  -- 개수 배지
  hl(0, "TroubleCount", { fg = p.keyword, bg = p.line_nr })

  -- trouble 창의 일반 텍스트
  hl(0, "TroubleNormal", { fg = p.fg, bg = p.bg_dark })
end

return M
