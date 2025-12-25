-- Noice 하이라이트 설정
local M = {}

function M.setup(hl, p)
  -- 커맨드 라인: 기본 텍스트
  hl(0, "NoiceCmdline", { fg = p.fg })
  -- 커맨드 아이콘: Soft Rose (강조)
  hl(0, "NoiceCmdlineIcon", { fg = p.constant })
  -- 검색 아이콘: Warm Sand (경고성)
  hl(0, "NoiceCmdlineIconSearch", { fg = p.warning })
  -- 팝업 테두리: Steel Edge
  hl(0, "NoiceCmdlinePopupBorder", { fg = p.border })
  -- 팝업 제목: Soft Rose
  hl(0, "NoiceCmdlinePopupTitle", { fg = p.constant })
  -- 확인 창: 팝업 배경
  hl(0, "NoiceConfirm", { fg = p.fg, bg = p.bg_dark })
  -- 확인 창 테두리
  hl(0, "NoiceConfirmBorder", { fg = p.border })
end

return M
