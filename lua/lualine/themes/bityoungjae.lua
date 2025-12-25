local M = {}

-- 새로운 컬러 팔레트 (Mumyeong v3.0)
local colors = {
  bg = "#111117",
  bg_light = "#16171F",
  bg_dark = "#1E2028",
  selection = "#2C3145",
  fg = "#ECEFF4",
  comment = "#636E7B",
  keyword = "#C9A0DC",
  func = "#7BB8E0",
  string = "#8FD4A5",
  type = "#E8C882",
  error = "#E8717E",
}

-- 공통 배경색
local bg_statusline = colors.bg_dark
local fg_gutter = colors.selection

M.normal = {
  a = { bg = colors.func, fg = colors.bg, gui = "bold" }, -- Soft Sky
  b = { bg = fg_gutter, fg = colors.func },
  c = { bg = bg_statusline, fg = colors.comment },
}

M.insert = {
  a = { bg = colors.string, fg = colors.bg, gui = "bold" }, -- Soft Mint
  b = { bg = fg_gutter, fg = colors.string },
}

M.command = {
  a = { bg = colors.type, fg = colors.bg, gui = "bold" }, -- Warm Sand
  b = { bg = fg_gutter, fg = colors.type },
}

M.visual = {
  a = { bg = colors.keyword, fg = colors.bg, gui = "bold" }, -- Soft Lavender
  b = { bg = fg_gutter, fg = colors.keyword },
}

M.replace = {
  a = { bg = colors.error, fg = colors.bg, gui = "bold" }, -- Soft Rose
  b = { bg = fg_gutter, fg = colors.error },
}

M.terminal = {
  a = { bg = colors.string, fg = colors.bg, gui = "bold" }, -- Soft Mint
  b = { bg = fg_gutter, fg = colors.string },
}

M.inactive = {
  a = { bg = bg_statusline, fg = colors.func },
  b = { bg = bg_statusline, fg = fg_gutter, gui = "bold" },
  c = { bg = bg_statusline, fg = fg_gutter },
}

return M
