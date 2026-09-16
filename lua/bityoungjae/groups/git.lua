-- Git 하이라이트
local M = {}

function M.setup(hl, p)
  local util = require("bityoungjae.util")

  -- Diff 배경은 본문을 가리지 않도록 낮게 (0.15)
  hl(0, "DiffAdd", { fg = p.git_add, bg = util.blend(p.git_add, 0.15, p.bg) })
  hl(0, "DiffChange", { fg = p.git_change, bg = util.blend(p.git_change, 0.15, p.bg) })
  hl(0, "DiffDelete", { fg = p.git_delete, bg = util.blend(p.git_delete, 0.15, p.bg) })
  hl(0, "DiffText", { fg = p.git_change, bg = util.blend(p.git_change, 0.28, p.bg) })

  -- 추가/변경/제거
  hl(0, "Added", { fg = p.git_add })
  hl(0, "Changed", { fg = p.git_change })
  hl(0, "Removed", { fg = p.git_delete })
end

return M
