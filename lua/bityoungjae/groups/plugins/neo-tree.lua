-- Neo-tree 하이라이트 설정
local M = {}

function M.setup(hl, p)
  hl(0, "NeoTreeNormal", { fg = p.fg, bg = p.bg_light })
  hl(0, "NeoTreeNormalNC", { fg = p.fg, bg = p.bg_light })
  hl(0, "NeoTreeCursorLine", { bg = p.selection })
  hl(0, "NeoTreeDirectoryName", { fg = p.ui_accent })
  hl(0, "NeoTreeDirectoryIcon", { fg = p.ui_accent })
  hl(0, "NeoTreeRootName", { fg = p.ui_accent, bold = true })
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
