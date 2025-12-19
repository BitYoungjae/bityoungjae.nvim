-- =============================================================================
-- Colorscheme: bityoungjae
-- =============================================================================
-- 컬러스킴의 메인 진입점
-- =============================================================================

local M = {}

M.config = {
  -- 설정 옵션들을 여기에 추가하세요
  transparent = false,       -- 투명한 배경 활성화
  italic_comments = true,    -- 주석에 이탤릭체 사용
  terminal_colors = true,    -- 터미널 색상 설정
}

function M.setup(opts)
  -- 사용자 옵션을 기본값과 병합
  if opts then
    M.config = vim.tbl_deep_extend("force", M.config, opts)
  end

  -- 팔레트 로드
  local palette = require("bityoungjae.palette")

  -- 투명도 설정이 활성화된 경우 적용
  if M.config.transparent then
    palette.bg = "NONE"
    palette.bg_dark = "NONE"
  end

  -- 하이라이트 로드 및 적용
  local highlights = require("bityoungjae.highlights")
  highlights.setup(palette)

  -- 터미널 색상 설정이 활성화된 경우 적용
  if M.config.terminal_colors and palette.terminal then
    local t = palette.terminal
    vim.g.terminal_color_0 = t.black
    vim.g.terminal_color_1 = t.red
    vim.g.terminal_color_2 = t.green
    vim.g.terminal_color_3 = t.yellow
    vim.g.terminal_color_4 = t.blue
    vim.g.terminal_color_5 = t.magenta
    vim.g.terminal_color_6 = t.cyan
    vim.g.terminal_color_7 = t.white
    vim.g.terminal_color_8 = t.bright_black
    vim.g.terminal_color_9 = t.bright_red
    vim.g.terminal_color_10 = t.bright_green
    vim.g.terminal_color_11 = t.bright_yellow
    vim.g.terminal_color_12 = t.bright_blue
    vim.g.terminal_color_13 = t.bright_magenta
    vim.g.terminal_color_14 = t.bright_cyan
    vim.g.terminal_color_15 = t.bright_white
  end
end

return M
