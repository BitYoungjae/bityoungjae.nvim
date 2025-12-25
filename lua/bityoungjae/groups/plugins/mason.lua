-- Mason 하이라이트 설정
local M = {}

function M.setup(hl, p)
  -- 기본 창: 팝업 배경
  hl(0, "MasonNormal", { fg = p.fg, bg = p.bg_dark })
  -- 헤더: Soft Rose 배경
  hl(0, "MasonHeader", { fg = p.bg, bg = p.constant, bold = true })
  -- 강조 텍스트: Soft Rose
  hl(0, "MasonHighlight", { fg = p.constant })
  -- 강조 블록: Soft Rose 배경
  hl(0, "MasonHighlightBlock", { fg = p.bg, bg = p.constant })
  -- 강조 블록 (볼드): Soft Rose 배경
  hl(0, "MasonHighlightBlockBold", { fg = p.bg, bg = p.constant, bold = true })
  -- 뮤트 텍스트: Slate Smoke
  hl(0, "MasonMuted", { fg = p.comment })
  -- 뮤트 블록: Slate Smoke 배경
  hl(0, "MasonMutedBlock", { fg = p.bg, bg = p.comment })
end

return M
