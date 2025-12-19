local p = require("bityoungjae.palette")

local M = {}

-- 공통 배경색
local bg_statusline = p.bg_dark -- #0F111A (Deep Space)
local fg_gutter = p.line_nr -- #3B4261 (Ice Glass)

M.normal = {
  a = { bg = p.func, fg = p.bg, gui = "bold" }, -- Electric Blue
  b = { bg = fg_gutter, fg = p.func },
  c = { bg = bg_statusline, fg = p.fg_dark },
}

M.insert = {
  a = { bg = p.string, fg = p.bg, gui = "bold" }, -- Aurora Green
  b = { bg = fg_gutter, fg = p.string },
}

M.command = {
  a = { bg = p.type, fg = p.bg, gui = "bold" }, -- Solar Gold
  b = { bg = fg_gutter, fg = p.type },
}

M.visual = {
  a = { bg = p.keyword, fg = p.bg, gui = "bold" }, -- Neon Violet
  b = { bg = fg_gutter, fg = p.keyword },
}

M.replace = {
  a = { bg = p.error, fg = p.bg, gui = "bold" }, -- Cyber Pink
  b = { bg = fg_gutter, fg = p.error },
}

M.terminal = {
  a = { bg = p.string, fg = p.bg, gui = "bold" }, -- Aurora Green
  b = { bg = fg_gutter, fg = p.string },
}

M.inactive = {
  a = { bg = bg_statusline, fg = p.func },
  b = { bg = bg_statusline, fg = fg_gutter, gui = "bold" },
  c = { bg = bg_statusline, fg = fg_gutter },
}

return M
