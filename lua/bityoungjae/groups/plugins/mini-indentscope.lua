-- mini.indentscope 하이라이트
local M = {}

function M.setup(hl, p)
  -- MiniIndentscopeSymbol: 현재 스코프를 표시하는 세로선
  -- Warm Sand (따뜻한 모래색)로 스코프 강조
  hl(0, "MiniIndentscopeSymbol", { fg = p.type, nocombine = true })

  -- MiniIndentscopePrefix: 보이지 않게 설정
  hl(0, "MiniIndentscopePrefix", { nocombine = true })
end

return M
