-- flash.nvim 하이라이트
local M = {}

-- Flash 전용 색상 (팔레트와 별도로 눈에 편한 저채도 톤)
local flash_colors = {
  match_bg = "#21572C",   -- 매칭된 영역 (어두운 초록색)
  label_bg = "#6F2B35",   -- 점프 레이블 배경 (어두운 붉은색)
  label_fg = "#D1DDD6",   -- 텍스트 (밝은 회색)
}

function M.setup(hl, p)
  -- FlashBackdrop: 배경의 흐릿한 텍스트
  hl(0, "FlashBackdrop", { fg = p.fg_dark })

  -- FlashMatch: 매칭된 텍스트 하이라이트
  hl(0, "FlashMatch", { bg = flash_colors.match_bg, fg = flash_colors.label_fg })

  -- FlashCurrent: 현재 매칭 위치
  hl(0, "FlashCurrent", { bg = flash_colors.match_bg, fg = flash_colors.label_fg })

  -- FlashLabel: 점프 레이블
  hl(0, "FlashLabel", { bg = flash_colors.label_bg, fg = flash_colors.label_fg, bold = true })
end

return M
