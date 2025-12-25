-- 대시보드 / Alpha 하이라이트 설정
local M = {}

function M.setup(hl, p)
  -- 헤더: Soft Rose (가장 눈에 띄게)
  hl(0, "DashboardHeader", { fg = p.constant })
  -- 중앙 메뉴: 기본 텍스트
  hl(0, "DashboardCenter", { fg = p.fg })
  -- 푸터: Slate Smoke (주석 색상)
  hl(0, "DashboardFooter", { fg = p.comment })
  -- 단축키: Warm Sand (부드러운 강조)
  hl(0, "DashboardShortCut", { fg = p.type })
end

return M
