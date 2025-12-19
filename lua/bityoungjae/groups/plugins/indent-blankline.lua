-- 들여쓰기 가이드라인 하이라이트 설정
local M = {}

function M.setup(hl, p)
  hl(0, "IblIndent", { fg = p.border })
  hl(0, "IblScope", { fg = p.accent1 })
end

return M
