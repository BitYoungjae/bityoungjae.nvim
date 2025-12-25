-- 들여쓰기 가이드라인 하이라이트 설정
local M = {}

function M.setup(hl, p)
  -- 일반 들여쓰기 라인: Steel Edge (미세하게)
  hl(0, "IblIndent", { fg = p.border })
  -- 현재 스코프 라인: Soft Sky (부드러운 강조)
  hl(0, "IblScope", { fg = p.func })
end

return M
