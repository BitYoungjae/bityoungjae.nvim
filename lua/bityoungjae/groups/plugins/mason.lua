-- Mason 하이라이트 설정
local M = {}

function M.setup(hl, p)
  hl(0, "MasonNormal", { fg = p.fg, bg = p.bg_dark })
  hl(0, "MasonHeader", { fg = p.bg, bg = p.accent1, bold = true })
  hl(0, "MasonHighlight", { fg = p.accent1 })
  hl(0, "MasonHighlightBlock", { fg = p.bg, bg = p.accent1 })
  hl(0, "MasonHighlightBlockBold", { fg = p.bg, bg = p.accent1, bold = true })
  hl(0, "MasonMuted", { fg = p.fg_dark })
  hl(0, "MasonMutedBlock", { fg = p.bg, bg = p.fg_dark })
end

return M
