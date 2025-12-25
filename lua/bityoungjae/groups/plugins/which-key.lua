-- Which-key 하이라이트 설정
local M = {}

function M.setup(hl, p)
  -- 키바인딩: Soft Rose (강조)
  hl(0, "WhichKey", { fg = p.constant })
  -- 그룹명: Warm Sand (계층 구분)
  hl(0, "WhichKeyGroup", { fg = p.type })
  -- 설명: 기본 텍스트
  hl(0, "WhichKeyDesc", { fg = p.fg })
  -- 구분자: Slate Smoke
  hl(0, "WhichKeySeperator", { fg = p.comment })
  hl(0, "WhichKeySeparator", { fg = p.comment })
  -- 플로팅 창 배경: 팝업 배경
  hl(0, "WhichKeyFloat", { bg = p.bg_dark })
  -- 값: Slate Smoke
  hl(0, "WhichKeyValue", { fg = p.comment })
end

return M
