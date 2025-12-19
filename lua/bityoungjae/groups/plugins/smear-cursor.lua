-- smear-cursor.nvim 하이라이트
local M = {}

function M.setup(hl, p)
  -- smear-cursor는 주로 cursor_color 설정 옵션 사용
  -- 하이라이트 그룹이나 hex 색상을 참조 가능
  -- 플러그인은 커서 이동에 대한 시각적 잔상 효과 생성

  -- 메인 커서 색상 (기본 Cursor 하이라이트)
  hl(0, "SmearCursor", { fg = p.bg, bg = p.accent1 })

  -- 잔상 효과는 Cursor를 상속하거나 커스터마이징 가능
  -- 잔상이 점차 사라지므로 약간 어두운 accent 사용
  hl(0, "SmearCursorTrail", { fg = p.bg, bg = p.accent2 })
end

return M
