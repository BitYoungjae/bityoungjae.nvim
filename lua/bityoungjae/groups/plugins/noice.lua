-- Noice 하이라이트 설정
local M = {}

function M.setup(hl, p)
  hl(0, "NoiceCmdline", { fg = p.fg })
  hl(0, "NoiceCmdlineIcon", { fg = p.ui_accent })
  hl(0, "NoiceCmdlineIconSearch", { fg = p.func })
  hl(0, "NoiceCmdlinePopupBorder", { fg = p.border })
  hl(0, "NoiceCmdlinePopupTitle", { fg = p.ui_accent })
  hl(0, "NoiceConfirm", { fg = p.fg, bg = p.bg_dark })
  hl(0, "NoiceConfirmBorder", { fg = p.border })
end

return M
