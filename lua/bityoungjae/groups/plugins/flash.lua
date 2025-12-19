-- flash.nvim 하이라이트
local M = {}

function M.setup(hl, p)
  -- FlashBackdrop: 배경의 흐릿한 텍스트
  hl(0, "FlashBackdrop", { fg = p.fg_dark })

  -- FlashLabel: 표시되는 점프 레이블
  -- 마젠타 계열의 keyword (Thistle) 색상을 굵게 강조
  hl(0, "FlashLabel", { bg = p.keyword, fg = p.fg, bold = true })
end

return M
