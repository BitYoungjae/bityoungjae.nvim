-- 플로트 표면·단면 실험 하네스 — 모달 배경 구분을 실제 화면에서 비교한다.
-- 사용법:
--   :source dev/float-lab.lua     -- 명령 등록 (1회)
--   :FloatLab                     -- 후보 순환 적용 + 대비 리포트
--   :FloatLabReset                -- palette.lua 현재값(M.float) 복원
-- 적용은 세션 한정. :source dev/reload.lua로 테마를 다시 적용하면 초기화된다.
-- 확인은 플로트가 뜨는 화면에서: :Files, LSP hover, :WhichKey 등.

local util = require("bityoungjae.util")
local p = require("bityoungjae.palette")

local candidates = {
  { fill = "#232329", border = "#62626C", label = "추천안 (표면·단면 각 한 계단)" },
  { fill = "#1E1E23", border = "#5A5A64", label = "절제안" },
  { fill = "#232329", border = "#6B6B75", label = "단면 강조" },
  { fill = "#202024", border = "#5A5A64", label = "cursor_line 값 재활용" },
  { fill = "#18181B", border = "#4E4E57", label = "현행 (구분 약함)" },
}
local idx = 0

local function apply(fill, border)
  vim.api.nvim_set_hl(0, "NormalFloat", { fg = p.fg, bg = fill })
  vim.api.nvim_set_hl(0, "FloatBorder", { fg = border, bg = fill })
  vim.api.nvim_set_hl(0, "FloatTitle", { fg = p.ui_accent, bg = fill, bold = true })
end

local function report(fill, border, label)
  vim.notify(
    ("%s 표면 / %s 단면  %s\n표면/배경 %.2f:1 · 단면/표면 %.2f:1 · 주석 %.2f:1 · Visual행과 %.2f:1"):format(
      fill,
      border,
      label or "",
      util.contrast(fill, p.bg),
      util.contrast(border, fill),
      util.contrast(p.comment, fill),
      util.contrast(fill, p.visual)
    ),
    vim.log.levels.INFO,
    { title = "FloatLab — :Files 등으로 플로트를 띄워 보세요" }
  )
end

pcall(vim.api.nvim_del_user_command, "FloatLab")
vim.api.nvim_create_user_command("FloatLab", function(o)
  local arg = vim.trim(o.args)
  local fill, border
  if arg == "" then
    idx = idx % #candidates + 1
    local c = candidates[idx]
    fill, border = c.fill, c.border
    report(fill, border, c.label)
  else
    local parts = vim.split(arg, "%s+")
    fill = parts[1] and parts[1]:upper() or ""
    border = parts[2] and parts[2]:upper() or "#62626C"
    if not fill:match("^#[0-9A-F][0-9A-F][0-9A-F][0-9A-F][0-9A-F][0-9A-F]$") then
      vim.notify("형식: :FloatLab #표면 [#단면]", vim.log.levels.ERROR)
      return
    end
    report(fill, border, "직접 입력")
  end
  apply(fill, border)
end, { nargs = "?" })

vim.api.nvim_create_user_command("FloatLabReset", function()
  idx = 0
  apply(p.float, p.float_border)
  report(p.float, p.float_border, "palette.lua 현재값")
end, {})
