-- Telescope 하이라이트 설정
local M = {}

function M.setup(hl, p)
  hl(0, "TelescopeBorder", { fg = p.border })
  hl(0, "TelescopeNormal", { fg = p.fg, bg = p.bg_dark })
  hl(0, "TelescopePromptBorder", { fg = p.border })
  hl(0, "TelescopePromptNormal", { fg = p.fg })
  hl(0, "TelescopePromptPrefix", { fg = p.ui_accent })
  hl(0, "TelescopePromptTitle", { fg = p.ui_accent, bold = true })
  hl(0, "TelescopePreviewTitle", { fg = p.func, bold = true })
  hl(0, "TelescopeResultsTitle", { fg = p.property, bold = true })
  hl(0, "TelescopeSelection", { bg = p.selection })
  hl(0, "TelescopeSelectionCaret", { fg = p.ui_accent })
  hl(0, "TelescopeMatching", { fg = p.ui_accent, bold = true })
end

return M
