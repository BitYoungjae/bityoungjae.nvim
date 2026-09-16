-- flash.nvim 하이라이트
local M = {}

function M.setup(hl, p)
  local util = require("bityoungjae.util")

  hl(0, "FlashBackdrop", { fg = p.fg_dark })
  hl(0, "FlashMatch", { bg = util.blend(p.string, 0.35, p.bg), fg = p.fg_light })
  hl(0, "FlashCurrent", { bg = util.blend(p.func, 0.40, p.bg), fg = p.fg_light })
  hl(0, "FlashLabel", { bg = util.blend(p.cursor, 0.55, p.bg), fg = p.bg, bold = true })
end

return M
