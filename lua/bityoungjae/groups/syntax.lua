-- 기본 문법 하이라이트
local M = {}

function M.setup(hl, p)
  -- 주석
  hl(0, "Comment", { fg = p.comment, italic = true })

  -- 상수
  hl(0, "Constant", { fg = p.constant })
  hl(0, "String", { fg = p.string })
  hl(0, "Character", { fg = p.string })
  hl(0, "Number", { fg = p.number })
  hl(0, "Boolean", { fg = p.number })
  hl(0, "Float", { fg = p.number })

  -- 식별자
  hl(0, "Identifier", { fg = p.variable })
  hl(0, "Function", { fg = p.func })

  -- 구문
  hl(0, "Statement", { fg = p.keyword })
  hl(0, "Conditional", { fg = p.keyword })
  hl(0, "Repeat", { fg = p.keyword })
  hl(0, "Label", { fg = p.label })
  hl(0, "Operator", { fg = p.operator })
  hl(0, "Keyword", { fg = p.keyword })
  hl(0, "Exception", { fg = p.keyword })

  -- 전처리기
  hl(0, "PreProc", { fg = p.macro })
  hl(0, "Include", { fg = p.macro })
  hl(0, "Define", { fg = p.macro })
  hl(0, "Macro", { fg = p.macro })
  hl(0, "PreCondit", { fg = p.macro })

  -- 타입
  hl(0, "Type", { fg = p.type })
  hl(0, "StorageClass", { fg = p.keyword })
  hl(0, "Structure", { fg = p.type })
  hl(0, "Typedef", { fg = p.type })

  -- 특수 문자
  hl(0, "Special", { fg = p.special })
  hl(0, "SpecialChar", { fg = p.special })
  hl(0, "Tag", { fg = p.accent1 })
  hl(0, "Delimiter", { fg = p.punctuation })
  hl(0, "SpecialComment", { fg = p.comment, bold = true })
  hl(0, "Debug", { fg = p.warning })

  -- 기타
  hl(0, "Underlined", { underline = true })
  hl(0, "Ignore", { fg = p.fg_dark })
  hl(0, "Error", { fg = p.error })
  hl(0, "Todo", { fg = p.bg, bg = p.accent1, bold = true })
end

return M
