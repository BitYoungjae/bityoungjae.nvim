-- trouble.nvim 하이라이트
local M = {}

function M.setup(hl, p)
  -- trouble 리스트 텍스트
  hl(0, "TroubleText", { fg = p.fg })

  -- 개수 배지 (염주 배지에 어두운 숫자 — 8.9:1)
  hl(0, "TroubleCount", { fg = p.bg, bg = p.keyword, bold = true })

  -- trouble 창의 일반 텍스트
  hl(0, "TroubleNormal", { fg = p.fg, bg = p.bg_dark })
end

return M
