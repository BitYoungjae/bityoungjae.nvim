-- mini.indentscope 하이라이트
local M = {}

function M.setup(hl, p)
  -- IblScope 와 동일하게 함수색(형광)으로 현재 스코프만 표시
  hl(0, "MiniIndentscopeSymbol", { fg = p.func, nocombine = true })
  hl(0, "MiniIndentscopePrefix", { nocombine = true })
end

return M
