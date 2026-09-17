-- 팔레트/그룹 수정 후 색상 테마를 통째로 재적용한다 (Lua 모듈 캐시 포함).
-- 사용법: :source dev/reload.lua
for k in pairs(package.loaded) do
  if k:match("^bityoungjae") then
    package.loaded[k] = nil
  end
end
vim.cmd("colorscheme bityoungjae")
