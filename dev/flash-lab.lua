-- FlashLabel 배경 실험 하네스 — 색상 칩 후보를 실제 flash 화면에서 비교한다.
-- 사용법:
--   :source dev/flash-lab.lua     -- 명령 등록 (1회)
--   :FlashLab                     -- 후보 순환 적용 + 대비 리포트
--   :FlashLab #RRGGBB             -- 임의 배경색 적용 (글자는 항상 p.bg에 bold)
--   :FlashLabReset                -- flash.lua 현재 적용안(풀 밝기 실버) 복원
-- 적용은 세션 한정. :source dev/reload.lua로 테마를 다시 적용하면 초기화된다.

local util = require("bityoungjae.util")
local p = require("bityoungjae.palette")

local candidates = {
  { hex = "#F4F4F5", label = "Ghost Silver (중립 칩 비교용)" },
  { hex = "#F0D48A", label = "type 브라스" },
  { hex = "#EDA87C", label = "number 샌드" },
  { hex = "#D4C88C", label = "oma13 Brass (terminal yellow)" },
  { hex = "#E08A8A", label = "error 로즈 — 원칙 4(빨강 격리) 위반 주의" },
}
local idx = 0

local function apply(hex)
  vim.api.nvim_set_hl(0, "FlashLabel", { bg = hex, fg = p.bg, bold = true })
end

local function report(hex, label)
  local match_bg = vim.api.nvim_get_hl(0, { name = "FlashMatch", link = false }).bg
  local match_hex = match_bg and ("#" .. string.format("%06X", match_bg)) or p.bg
  vim.notify(
    ("%s  %s\n글자/칩 %.1f:1 · 칩/매치 ΔE %.1f (%.1f:1)\nflash(s)로 직접 띄워서 보세요"):format(
      hex,
      label or "",
      util.contrast(p.bg, hex),
      util.delta_e(hex, match_hex),
      util.contrast(hex, match_hex)
    ),
    vim.log.levels.INFO,
    { title = "FlashLab" }
  )
end

pcall(vim.api.nvim_del_user_command, "FlashLab")
vim.api.nvim_create_user_command("FlashLab", function(o)
  local arg = vim.trim(o.args)
  if arg == "" then
    idx = idx % #candidates + 1
    local c = candidates[idx]
    apply(c.hex)
    report(c.hex, c.label)
    return
  end
  local hex = arg:upper()
  if not hex:match("^#[0-9A-F][0-9A-F][0-9A-F][0-9A-F][0-9A-F][0-9A-F]$") then
    vim.notify("형식: :FlashLab #RRGGBB", vim.log.levels.ERROR)
    return
  end
  apply(hex)
  report(hex, "직접 입력")
end, { nargs = "?" })

vim.api.nvim_create_user_command("FlashLabReset", function()
  idx = 0
  apply(p.type)
  report(p.type, "flash.lua 현재 적용안")
end, {})
