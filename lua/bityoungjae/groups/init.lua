-- 하이라이트 그룹 로더
local M = {}

-- 코어 그룹 — 아키텍처 축. 로드 순서가 의미 있으므로 명시한다.
local core_groups = {
  "bityoungjae.groups.editor",
  "bityoungjae.groups.syntax",
  "bityoungjae.groups.treesitter",
  "bityoungjae.groups.lsp",
  "bityoungjae.groups.diagnostics",
  "bityoungjae.groups.git",
}

-- plugins/ 아래는 파일만 추가하면 자동 등록된다 (readdir: nvim 0.8 호환)
local function plugin_group_names()
  local here = vim.fn.fnamemodify(debug.getinfo(1, "S").source:sub(2), ":p:h")
  local names = {}
  for _, file in ipairs(vim.fn.readdir(here .. "/plugins")) do
    if file:sub(-4) == ".lua" then
      names[#names + 1] = file:sub(1, -5)
    end
  end
  table.sort(names)
  return names
end

function M.setup(p)
  local hl = vim.api.nvim_set_hl

  for _, name in ipairs(core_groups) do
    require(name).setup(hl, p)
  end

  for _, name in ipairs(plugin_group_names()) do
    require("bityoungjae.groups.plugins." .. name).setup(hl, p)
  end
end

return M
