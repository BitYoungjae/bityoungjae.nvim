-- Which-key 하이라이트 설정
local M = {}

function M.setup(hl, p)
  hl(0, "WhichKey", { fg = p.accent1 })
  hl(0, "WhichKeyGroup", { fg = p.accent2 })
  hl(0, "WhichKeyDesc", { fg = p.fg })
  hl(0, "WhichKeySeperator", { fg = p.fg_dark })
  hl(0, "WhichKeySeparator", { fg = p.fg_dark })
  hl(0, "WhichKeyFloat", { bg = p.bg_dark })
  hl(0, "WhichKeyValue", { fg = p.fg_dark })
end

return M
