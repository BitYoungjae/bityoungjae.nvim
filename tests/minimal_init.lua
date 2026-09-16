-- tests/minimal_init.lua
local this = vim.fn.expand("<sfile>:p")
local root = vim.fn.fnamemodify(this, ":h:h")
vim.opt.runtimepath:prepend(root)
vim.opt.termguicolors = true
