-- render-markdown.nvim 하이라이트
local M = {}

function M.setup(hl, p)
  local util = require("bityoungjae.util")

  -- =============================================================================
  -- Markdown Color Palette (preview.html 기준)
  -- =============================================================================
  -- Heading        | #E8717E | Soft Rose     | bold
  -- Bold           | #E89B82 | Soft Coral    | bold
  -- Italic         | #E89B82 | Soft Coral    | italic
  -- Link Text      | #7BB8E0 | Soft Sky      |
  -- Link URL       | #8FD4A5 | Soft Mint     |
  -- Inline Code    | #8FD4A5 | Soft Mint     | bg: #1E2028
  -- Code Block     | #8ED8D8 | Soft Teal     |
  -- List Marker    | #E8C882 | Warm Sand     |
  -- Blockquote     | #8FD4A5 | Soft Mint     | italic
  -- Horizontal Rule| #C9A0DC | Soft Lavender |
  -- Delimiter      | #636E7B | Slate Smoke   |
  -- Table Pipe     | #8892A0 | Steel Gray    |
  -- Table Header   | #E8C882 | Warm Sand     | bold
  -- Table Align    | #636E7B | Slate Smoke   |
  -- =============================================================================

  -- 기본 마크다운 요소
  hl(0, "RenderMarkdownBullet", { fg = p.md_list })           -- List Marker: Warm Sand (#E8C882)
  hl(0, "RenderMarkdownCode", { bg = p.bg_dark })             -- Code Block bg: #1E2028
  hl(0, "RenderMarkdownDash", { fg = p.md_hr })               -- Horizontal Rule: Soft Lavender (#C9A0DC)
  hl(0, "RenderMarkdownTableHead", { fg = p.md_list, bold = true }) -- Table Header: Warm Sand (#E8C882)
  hl(0, "RenderMarkdownTableRow", { fg = p.md_table })        -- Table Pipe: Steel Gray (#8892A0)
  hl(0, "RenderMarkdownTableFill", { fg = p.md_delimiter })   -- Table Align: Slate Smoke (#636E7B)
  hl(0, "RenderMarkdownCodeInline", { fg = p.md_code, bg = p.bg_dark }) -- Inline Code: Soft Mint + bg

  -- 인용문
  hl(0, "RenderMarkdownQuote", { fg = p.md_code, italic = true }) -- Blockquote: Soft Mint (#8FD4A5)

  -- 링크
  hl(0, "RenderMarkdownLink", { fg = p.md_link })             -- Link Text: Soft Sky (#7BB8E0)

  -- 제목 배경과 전경색 (H1-H6) - 모두 동일한 Soft Rose 사용
  for i = 1, 6 do
    local heading_bg = util.blend(p.md_heading, 0.1, p.bg)
    hl(0, "RenderMarkdownH" .. i .. "Bg", { bg = heading_bg })
    hl(0, "RenderMarkdownH" .. i .. "Fg", { fg = p.md_heading, bold = true })
  end
end

return M
