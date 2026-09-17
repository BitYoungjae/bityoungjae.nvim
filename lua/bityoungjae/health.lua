-- :checkhealth bityoungjae
local M = {}

function M.check()
  local health = vim.health or require("health")
  local util = require("bityoungjae.util")
  local p = require("bityoungjae.palette")

  local function report(name, ok, detail)
    local line = name .. (detail and (" — " .. detail) or "")
    if ok then
      health.ok(line)
    else
      health.error(line)
    end
  end

  health.start("Mumyeong 환경")
  local v = vim.version()
  report(("Neovim 버전 %d.%d (0.8+ 필요)"):format(v.major, v.minor), v.major > 0 or v.minor >= 8)
  report("termguicolors", vim.o.termguicolors, vim.o.termguicolors and "활성화" or "꺼짐 — 테마 색이 무시됩니다")
  report(
    "colorscheme",
    vim.g.colors_name == "bityoungjae",
    "현재: " .. tostring(vim.g.colors_name)
  )

  health.start("핵심 대비 (WCAG 2.x)")
  local function ratio(fg, bg)
    return ("%.2f:1"):format(util.contrast(fg, bg))
  end
  local body = util.contrast(p.fg, p.bg)
  report(
    "본문/배경 7–11.5:1",
    body >= 7 and body <= 11.5,
    ratio(p.fg, p.bg) .. " (할로네이션 밴드)"
  )
  for _, surface in ipairs({ "bg", "cursor_line", "selection", "visual" }) do
    local r = util.contrast(p.comment, p[surface])
    report(("주석/%s ≥ 4.5"):format(surface), r >= 4.5, ratio(p.comment, p[surface]))
  end
  report("검색 텍스트 ≥ 4.5", util.contrast(p.fg_light, p.bg_search) >= 4.5, ratio(p.fg_light, p.bg_search))
  report("줄 번호 ≥ 3.2", util.contrast(p.line_nr, p.bg) >= 3.2, ratio(p.line_nr, p.bg))

  health.start("역할 구분 (CIE ΔE ≥ 15)")
  for _, pair in ipairs({
    { "special", "property" },
    { "macro", "keyword" },
    { "keyword", "fg" },
    { "special", "string" },
    { "type", "number" },
  }) do
    local a, b = p[pair[1]], p[pair[2]]
    local d = util.delta_e(a, b)
    report(("%s ≠ %s"):format(pair[1], pair[2]), d >= 15, ("ΔE=%.1f"):format(d))
  end

  health.start("omarchy-mumyeong 앵커")
  local anchors = {
    bg = "#09090B",
    selection = "#27272A",
    cursor = "#F4F4F5",
    error = "#E08A8A",
    git_add = "#81C784",
  }
  for name, anchor in pairs(anchors) do
    report(name, p[name]:upper() == anchor, p[name])
  end
end

return M
