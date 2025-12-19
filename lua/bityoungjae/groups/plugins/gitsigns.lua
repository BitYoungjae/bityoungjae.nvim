-- Gitsigns 하이라이트 설정
local M = {}

function M.setup(hl, p)
  local util = require("bityoungjae.util")

  hl(0, "GitSignsAdd", { fg = p.git_add })
  hl(0, "GitSignsChange", { fg = p.git_change })
  hl(0, "GitSignsDelete", { fg = p.git_delete })
  hl(0, "GitSignsAddNr", { fg = p.git_add })
  hl(0, "GitSignsChangeNr", { fg = p.git_change })
  hl(0, "GitSignsDeleteNr", { fg = p.git_delete })
  hl(0, "GitSignsAddLn", { bg = util.blend(p.git_add, 0.3, p.bg) })
  hl(0, "GitSignsChangeLn", { bg = util.blend(p.git_change, 0.3, p.bg) })
  hl(0, "GitSignsDeleteLn", { bg = util.blend(p.git_delete, 0.3, p.bg) })
end

return M
