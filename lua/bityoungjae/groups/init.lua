-- 하이라이트 그룹 로더
local M = {}

-- 코어 그룹
local groups = {
  "bityoungjae.groups.editor",
  "bityoungjae.groups.syntax",
  "bityoungjae.groups.treesitter",
  "bityoungjae.groups.lsp",
  "bityoungjae.groups.diagnostics",
  "bityoungjae.groups.git",
}

-- 플러그인 그룹
local plugins = {
  "bityoungjae.groups.plugins.cmp",
  "bityoungjae.groups.plugins.telescope",
  "bityoungjae.groups.plugins.neo-tree",
  "bityoungjae.groups.plugins.gitsigns",
  "bityoungjae.groups.plugins.indent-blankline",
  "bityoungjae.groups.plugins.which-key",
  "bityoungjae.groups.plugins.lazy",
  "bityoungjae.groups.plugins.mason",
  "bityoungjae.groups.plugins.dashboard",
  "bityoungjae.groups.plugins.noice",
  "bityoungjae.groups.plugins.snacks",
  "bityoungjae.groups.plugins.blink",
  "bityoungjae.groups.plugins.bufferline",
  "bityoungjae.groups.plugins.trouble",
  "bityoungjae.groups.plugins.flash",
  "bityoungjae.groups.plugins.mini-indentscope",
  "bityoungjae.groups.plugins.treesitter-context",
  "bityoungjae.groups.plugins.render-markdown",
  "bityoungjae.groups.plugins.todo-comments",
  "bityoungjae.groups.plugins.grug-far",
  "bityoungjae.groups.plugins.smear-cursor",
}

function M.setup(p)
  local hl = vim.api.nvim_set_hl

  -- 코어 그룹 로드
  for _, name in ipairs(groups) do
    require(name).setup(hl, p)
  end

  -- 플러그인 그룹 로드
  for _, name in ipairs(plugins) do
    require(name).setup(hl, p)
  end
end

return M
