-- Telescope 하이라이트 설정
local M = {}

function M.setup(hl, p)
  hl(0, "TelescopeBorder", { fg = p.border })
  hl(0, "TelescopeNormal", { fg = p.fg, bg = p.bg_dark })
  hl(0, "TelescopePromptBorder", { fg = p.border })
  hl(0, "TelescopePromptNormal", { fg = p.fg })
  hl(0, "TelescopePromptPrefix", { fg = p.accent1 })
  hl(0, "TelescopePromptTitle", { fg = p.accent1, bold = true })
  hl(0, "TelescopePreviewTitle", { fg = p.accent1, bold = true })
  hl(0, "TelescopeResultsTitle", { fg = p.accent1, bold = true })
  hl(0, "TelescopeSelection", { bg = p.selection })
  hl(0, "TelescopeSelectionCaret", { fg = p.accent1 })
  hl(0, "TelescopeMatching", { fg = p.accent1, bold = true })
end

return M
