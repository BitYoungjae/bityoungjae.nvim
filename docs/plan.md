# bityoungjae.nvim 개발 로드맵

이 문서는 bityoungjae.nvim을 완성된 Neovim 컬러스킴 프로젝트로 만들기 위해 필요한 작업들을 정리한 것입니다.

> 참고 프로젝트: [tokyonight.nvim](https://github.com/folke/tokyonight.nvim)

---

## 목차

1. [현재 상태 분석](#현재-상태-분석)
2. [프로젝트 구조 비교](#프로젝트-구조-비교)
3. [기능 비교표](#기능-비교표)
4. [필요 작업 목록](#필요-작업-목록)
5. [권장 작업 순서](#권장-작업-순서)

---

## 현재 상태 분석

### bityoungjae.nvim 현재 구조

```
bityoungjae.nvim/
├── colors/
│   └── bityoungjae.lua          # 진입점
├── lua/
│   └── bityoungjae/
│       ├── init.lua         # 메인 설정 및 구성
│       ├── palette.lua      # 색상 정의 (현재 모두 #000000)
│       └── highlights.lua   # 하이라이트 그룹 (499줄)
└── docs/
    └── 개발_로드맵.md
```

### 주요 현황

| 항목 | 상태 | 비고 |
|------|------|------|
| 기본 구조 | 완성 | colors/, lua/bityoungjae/ 구조 갖춤 |
| 색상 팔레트 | 미완성 | 모든 값이 `#000000`으로 설정됨 |
| 하이라이트 그룹 | 부분 완성 | 17개 플러그인 지원, 기본 문법 하이라이트 포함 |
| 설정 시스템 | 기본 완성 | transparent, italic_comments 등 옵션 존재 |
| 터미널 색상 | 완성 | 16색 터미널 색상 지원 |

---

## 프로젝트 구조 비교

### tokyonight.nvim 참조 구조

```
tokyonight.nvim/
├── colors/                      # 5개의 컬러스킴 진입점
│   ├── tokyonight.lua
│   ├── tokyonight-day.lua
│   ├── tokyonight-moon.lua
│   ├── tokyonight-night.lua
│   └── tokyonight-storm.lua
├── lua/
│   ├── tokyonight/
│   │   ├── init.lua             # 메인 모듈
│   │   ├── config.lua           # 설정 시스템 (77줄)
│   │   ├── theme.lua            # 테마 설정 파이프라인
│   │   ├── util.lua             # 색상 유틸리티 (blend, darken 등)
│   │   ├── colors/              # 스타일별 색상 정의
│   │   │   ├── init.lua
│   │   │   ├── day.lua
│   │   │   ├── moon.lua
│   │   │   ├── night.lua
│   │   │   └── storm.lua
│   │   ├── groups/              # 플러그인별 하이라이트 (80+ 파일)
│   │   │   ├── init.lua         # 플러그인 감지 및 로딩
│   │   │   ├── base.lua         # 핵심 UI 하이라이트
│   │   │   ├── treesitter.lua
│   │   │   ├── semantic_tokens.lua
│   │   │   ├── cmp.lua
│   │   │   ├── telescope.lua
│   │   │   └── [70+ 플러그인 파일]
│   │   └── extra/               # 외부 앱 테마 생성기 (50+ 파일)
│   ├── lualine/themes/          # Lualine 통합 (6개 테마)
│   ├── lightline/colorscheme/   # Lightline 통합
│   └── barbecue/theme/          # Barbecue 통합
├── extras/                      # 생성된 외부 앱 테마 파일
├── doc/                         # Neovim 도움말 문서
└── tests/                       # 테스트 스위트
```

---

## 기능 비교표

| 기능 | bityoungjae.nvim | tokyonight.nvim | 상태 |
|------|------------------|-----------------|------|
| **핵심 컬러스킴** | 기본 구조 | 완전 구현 | 부분 완성 |
| **색상 팔레트** | 템플릿 (모두 #000000) | 4가지 스타일 | 미완성 |
| **하이라이트 그룹** | 499줄, 단일 파일 | 1000+ 줄, 모듈화 | 부분 완성 |
| **설정 시스템** | 기본 setup() | 고급 config.lua | 기본 완성 |
| **투명 배경 옵션** | 지원 | 지원 | 완성 |
| **터미널 색상** | 지원 | 지원 | 완성 |
| **이탤릭 주석** | 지원 | 지원 | 완성 |
| **색상 유틸리티** | 없음 | blend, darken 등 | 미구현 |
| **다중 테마 변형** | 없음 (단일 테마) | 4가지 (night, moon, storm, day) | 미구현 |
| **플러그인 지원** | 17개 | 80+ 개 | 최소 구현 |
| **Lualine 통합** | 없음 | 6개 테마 파일 | 미구현 |
| **Lightline 통합** | 없음 | 지원 | 미구현 |
| **Barbecue 통합** | 없음 | 지원 | 미구현 |
| **외부 앱 테마** | 없음 | 50+ 앱 지원 | 미구현 |
| **문서화** | 없음 | 완전한 도움말 | 미구현 |
| **테스트 스위트** | 없음 | 있음 | 미구현 |

---

## 필요 작업 목록

### 필수 (Critical)

#### 1. 색상 팔레트 완성

**파일**: `lua/bityoungjae/palette.lua`

현재 모든 색상이 `#000000`으로 설정되어 있어 테마가 제대로 작동하지 않습니다.

**필요 작업**:
- 96개 색상 필드에 실제 색상값 정의
- 일관된 색상 체계 디자인
- 배경, 전경, 문법 요소, UI 요소별 색상 구성

**참고**: tokyonight.nvim의 `lua/tokyonight/colors/` 디렉토리

---

#### 2. 색상 유틸리티 모듈 추가

**새 파일**: `lua/bityoungjae/util.lua`

색상 계산 및 변환을 위한 유틸리티 함수가 필요합니다.

**필요 함수**:
```lua
M.blend(fg, alpha, bg)    -- 두 색상을 알파값으로 블렌딩
M.darken(hex, amount)     -- 색상을 어둡게
M.lighten(hex, amount)    -- 색상을 밝게
M.saturate(hex, amount)   -- 채도 조정
```

**참고**: tokyonight.nvim의 `lua/tokyonight/util.lua`

---

### 중요 (High Priority)

#### 3. 하이라이트 그룹 모듈화

**현재**: `lua/bityoungjae/highlights.lua` 단일 파일 (499줄)

**목표 구조**:
```
lua/bityoungjae/groups/
├── init.lua              # 플러그인 감지 및 그룹 로딩
├── base.lua              # 기본 에디터 UI
├── syntax.lua            # 기본 문법 하이라이트
├── treesitter.lua        # TreeSitter 그룹
├── semantic_tokens.lua   # LSP 시맨틱 토큰
├── diagnostics.lua       # 진단 메시지
├── git.lua               # Git 관련 하이라이트
└── plugins/
    ├── cmp.lua
    ├── telescope.lua
    ├── neo-tree.lua
    ├── gitsigns.lua
    └── [추가 플러그인...]
```

**장점**:
- 유지보수 용이
- 플러그인별 독립적 관리
- 조건부 로딩으로 성능 최적화

---

#### 4. Lualine 통합

**새 파일**: `lua/lualine/themes/bityoungjae.lua`

Lualine 상태줄 플러그인과의 통합이 필요합니다.

**구현 내용**:
```lua
return {
  normal = {
    a = { bg = colors.blue, fg = colors.bg, gui = "bold" },
    b = { bg = colors.bg_highlight, fg = colors.blue },
    c = { bg = colors.bg_statusline, fg = colors.fg_sidebar },
  },
  insert = { ... },
  visual = { ... },
  replace = { ... },
  command = { ... },
  inactive = { ... },
}
```

**참고**: tokyonight.nvim의 `lua/lualine/themes/`

---

#### 5. 다중 테마 변형 지원

**새 구조**:
```
lua/bityoungjae/colors/
├── init.lua      # 스타일 선택 로직
├── dark.lua      # 어두운 테마
├── light.lua     # 밝은 테마
└── [추가 변형...]
```

**설정 예시**:
```lua
require("bityoungjae").setup({
  style = "dark",        -- 또는 "light"
  light_style = "light", -- vim.o.background = "light"일 때 사용
})
```

---

### 권장 (Nice to Have)

#### 6. 추가 플러그인 지원

현재 17개 → 목표 80+ 개

**우선순위 높은 플러그인**:
- lazy.nvim (패키지 매니저)
- mason.nvim (LSP 설치)
- nvim-dap (디버깅)
- trouble.nvim (진단 목록)
- aerial.nvim (심볼 탐색)
- bufferline.nvim (버퍼 탭)
- notify.nvim (알림)
- mini.* 시리즈 (20+ 플러그인)

---

#### 7. Lightline 통합

**새 파일**: `lua/lightline/colorscheme/bityoungjae.lua`

---

#### 8. Barbecue 통합

**새 파일**: `lua/barbecue/theme/bityoungjae.lua`

---

#### 9. 외부 앱 테마 내보내기

**새 구조**:
```
lua/bityoungjae/extra/
├── alacritty.lua
├── kitty.lua
├── wezterm.lua
├── iterm.lua
├── tmux.lua
├── fish.lua
├── zsh.lua
└── [추가 앱...]

extras/                  # 생성된 테마 파일
├── alacritty/
├── kitty/
└── ...
```

---

#### 10. 문서화

**필요 파일**:
- `README.md` - 프로젝트 소개, 설치, 설정 방법
- `doc/bityoungjae.txt` - Neovim 내장 도움말 (:help bityoungjae)
- `CHANGELOG.md` - 버전별 변경 사항

---

#### 11. 테스트 및 CI/CD

**새 구조**:
```
tests/
├── minimal_init.lua
├── colors_spec.lua
├── highlights_spec.lua
└── config_spec.lua

.github/workflows/
├── test.yml
└── lint.yml
```

---

## 권장 작업 순서

### Phase 1: 기본 완성 (필수)

| 순서 | 작업 | 예상 난이도 |
|------|------|-------------|
| 1 | 색상 팔레트 디자인 및 완성 | 높음 (창의적 작업) |
| 2 | 색상 유틸리티 모듈 추가 | 낮음 |
| 3 | 하이라이트에 유틸리티 적용 | 중간 |

### Phase 2: 사용성 개선 (중요)

| 순서 | 작업 | 예상 난이도 |
|------|------|-------------|
| 4 | Lualine 테마 통합 | 중간 |
| 5 | highlights.lua 모듈화 | 중간 |
| 6 | 추가 플러그인 지원 (20개+) | 중간 |

### Phase 3: 기능 확장 (권장)

| 순서 | 작업 | 예상 난이도 |
|------|------|-------------|
| 7 | 다중 테마 변형 (dark/light) | 중간 |
| 8 | README.md 작성 | 낮음 |
| 9 | Lightline 통합 | 낮음 |

### Phase 4: 완성도 (선택)

| 순서 | 작업 | 예상 난이도 |
|------|------|-------------|
| 10 | 외부 앱 테마 내보내기 | 높음 |
| 11 | Neovim 도움말 문서 | 중간 |
| 12 | 테스트 스위트 구축 | 중간 |
| 13 | CI/CD 설정 | 낮음 |

---

## 참고 자료

- [tokyonight.nvim 소스코드](https://github.com/folke/tokyonight.nvim)
- [Neovim 하이라이트 그룹 문서](https://neovim.io/doc/user/syntax.html#highlight-groups)
- [Lualine 테마 작성법](https://github.com/nvim-lualine/lualine.nvim#custom-theme)
- [TreeSitter 하이라이트 그룹](https://github.com/nvim-treesitter/nvim-treesitter/blob/master/CONTRIBUTING.md#highlights)
