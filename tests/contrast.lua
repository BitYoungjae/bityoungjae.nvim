-- Contrast and role regression checks for Mumyeong.
-- nvim --headless -u tests/minimal_init.lua -c "luafile tests/contrast.lua" -c "qa"

local util = require("bityoungjae.util")
local p = require("bityoungjae.palette")

local failed = 0

local function check(name, cond, detail)
  if cond then
    print("PASS  " .. name)
  else
    failed = failed + 1
    print("FAIL  " .. name .. (detail and ("  " .. detail) or ""))
  end
end

local function ratio(a, b)
  return string.format("%.2f:1", util.contrast(a, b))
end

-- Palette invariants
check("Normal ≥ 7", util.contrast(p.fg, p.bg) >= 7, ratio(p.fg, p.bg))
check("Normal ≤ 11.5 (halation)", util.contrast(p.fg, p.bg) <= 11.5, ratio(p.fg, p.bg))
check("Comment/bg ≥ 4.5", util.contrast(p.comment, p.bg) >= 4.5, ratio(p.comment, p.bg))
check("Comment/cursorline ≥ 4.5", util.contrast(p.comment, p.cursor_line) >= 4.5, ratio(p.comment, p.cursor_line))
check("Comment/visual ≥ 4.5", util.contrast(p.comment, p.visual) >= 4.5, ratio(p.comment, p.visual))
check("LineNr ≥ 3.2", util.contrast(p.line_nr, p.bg) >= 3.2, ratio(p.line_nr, p.bg))
check("CursorLine visible", util.contrast(p.cursor_line, p.bg) >= 1.20, ratio(p.cursor_line, p.bg))
check("Visual visible", util.contrast(p.visual, p.bg) >= 1.5, ratio(p.visual, p.bg))
check("Visual/cursorline ≥ 1.25", util.contrast(p.visual, p.cursor_line) >= 1.25, ratio(p.visual, p.cursor_line))
check("Search ≥ 4.5", util.contrast(p.fg_light, p.bg_search) >= 4.5, ratio(p.fg_light, p.bg_search))
check("error ≠ constant", p.error ~= p.constant, p.error .. " " .. p.constant)
check("error ≠ accent1", p.error ~= p.accent1, p.error .. " " .. p.accent1)
check("error ≠ md_heading", p.error ~= p.md_heading)
check("type ≠ warning", p.type ~= p.warning)
check("operator ≠ property", p.operator ~= p.property)
check("hint ≠ operator", p.hint ~= p.operator)
check("clojure_paren ≠ punctuation", p.clojure_paren ~= p.punctuation)
check("md_h1 ≠ md_h6", p.md_h1 ~= p.md_h6)
check("error contrast ≥ warning", util.contrast(p.error, p.bg) >= util.contrast(p.warning, p.bg) - 0.01)
check("whitespace < line_nr", util.contrast(p.whitespace, p.bg) < util.contrast(p.line_nr, p.bg))
-- ANSI는 ghostty 매핑과 1:1 (bright red/green/yellow는 normal과 같은 것이 정답)
check("ANSI yellow = oma13 brass", p.terminal.yellow:upper() == "#D4C88C")
check("ANSI bright blue ≠ blue", p.terminal.bright_blue ~= p.terminal.blue)
check("ANSI bright magenta ≠ magenta", p.terminal.bright_magenta ~= p.terminal.magenta)
check("fg_light ≠ #FFFFFF", p.fg_light:upper() ~= "#FFFFFF")
check("line_nr_cur ≠ #FFFFFF", p.line_nr_cur:upper() ~= "#FFFFFF")
check("util defaults track palette", util.bg == p.bg and util.fg == p.fg)

-- omarchy-mumyeong-theme 데스크톱 팔레트 앵커 (결의 일치)
local oma_anchors = {
  bg = "#09090B", bg_light = "#18181B", selection = "#27272A",
  fg_light = "#E4E4E7", cursor = "#F4F4F5", ui_accent = "#F4F4F5",
  info = "#94A3B8", error = "#E08A8A", git_add = "#81C784",
  md_code = "#CBD5E1",
}
for name, anchor in pairs(oma_anchors) do
  check("oma anchor: " .. name, p[name]:upper() == anchor, p[name])
end

-- Applied highlight groups
require("bityoungjae").setup()
vim.cmd("colorscheme bityoungjae")

local function hl(name)
  return vim.api.nvim_get_hl(0, { name = name, link = false })
end

local function hex(c)
  if not c then
    return nil
  end
  return string.format("#%06X", c)
end

