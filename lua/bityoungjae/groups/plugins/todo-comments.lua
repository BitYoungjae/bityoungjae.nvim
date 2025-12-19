-- todo-comments.nvim 하이라이트
local M = {}

function M.setup(hl, p)
  -- 플러그인은 색상 이름 (error, warning, info, hint, default, test) 사용
  -- 각 키워드 타입과 매핑: FIX, HACK/WARN, TODO, NOTE, PERF, TEST

  -- FIX, FIXME, BUG, FIXIT, ISSUE (error)
  hl(0, "TodoFgFIX", { fg = p.error })
  hl(0, "TodoBgFIX", { fg = p.bg, bg = p.error, bold = true })
  hl(0, "TodoSignFIX", { fg = p.error })

  -- TODO (info)
  hl(0, "TodoFgTODO", { fg = p.info })
  hl(0, "TodoBgTODO", { fg = p.bg, bg = p.info, bold = true })
  hl(0, "TodoSignTODO", { fg = p.info })

  -- HACK (warning)
  hl(0, "TodoFgHACK", { fg = p.warning })
  hl(0, "TodoBgHACK", { fg = p.bg, bg = p.warning, bold = true })
  hl(0, "TodoSignHACK", { fg = p.warning })

  -- WARN, WARNING, XXX (warning)
  hl(0, "TodoFgWARN", { fg = p.warning })
  hl(0, "TodoBgWARN", { fg = p.bg, bg = p.warning, bold = true })
  hl(0, "TodoSignWARN", { fg = p.warning })

  -- PERF, OPTIM, PERFORMANCE, OPTIMIZE (default - accent2 사용)
  hl(0, "TodoFgPERF", { fg = p.accent2 })
  hl(0, "TodoBgPERF", { fg = p.bg, bg = p.accent2, bold = true })
  hl(0, "TodoSignPERF", { fg = p.accent2 })

  -- NOTE, INFO (hint)
  hl(0, "TodoFgNOTE", { fg = p.hint })
  hl(0, "TodoBgNOTE", { fg = p.bg, bg = p.hint, bold = true })
  hl(0, "TodoSignNOTE", { fg = p.hint })

  -- TEST, TESTING, PASSED, FAILED (test - keyword 색상 사용)
  hl(0, "TodoFgTEST", { fg = p.keyword })
  hl(0, "TodoBgTEST", { fg = p.bg, bg = p.keyword, bold = true })
  hl(0, "TodoSignTEST", { fg = p.keyword })
end

return M
