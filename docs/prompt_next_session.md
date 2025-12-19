# 다음 세션 프롬프트

아래 내용을 새로운 에이전트에게 전달하세요.

---

## 프로젝트 개요

**Mumyeong(무명)** - Neovim 컬러스킴 프로젝트

- 경로: `/home/bityoungjae/Work/bityoungjae.nvim`
- 참고: `/home/bityoungjae/Work/tokyonight.nvim`

## 현재 프로젝트 구조

```
bityoungjae.nvim/
├── colors/
│   └── bityoungjae.lua              # 진입점 (:colorscheme bityoungjae)
├── lua/
│   ├── bityoungjae/
│   │   ├── init.lua             # 메인 설정
│   │   ├── palette.lua          # 색상 팔레트 (완성됨)
│   │   ├── util.lua             # 색상 유틸리티 (blend, darken, lighten 등)
│   │   ├── highlights.lua       # 그룹 로더
│   │   └── groups/
│   │       ├── init.lua         # 그룹 로딩
│   │       ├── editor.lua       # UI 요소
│   │       ├── syntax.lua       # 기본 문법
│   │       ├── treesitter.lua   # TreeSitter
│   │       ├── lsp.lua          # LSP 시맨틱 토큰
│   │       ├── diagnostics.lua  # 진단 메시지
│   │       ├── git.lua          # Git 관련
│   │       └── plugins/         # 플러그인별 하이라이트
│   │           ├── cmp.lua
│   │           ├── telescope.lua
│   │           ├── neo-tree.lua
│   │           ├── gitsigns.lua
│   │           ├── indent-blankline.lua
│   │           ├── which-key.lua
│   │           ├── lazy.lua
│   │           ├── mason.lua
│   │           ├── dashboard.lua
│   │           └── noice.lua
│   └── lualine/
│       └── themes/
│           └── bityoungjae.lua      # Lualine 테마
└── docs/
    ├── 개발_로드맵.md
    ├── tasks.md                  # 전체 작업 목록
    ├── task-plugins.md           # 플러그인 작업 목록
    ├── colors.md                 # 색상 레퍼런스
    └── prompt_color_util.md
```

## 완료된 작업

- [x] 색상 팔레트 디자인 및 완성
- [x] 색상 유틸리티 모듈 추가
- [x] Lualine 테마 통합
- [x] highlights.lua 모듈화

## 현재 작업: 추가 플러그인 지원

`docs/task-plugins.md` 참고.

### 추가할 플러그인 (11개)

**우선순위 높음**:
1. snacks.nvim
2. blink.cmp
3. bufferline
4. trouble

**우선순위 중간**:
5. flash
6. mini.indentscope
7. treesitter-context
8. render-markdown.nvim
9. todo-comments.nvim

**우선순위 낮음**:
10. grug-far.nvim
11. smear-cursor.nvim

## 작업 방법

1. tokyonight.nvim의 해당 플러그인 하이라이트 파일 참고
2. `lua/bityoungjae/groups/plugins/[플러그인명].lua` 파일 생성
3. `lua/bityoungjae/groups/init.lua`의 plugins 테이블에 추가
4. 테스트: `nvim --headless -c "colorscheme bityoungjae" -c "qa"`

### 플러그인 파일 템플릿

```lua
-- [플러그인명] highlights
local M = {}

function M.setup(hl, p)
  -- p: palette (색상)
  -- hl: vim.api.nvim_set_hl

  hl(0, "HighlightGroup", { fg = p.accent1, bg = p.bg_dark })
end

return M
```

## 남은 전체 작업 (docs/tasks.md)

- [ ] 추가 플러그인 지원 (20개+) ← 현재 진행 중
- [ ] 다중 테마 변형 지원 (dark/light)
- [ ] README.md 작성
- [ ] Lightline 통합
- [ ] 외부 앱 테마 내보내기
- [ ] Neovim 도움말 문서
- [ ] 테스트 스위트 구축
- [ ] CI/CD 설정

## 참고 사항

- 색상 블렌딩 시 `util.blend(color, alpha, bg)` 사용 (8자리 HEX 미지원)
- tokyonight.nvim 구조를 참고하되, 우리 팔레트 색상 사용
- 테스트 후 `docs/task-plugins.md` 체크리스트 업데이트
