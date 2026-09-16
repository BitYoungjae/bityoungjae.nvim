-- render-markdown.nvim 하이라이트
local M = {}

function M.setup(hl, p)
  local util = require("bityoungjae.util")

  hl(0, "RenderMarkdownBullet", { fg = p.md_list })
  hl(0, "RenderMarkdownCode", { bg = p.bg_dark })
  hl(0, "RenderMarkdownDash", { fg = p.md_hr })
  hl(0, "RenderMarkdownTableHead", { fg = p.md_list, bold = true })
  hl(0, "RenderMarkdownTableRow", { fg = p.md_table })
  hl(0, "RenderMarkdownTableFill", { fg = p.md_delimiter })
  hl(0, "RenderMarkdownCodeInline", { fg = p.md_code, bg = p.bg_dark })
  hl(0, "RenderMarkdownQuote", { fg = p.md_code, italic = true })
  hl(0, "RenderMarkdownLink", { fg = p.md_link })

  local headings = { p.md_h1, p.md_h2, p.md_h3, p.md_h4, p.md_h5, p.md_h6 }
  for i, heading in ipairs(headings) do
    hl(0, "RenderMarkdownH" .. i .. "Bg", { bg = util.blend(heading, 0.10, p.bg) })
    hl(0, "RenderMarkdownH" .. i .. "Fg", { fg = heading, bold = true })
  end
end

return M
