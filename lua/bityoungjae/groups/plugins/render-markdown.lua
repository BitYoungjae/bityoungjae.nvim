-- render-markdown.nvim 하이라이트
local M = {}

function M.setup(hl, p)
  local util = require("bityoungjae.util")

  -- 마크다운 제목(H1-H6)을 위한 색상 정의
  -- 문서의 계층 구조를 색상(주목도순)으로 즉시 파악 가능하게 함
  local rainbow = {
    p.md_h1,       -- H1: Cyber Pink (가장 돋보임)
    p.md_h2,       -- H2: Solar Gold (따뜻한 강조)
    p.md_h3,       -- H3: Aurora Green (산뜻한 민트)
    p.func,        -- H4: Electric Blue (차가운 논리)
    p.accent3,     -- H5: Cyan Ray (청록)
    p.fg_dark,     -- H6: Steel Gray (은은함)
  }

  -- 기본 마크다운 요소
  hl(0, "RenderMarkdownBullet", { fg = p.special })
  hl(0, "RenderMarkdownCode", { bg = p.bg_dark })
  hl(0, "RenderMarkdownDash", { fg = p.special })
  hl(0, "RenderMarkdownTableHead", { fg = p.error })
  hl(0, "RenderMarkdownTableRow", { fg = p.special })
  hl(0, "RenderMarkdownCodeInline", { link = "@markup.raw.markdown_inline" })

  -- 제목 배경과 전경색 (H1-H6)
  for i, color in ipairs(rainbow) do
    -- 은은한 배경 혼합 (제목 색상의 10%)
    local heading_bg = util.blend(color, 0.1, p.bg)
    hl(0, "RenderMarkdownH" .. i .. "Bg", { bg = heading_bg })
    hl(0, "RenderMarkdownH" .. i .. "Fg", { fg = color, bold = true })
  end
end

return M
