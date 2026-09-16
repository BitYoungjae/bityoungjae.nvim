-- 기본 문법 하이라이트
local M = {}

function M.setup(hl, p)
  local italic_comments = require("bityoungjae").config.italic_comments ~= false

  hl(0, "Comment", { fg = p.comment, italic = italic_comments })

  hl(0, "Constant", { fg = p.constant })
  hl(0, "String", { fg = p.string })
  hl(0, "Character", { fg = p.string })
  hl(0, "Number", { fg = p.number })
  hl(0, "Boolean", { fg = p.constant })
  hl(0, "Float", { fg = p.number })

  hl(0, "Identifier", { fg = p.variable })
  hl(0, "Function", { fg = p.func })

  hl(0, "Statement", { fg = p.keyword, bold = true })
  hl(0, "Conditional", { fg = p.keyword, bold = true })
  hl(0, "Repeat", { fg = p.keyword, bold = true })
  hl(0, "Label", { fg = p.label, bold = true })
  hl(0, "Operator", { fg = p.operator })
  hl(0, "Keyword", { fg = p.keyword, bold = true })
  hl(0, "Exception", { fg = p.keyword, bold = true })

  hl(0, "PreProc", { fg = p.macro })
  hl(0, "Include", { fg = p.macro })
  hl(0, "Define", { fg = p.macro })
  hl(0, "Macro", { fg = p.macro })
  hl(0, "PreCondit", { fg = p.macro })

  hl(0, "Type", { fg = p.type })
  hl(0, "StorageClass", { fg = p.keyword, bold = true })
  hl(0, "Structure", { fg = p.type })
  hl(0, "Typedef", { fg = p.type })

  hl(0, "Special", { fg = p.special })
  hl(0, "SpecialChar", { fg = p.special })
  hl(0, "Tag", { fg = p.ui_accent })
  hl(0, "Delimiter", { fg = p.punctuation })
  hl(0, "SpecialComment", { fg = p.comment, bold = true, italic = italic_comments })
  hl(0, "Debug", { fg = p.warning })

  hl(0, "Underlined", { underline = true })
  hl(0, "Ignore", { fg = p.fg_dark })
  hl(0, "Error", { fg = p.error })
  hl(0, "Todo", { fg = p.bg, bg = p.ui_accent, bold = true })
end

return M
