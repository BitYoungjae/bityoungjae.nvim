-- render-markdown.nvim 하이라이트
local M = {}

function M.setup(hl, p)
  local util = require("bityoungjae.util")

  -- 마크다운 제목(H1-H6)을 위한 무지개 색상 정의
  -- 팔레트의 accent와 syntax 색상을 조합하여 사용
  local rainbow = {
    p.accent1,     -- H1: Ghost Silver (가장 돋보임)
    p.keyword,     -- H2: Thistle (보라/분홍)
    p.type,        -- H3: Brass (노랑)
    p.string,      -- H4: Pale Emerald (초록)
    p.func,        -- H5: Slate Blue (시원한 파랑)
    p.accent3,     -- H6: Cold Metal (청록)
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
