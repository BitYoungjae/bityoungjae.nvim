-- Git 하이라이트
local M = {}

function M.setup(hl, p)
  local util = require("bityoungjae.util")

  -- Diff (30% 불투명도 = 0.3 블렌드)
  hl(0, "DiffAdd", { bg = util.blend(p.git_add, 0.3, p.bg) })
  hl(0, "DiffChange", { bg = util.blend(p.git_change, 0.3, p.bg) })
  hl(0, "DiffDelete", { bg = util.blend(p.git_delete, 0.3, p.bg) })
  hl(0, "DiffText", { bg = util.blend(p.git_change, 0.5, p.bg) })

  -- 추가/변경/제거
  hl(0, "Added", { fg = p.git_add })
  hl(0, "Changed", { fg = p.git_change })
  hl(0, "Removed", { fg = p.git_delete })
end

return M
