-- 대시보드 / Alpha 하이라이트 설정
local M = {}

function M.setup(hl, p)
  hl(0, "DashboardHeader", { fg = p.accent1 })
  hl(0, "DashboardCenter", { fg = p.fg })
  hl(0, "DashboardFooter", { fg = p.fg_dark })
  hl(0, "DashboardShortCut", { fg = p.accent2 })
end

return M
