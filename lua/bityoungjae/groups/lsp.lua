-- LSP 시맨틱 토큰 및 LSP 하이라이트
local M = {}

function M.setup(hl, p)
  -- 시맨틱 토큰
  hl(0, "@lsp.type.class", { fg = p.type })
  hl(0, "@lsp.type.comment", { fg = p.comment, italic = true })
  hl(0, "@lsp.type.decorator", { fg = p.macro })
  hl(0, "@lsp.type.enum", { fg = p.type })
  hl(0, "@lsp.type.enumMember", { fg = p.constant })
  hl(0, "@lsp.type.function", { fg = p.func })
  hl(0, "@lsp.type.interface", { fg = p.type })
  hl(0, "@lsp.type.keyword", { fg = p.keyword })
  hl(0, "@lsp.type.macro", { fg = p.macro })
  hl(0, "@lsp.type.method", { fg = p.func })
  hl(0, "@lsp.type.namespace", { fg = p.namespace })
  hl(0, "@lsp.type.number", { fg = p.number })
  hl(0, "@lsp.type.operator", { fg = p.operator })
  hl(0, "@lsp.type.parameter", { fg = p.parameter })
  hl(0, "@lsp.type.property", { fg = p.property })
  hl(0, "@lsp.type.regexp", { fg = p.special })
  hl(0, "@lsp.type.string", { fg = p.string })
  hl(0, "@lsp.type.struct", { fg = p.type })
  hl(0, "@lsp.type.type", { fg = p.type })
  hl(0, "@lsp.type.typeParameter", { fg = p.type })
  hl(0, "@lsp.type.variable", { fg = p.variable })

  -- LSP 수식어
  hl(0, "@lsp.mod.deprecated", { strikethrough = true })
  hl(0, "@lsp.mod.readonly", { italic = true })
  hl(0, "@lsp.mod.defaultLibrary", {})
  hl(0, "@lsp.mod.async", {})

  -- LSP 참조 및 힌트
  hl(0, "LspReferenceText", { bg = p.bg_light })
  hl(0, "LspReferenceRead", { bg = p.bg_light })
  hl(0, "LspReferenceWrite", { bg = p.bg_light })

  hl(0, "LspSignatureActiveParameter", { bg = p.selection })
  hl(0, "LspCodeLens", { fg = p.fg_dark })
  hl(0, "LspCodeLensSeparator", { fg = p.fg_dark })
  hl(0, "LspInlayHint", { fg = p.fg_dark, bg = p.bg_light })
end

return M
