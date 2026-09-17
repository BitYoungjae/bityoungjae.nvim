-- Visual 배경 실험 하네스 — 배포 전에 후보색을 실제 화면에서 비교한다.
-- 사용법:
--   :source dev/visual-lab.lua    -- 명령 등록 (1회)
--   :VisualLab                    -- 후보색 순환 적용 + 대비 리포트
--   :VisualLab #RRGGBB            -- 임의 색 적용 + 리포트
--   :VisualLabReset               -- 팔레트 기본값(M.visual) 복원
-- :colorscheme을 다시 실행하면 하이라이트가 초기화되니, 그때 다시 :VisualLab을 돌리면 된다.

local util = require("bityoungjae.util")
local p = require("bityoungjae.palette")

local candidates = {
  { hex = "#283457", label = "블루 틴트 (현재 적용안)" },
  { hex = "#253045", label = "슬레이트 틴트 (bg_search 계열)" },
  { hex = "#34343C", label = "중립 회색 상한 (비교용)" },
  { hex = "#2E3A4A", label = "bg_search 동일 (검색과 충돌 비교용)" },
  { hex = "#2D4F67", label = "kanagawa류 (주석 4.5 미달 참고)" },
  { hex = "#27272A", label = "oma2 Charcoal (기존)" },
}
local idx = 0

local function apply(hex)
  vim.api.nvim_set_hl(0, "Visual", { bg = hex })
  vim.api.nvim_set_hl(0, "VisualNOS", { bg = hex })
end

local function report(hex, label)
  local sel_bg = util.contrast(hex, p.bg)
  local sel_cl = util.contrast(hex, p.cursor_line)
  local comment = util.contrast(p.comment, hex)
  local dE = util.delta_e(hex, p.cursor_line)
  local marks = {
    (comment >= 4.5 and "✓" or "✗") .. (" 주석 %.2f:1 (≥4.5)"):format(comment),
    (sel_bg >= 1.5 and "✓" or "✗") .. (" sel/bg %.2f:1 (≥1.5)"):format(sel_bg),
    (dE >= 12 and "✓" or "✗") .. (" ΔE(커서라인) %.1f (≥12)"):format(dE),
  }
  vim.notify(
    ("%s  %s\nsel/커서라인 %.2f:1 · 검색색과 ΔE %.1f\n%s"):format(
      hex,
      label or "",
      sel_cl,
      util.delta_e(hex, p.bg_search),
      table.concat(marks, "   ")
    ),
    vim.log.levels.INFO,
    { title = "VisualLab — V로 범위 선택해서 직접 보세요" }
  )
end

pcall(vim.api.nvim_del_user_command, "VisualLab")
vim.api.nvim_create_user_command("VisualLab", function(o)
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
    vim.notify("형식: :VisualLab #RRGGBB", vim.log.levels.ERROR)
    return
  end
  apply(hex)
  report(hex, "직접 입력")
end, { nargs = "?" })

vim.api.nvim_create_user_command("VisualLabReset", function()
  idx = 0
  local hex = p.visual or p.selection
  apply(hex)
  report(hex, "팔레트 기본 (M.visual)")
end, {})
