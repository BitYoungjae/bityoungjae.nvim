-- mini.indentscope 하이라이트
local M = {}

function M.setup(hl, p)
  -- MiniIndentscopeSymbol: 현재 스코프를 표시하는 세로선
  -- tokyonight의 blue1과 매치되도록 accent2 (Slate Blue) 사용
  hl(0, "MiniIndentscopeSymbol", { fg = p.accent2, nocombine = true })

  -- MiniIndentscopePrefix: 보이지 않게 설정
  hl(0, "MiniIndentscopePrefix", { nocombine = true })
end

return M