local keyword = hl("Keyword")
check("Keyword bold", keyword.bold == true)
check("Keyword color", hex(keyword.fg) == p.keyword:upper())

local comment = hl("Comment")
check("Comment italic default", comment.italic == true)
check("Comment color", hex(comment.fg) == p.comment:upper())

local cursor = hl("Cursor")
check("Cursor not error", hex(cursor.bg) ~= p.error:upper())
check("Cursor photophore", hex(cursor.bg) == p.cursor:upper())

local search = hl("Search")
check("Search not error bg", hex(search.bg) ~= p.error:upper())
check("Search uses bg_search", hex(search.bg) == p.bg_search:upper())

local visual = hl("Visual")
check("Visual uses visual", hex(visual.bg) == p.visual:upper())

local flash_label = hl("FlashLabel")
check("FlashLabel brass chip", hex(flash_label.bg) == p.type:upper())
check("FlashLabel letter dark bold", hex(flash_label.fg) == p.bg:upper() and flash_label.bold == true)
check("FlashLabel not error", hex(flash_label.bg) ~= p.error:upper())

local directory = hl("Directory")
check("Directory not error", hex(directory.fg) ~= p.error:upper())
check("Directory ui_accent", hex(directory.fg) == p.ui_accent:upper())

local constant = hl("Constant")
local err = hl("Error")
check("Constant highlight ≠ Error", hex(constant.fg) ~= hex(err.fg))

local boolean = hl("Boolean")
check("Boolean uses constant", hex(boolean.fg) == p.constant:upper())

local h1 = hl("@markup.heading.1")
local h6 = hl("@markup.heading.6")
check("Heading ramp", hex(h1.fg) == p.md_h1:upper() and hex(h6.fg) == p.md_h6:upper() and hex(h1.fg) ~= hex(h6.fg))

local clojure = hl("@punctuation.bracket.clojure")
local punct = hl("@punctuation.bracket")
check("Clojure parens dimmer token", hex(clojure.fg) == p.clojure_paren:upper() and hex(clojure.fg) ~= hex(punct.fg))

local property = hl("@property")
local operator = hl("@operator")
check("JSON property ≠ operator", hex(property.fg) ~= hex(operator.fg))

-- 색 구분성 (CIE76 ΔE — 15 미만은 혼동 가능)
local function check_delta(name, a, b, min)
  check(string.format("%s (ΔE ≥ %d)", name, min), util.delta_e(a, b) >= min,
    string.format("dE=%.1f", util.delta_e(a, b)))
end

check_delta("special/property", p.special, p.property, 15)
check_delta("macro/keyword", p.macro, p.keyword, 15)
check_delta("keyword/fg", p.keyword, p.fg, 15)
check_delta("special/string", p.special, p.string, 15)
check_delta("special/hint", p.special, p.hint, 15)
check_delta("type/number", p.type, p.number, 15)
check_delta("type/warning", p.type, p.warning, 15)
check_delta("func/special", p.func, p.special, 15)
check_delta("func/fg", p.func, p.fg, 15)
check_delta("error/fg", p.error, p.fg, 15)

local ghost = hl("BlinkCmpGhostText")
check("Ghost text ≥ 2.5", ghost.fg and util.contrast(hex(ghost.fg), p.bg) >= 2.5,
  ghost.fg and ratio(hex(ghost.fg), p.bg) or "fg unset")

local kw_import = hl("@keyword.import")
check("keyword.import bold keyword", kw_import.bold == true and hex(kw_import.fg) == p.keyword:upper())

-- snacks picker가 NonText로 연결하는 항목들은 읽히는 디밍이어야 한다
local ignored = hl("SnacksPickerPathIgnored")
check("snacks ignored readable (≥4.5 on panel)", ignored.fg and util.contrast(hex(ignored.fg), p.bg_dark) >= 4.5,
  ignored.fg and ratio(hex(ignored.fg), p.bg_dark) or "undefined")

-- transparent 모드: 편집 배경만 투명, 플로트와 틴트는 유지
check("blend ignores NONE bg", util.blend(p.git_add, 0.15, "NONE") ~= "NONE")

require("bityoungjae").setup({ transparent = true })
vim.cmd("colorscheme bityoungjae")

check("transparent Normal bg NONE", hl("Normal").bg == nil)
check("transparent float opaque", hl("NormalFloat").bg ~= nil)
check("transparent diff tint", hl("DiffAdd").bg ~= nil)
check("transparent virtual text tint", hl("DiagnosticVirtualTextError").bg ~= nil)

if failed > 0 then
  print(string.format("\n%d check(s) failed", failed))
  vim.cmd("cquit 1")
else
  print("\nAll contrast checks passed")
end
