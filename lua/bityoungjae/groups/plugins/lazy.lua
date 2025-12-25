-- Lazy.nvim 하이라이트 설정
local M = {}

function M.setup(hl, p)
  -- 버튼: Night Mist 배경
  hl(0, "LazyButton", { fg = p.fg, bg = p.bg_light })
  -- 활성 버튼: Soft Rose (강조)
  hl(0, "LazyButtonActive", { fg = p.bg, bg = p.constant })
  -- H1 헤더: Soft Rose 배경
  hl(0, "LazyH1", { fg = p.bg, bg = p.constant, bold = true })
  -- H2 헤더: Soft Rose 텍스트
  hl(0, "LazyH2", { fg = p.constant, bold = true })
  -- 특수 항목: Warm Sand
  hl(0, "LazySpecial", { fg = p.type })
  -- 완료된 진행: Soft Rose
  hl(0, "LazyProgressDone", { fg = p.constant })
  -- 대기 중인 진행: Steel Edge
  hl(0, "LazyProgressTodo", { fg = p.border })
end

return M
