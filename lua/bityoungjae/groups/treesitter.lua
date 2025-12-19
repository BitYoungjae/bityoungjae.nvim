-- TreeSitter 하이라이트
local M = {}

function M.setup(hl, p)
  -- 식별자
  hl(0, "@variable", { fg = p.variable })
  hl(0, "@variable.builtin", { fg = p.special })
  hl(0, "@variable.parameter", { fg = p.parameter })
  hl(0, "@variable.member", { fg = p.property })

  hl(0, "@constant", { fg = p.constant })
  hl(0, "@constant.builtin", { fg = p.constant })
  hl(0, "@constant.macro", { fg = p.macro })

  hl(0, "@module", { fg = p.namespace })
  hl(0, "@module.builtin", { fg = p.namespace })
  hl(0, "@label", { fg = p.label })

  -- 리터럴
  hl(0, "@string", { fg = p.string })
  hl(0, "@string.documentation", { fg = p.string })
  hl(0, "@string.regexp", { fg = p.special })
  hl(0, "@string.escape", { fg = p.special })
  hl(0, "@string.special", { fg = p.special })
  hl(0, "@string.special.symbol", { fg = p.constant })
  hl(0, "@string.special.url", { fg = p.accent1, underline = true })
  hl(0, "@string.special.path", { fg = p.accent1 })

  hl(0, "@character", { fg = p.string })
  hl(0, "@character.special", { fg = p.special })

  hl(0, "@boolean", { fg = p.number })
  hl(0, "@number", { fg = p.number })
  hl(0, "@number.float", { fg = p.number })

  -- 타입
  hl(0, "@type", { fg = p.type })
  hl(0, "@type.builtin", { fg = p.type })
  hl(0, "@type.definition", { fg = p.type })
  hl(0, "@type.qualifier", { fg = p.keyword })

  hl(0, "@attribute", { fg = p.macro })
  hl(0, "@attribute.builtin", { fg = p.macro })
  hl(0, "@property", { fg = p.property })

  -- 함수
  hl(0, "@function", { fg = p.func })
  hl(0, "@function.builtin", { fg = p.func })
  hl(0, "@function.call", { fg = p.func })
  hl(0, "@function.macro", { fg = p.macro })
  hl(0, "@function.method", { fg = p.func })
  hl(0, "@function.method.call", { fg = p.func })

  hl(0, "@constructor", { fg = p.type })

  -- 키워드
  hl(0, "@keyword", { fg = p.keyword })
  hl(0, "@keyword.coroutine", { fg = p.keyword })
  hl(0, "@keyword.function", { fg = p.keyword })
  hl(0, "@keyword.operator", { fg = p.keyword })
  hl(0, "@keyword.import", { fg = p.macro })
  hl(0, "@keyword.type", { fg = p.keyword })
  hl(0, "@keyword.modifier", { fg = p.keyword })
  hl(0, "@keyword.repeat", { fg = p.keyword })
  hl(0, "@keyword.return", { fg = p.keyword })
  hl(0, "@keyword.debug", { fg = p.warning })
  hl(0, "@keyword.exception", { fg = p.keyword })
  hl(0, "@keyword.conditional", { fg = p.keyword })
  hl(0, "@keyword.conditional.ternary", { fg = p.keyword })
  hl(0, "@keyword.directive", { fg = p.macro })
  hl(0, "@keyword.directive.define", { fg = p.macro })

  -- 구두점
  hl(0, "@punctuation.delimiter", { fg = p.punctuation })
  hl(0, "@punctuation.bracket", { fg = p.punctuation })
  hl(0, "@punctuation.special", { fg = p.special })

  -- 주석
  hl(0, "@comment", { fg = p.comment, italic = true })
  hl(0, "@comment.documentation", { fg = p.comment, italic = true })
  hl(0, "@comment.error", { fg = p.error })
  hl(0, "@comment.warning", { fg = p.warning })
  hl(0, "@comment.todo", { fg = p.bg, bg = p.accent1, bold = true })
  hl(0, "@comment.note", { fg = p.info })

  -- 마크업
  hl(0, "@markup.strong", { bold = true })
  hl(0, "@markup.italic", { italic = true })
  hl(0, "@markup.strikethrough", { strikethrough = true })
  hl(0, "@markup.underline", { underline = true })
  hl(0, "@markup.heading", { fg = p.md_h1, bold = true })
  hl(0, "@markup.heading.1", { fg = p.md_h1, bold = true })
  hl(0, "@markup.heading.2", { fg = p.md_h2, bold = true })
  hl(0, "@markup.heading.3", { fg = p.md_h3 })
  hl(0, "@markup.heading.4", { fg = p.md_h3 })
  hl(0, "@markup.heading.5", { fg = p.fg })
  hl(0, "@markup.heading.6", { fg = p.fg })
  hl(0, "@markup.quote", { fg = p.comment, italic = true })
  hl(0, "@markup.math", { fg = p.accent2 })
  hl(0, "@markup.link", { fg = p.accent1 })
  hl(0, "@markup.link.label", { fg = p.accent1 })
  hl(0, "@markup.link.url", { fg = p.accent1, underline = true })
  hl(0, "@markup.raw", { fg = p.string })
  hl(0, "@markup.raw.block", { fg = p.string })
  hl(0, "@markup.list", { fg = p.accent1 })
  hl(0, "@markup.list.checked", { fg = p.git_add })
  hl(0, "@markup.list.unchecked", { fg = p.fg_dark })

  -- Diff
  hl(0, "@diff.plus", { fg = p.git_add })
  hl(0, "@diff.minus", { fg = p.git_delete })
  hl(0, "@diff.delta", { fg = p.git_change })

  -- 태그 (HTML/JSX)
  hl(0, "@tag", { fg = p.accent1 })
  hl(0, "@tag.builtin", { fg = p.accent1 })
  hl(0, "@tag.attribute", { fg = p.property })
  hl(0, "@tag.delimiter", { fg = p.punctuation })

  -- 기타
  hl(0, "@operator", { fg = p.operator })
  hl(0, "@none", {})

  -- Clojure 전용: 괄호를 배경보다 조금만 더 밝게 처리하여 괄호 지옥을 시각적으로 소거
  hl(0, "@punctuation.bracket.clojure", { fg = p.clojure_paren })
  hl(0, "@punctuation.delimiter.clojure", { fg = p.clojure_paren })
end

return M
