-- 컬러스킴 진입점
-- 사용법: :colorscheme bityoungjae

vim.cmd("hi clear")
if vim.fn.exists("syntax_on") then
  vim.cmd("syntax reset")
end

vim.o.termguicolors = true
vim.g.colors_name = "bityoungjae"

require("bityoungjae").setup()
