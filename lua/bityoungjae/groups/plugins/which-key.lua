-- Which-key 하이라이트 설정
local M = {}

function M.setup(hl, p)
  hl(0, "WhichKey", { fg = p.ui_accent })
  hl(0, "WhichKeyGroup", { fg = p.type })
  hl(0, "WhichKeyDesc", { fg = p.fg })
  hl(0, "WhichKeySeperator", { fg = p.comment })
  hl(0, "WhichKeySeparator", { fg = p.comment })
  hl(0, "WhichKeyFloat", { bg = p.bg_dark })
  hl(0, "WhichKeyValue", { fg = p.comment })
end

return M
