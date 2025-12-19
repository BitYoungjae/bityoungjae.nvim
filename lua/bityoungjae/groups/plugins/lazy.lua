-- Lazy.nvim 하이라이트 설정
local M = {}

function M.setup(hl, p)
  hl(0, "LazyButton", { fg = p.fg, bg = p.bg_light })
  hl(0, "LazyButtonActive", { fg = p.bg, bg = p.accent1 })
  hl(0, "LazyH1", { fg = p.bg, bg = p.accent1, bold = true })
  hl(0, "LazyH2", { fg = p.accent1, bold = true })
  hl(0, "LazySpecial", { fg = p.accent2 })
  hl(0, "LazyProgressDone", { fg = p.accent1 })
  hl(0, "LazyProgressTodo", { fg = p.border })
end

return M
