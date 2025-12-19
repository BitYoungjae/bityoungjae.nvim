-- bufferline.nvim 하이라이트
local M = {}

function M.setup(hl, p)
  -- 선택된 버퍼의 BufferLine 인디케이터
  hl(0, "BufferLineIndicatorSelected", { fg = p.git_change })
end

return M
