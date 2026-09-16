-- smear-cursor.nvim 하이라이트
local M = {}

function M.setup(hl, p)
  hl(0, "SmearCursor", { fg = p.bg, bg = p.cursor })
  hl(0, "SmearCursorTrail", { fg = p.bg, bg = p.ui_accent })
end

return M
