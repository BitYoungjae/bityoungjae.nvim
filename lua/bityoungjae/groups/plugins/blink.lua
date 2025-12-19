-- blink.cmp 하이라이트
local M = {}

function M.setup(hl, p)
  -- 문서 창
  hl(0, "BlinkCmpDoc", { fg = p.fg, bg = p.bg_dark })
  hl(0, "BlinkCmpDocBorder", { fg = p.border, bg = p.bg_dark })

  -- 고스트 텍스트
  hl(0, "BlinkCmpGhostText", { fg = p.terminal.black })

  -- AI 자동완성 소스
  hl(0, "BlinkCmpKindCodeium", { fg = p.accent3 })
  hl(0, "BlinkCmpKindCopilot", { fg = p.accent3 })
  hl(0, "BlinkCmpKindSupermaven", { fg = p.accent3 })
  hl(0, "BlinkCmpKindTabNine", { fg = p.accent3 })

  -- 기본 kind
  hl(0, "BlinkCmpKindDefault", { fg = p.fg_dark })

  -- 레이블
  hl(0, "BlinkCmpLabel", { fg = p.fg })
  hl(0, "BlinkCmpLabelDeprecated", { fg = p.fg_dark, strikethrough = true })
  hl(0, "BlinkCmpLabelMatch", { fg = p.accent1, bold = true })

  -- 메뉴
  hl(0, "BlinkCmpMenu", { fg = p.fg, bg = p.bg_dark })
  hl(0, "BlinkCmpMenuBorder", { fg = p.border, bg = p.bg_dark })

  -- 시그니처 도움말
  hl(0, "BlinkCmpSignatureHelp", { fg = p.fg, bg = p.bg_dark })
  hl(0, "BlinkCmpSignatureHelpBorder", { fg = p.border, bg = p.bg_dark })

  -- LSP Kinds (cmp.lua 구조와 유사)
  hl(0, "BlinkCmpKindArray", { fg = p.punctuation })
  hl(0, "BlinkCmpKindBoolean", { fg = p.constant })
  hl(0, "BlinkCmpKindClass", { fg = p.type })
  hl(0, "BlinkCmpKindColor", { fg = p.special })
  hl(0, "BlinkCmpKindConstant", { fg = p.constant })
  hl(0, "BlinkCmpKindConstructor", { fg = p.type })
  hl(0, "BlinkCmpKindEnum", { fg = p.type })
  hl(0, "BlinkCmpKindEnumMember", { fg = p.constant })
  hl(0, "BlinkCmpKindEvent", { fg = p.special })
  hl(0, "BlinkCmpKindField", { fg = p.property })
  hl(0, "BlinkCmpKindFile", { fg = p.fg })
  hl(0, "BlinkCmpKindFolder", { fg = p.accent1 })
  hl(0, "BlinkCmpKindFunction", { fg = p.func })
  hl(0, "BlinkCmpKindInterface", { fg = p.type })
  hl(0, "BlinkCmpKindKey", { fg = p.property })
  hl(0, "BlinkCmpKindKeyword", { fg = p.keyword })
  hl(0, "BlinkCmpKindMethod", { fg = p.func })
  hl(0, "BlinkCmpKindModule", { fg = p.namespace })
  hl(0, "BlinkCmpKindNamespace", { fg = p.namespace })
  hl(0, "BlinkCmpKindNull", { fg = p.constant })
  hl(0, "BlinkCmpKindNumber", { fg = p.number })
  hl(0, "BlinkCmpKindObject", { fg = p.constant })
  hl(0, "BlinkCmpKindOperator", { fg = p.operator })
  hl(0, "BlinkCmpKindPackage", { fg = p.namespace })
  hl(0, "BlinkCmpKindProperty", { fg = p.property })
  hl(0, "BlinkCmpKindReference", { fg = p.variable })
  hl(0, "BlinkCmpKindSnippet", { fg = p.special })
  hl(0, "BlinkCmpKindString", { fg = p.string })
  hl(0, "BlinkCmpKindStruct", { fg = p.type })
  hl(0, "BlinkCmpKindText", { fg = p.fg })
  hl(0, "BlinkCmpKindTypeParameter", { fg = p.type })
  hl(0, "BlinkCmpKindUnit", { fg = p.type })
  hl(0, "BlinkCmpKindValue", { fg = p.constant })
  hl(0, "BlinkCmpKindVariable", { fg = p.variable })
end

return M
