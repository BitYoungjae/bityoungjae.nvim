-- Neo-tree 하이라이트 설정
local M = {}

function M.setup(hl, p)
  local util = require("bityoungjae.util")

  -- 디렉터리 색상: accent1의 채도를 70%로 낮춤
  local dir_color = util.saturate(p.accent1, 0.7)

  hl(0, "NeoTreeNormal", { fg = p.fg, bg = p.bg_light })
  hl(0, "NeoTreeNormalNC", { fg = p.fg, bg = p.bg_light })
  hl(0, "NeoTreeCursorLine", { bg = p.selection })
  hl(0, "NeoTreeDirectoryName", { fg = dir_color })
  hl(0, "NeoTreeDirectoryIcon", { fg = dir_color })
  hl(0, "NeoTreeRootName", { fg = dir_color, bold = true })
  hl(0, "NeoTreeFileName", { fg = p.fg })
  hl(0, "NeoTreeFileIcon", { fg = p.fg })
  hl(0, "NeoTreeGitAdded", { fg = p.git_add })
  hl(0, "NeoTreeGitModified", { fg = p.git_change })
  hl(0, "NeoTreeGitDeleted", { fg = p.git_delete })
  hl(0, "NeoTreeGitConflict", { fg = p.error })
  hl(0, "NeoTreeGitUntracked", { fg = p.warning })
  hl(0, "NeoTreeIndentMarker", { fg = p.border })
end

return M
