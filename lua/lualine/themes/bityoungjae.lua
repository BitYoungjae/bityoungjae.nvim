local p = require("bityoungjae.palette")

local bg_statusline = p.bg_dark

local M = {}

M.normal = {
  a = { bg = p.func, fg = p.bg, gui = "bold" },
  b = { bg = p.selection, fg = p.func },
  c = { bg = bg_statusline, fg = p.parameter },
}

M.insert = {
  a = { bg = p.string, fg = p.bg, gui = "bold" },
  b = { bg = p.selection, fg = p.string },
}

M.command = {
  a = { bg = p.type, fg = p.bg, gui = "bold" },
  b = { bg = p.selection, fg = p.type },
}

M.visual = {
  a = { bg = p.keyword, fg = p.bg, gui = "bold" },
  b = { bg = p.selection, fg = p.keyword },
}

M.replace = {
  a = { bg = p.error, fg = p.bg, gui = "bold" },
  b = { bg = p.selection, fg = p.error },
}

M.terminal = {
  a = { bg = p.cursor, fg = p.bg, gui = "bold" },
  b = { bg = p.selection, fg = p.cursor },
}

M.inactive = {
  a = { bg = bg_statusline, fg = p.func },
  b = { bg = bg_statusline, fg = p.comment },
  c = { bg = bg_statusline, fg = p.line_nr },
}

return M
