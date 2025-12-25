# BitYoungjae.nvim

> **Mumyeong v3.0** - "Deep Void & Bioluminescent Neon" (심해 속의 형광)

BitYoungjae가 개인적으로 사용하기 위해 만든 다크 Neovim 컬러스킴입니다.

깊은 심해 배경과 부드러운 파스텔 톤의 하이라이트가 특징이며, Clojure, TypeScript, Markdown, JSON에 최적화되어 있습니다.

## 특징

- 눈의 피로를 최소화하는 부드러운 파스텔 컬러
- 깊은 심해 톤의 배경과 적절한 대비
- 다양한 플러그인 지원 (21개 이상)
- Lualine, Sublime Text 테마 포함

## 요구사항

- Neovim >= 0.8.0
- `termguicolors` 활성화

## 설치

### lazy.nvim

```lua
{
  "bityoungjae/bityoungjae.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    vim.cmd([[colorscheme bityoungjae]])
  end,
}
```

### packer.nvim

```lua
use {
  "bityoungjae/bityoungjae.nvim",
  config = function()
    vim.cmd([[colorscheme bityoungjae]])
  end,
}
```

### vim-plug

```vim
Plug 'bityoungjae/bityoungjae.nvim'
colorscheme bityoungjae
```

## 사용법

```lua
vim.cmd([[colorscheme bityoungjae]])
```

### Lualine 설정

```lua
require('lualine').setup {
  options = {
    theme = 'bityoungjae'
  }
}
```

## 지원 플러그인

| 플러그인              | 플러그인           | 플러그인             |
| --------------------- | ------------------ | -------------------- |
| blink.cmp             | bufferline.nvim    | dashboard-nvim       |
| flash.nvim            | gitsigns.nvim      | grug-far.nvim        |
| indent-blankline.nvim | lazy.nvim          | lualine.nvim         |
| mason.nvim            | mini.indentscope   | neo-tree.nvim        |
| noice.nvim            | nvim-cmp           | render-markdown.nvim |
| smear-cursor.nvim     | snacks.nvim        | telescope.nvim       |
| todo-comments.nvim    | treesitter-context | trouble.nvim         |
| which-key.nvim        |                    |                      |

## 컬러 팔레트

### 배경 (Background)

| 이름        | 색상코드  | 용도                |
| ----------- | --------- | ------------------- |
| Deep Void   | `#111117` | 메인 에디터 배경    |
| Night Mist  | `#16171F` | Neo-tree 배경       |
| Dark Panel  | `#1E2028` | 팝업, 자동완성      |
| Slate Focus | `#2C3145` | 선택 영역           |
| Steel Edge  | `#3B4261` | 테두리              |

### 구문 (Syntax)

| 이름          | 색상코드  | 용도                |
| ------------- | --------- | ------------------- |
| Frost White   | `#ECEFF4` | 기본 텍스트, 변수   |
| Cloud Gray    | `#D0D6E0` | 파라미터            |
| Slate Smoke   | `#636E7B` | 주석                |
| Steel Gray    | `#8892A0` | 괄호, 구분자        |
| Soft Mint     | `#8FD4A5` | 문자열              |
| Soft Coral    | `#E89B82` | 숫자, 불리언        |
| Soft Lavender | `#C9A0DC` | 키워드              |
| Soft Sky      | `#7BB8E0` | 함수, 메서드        |
| Warm Sand     | `#E8C882` | 타입, 클래스        |
| Soft Rose     | `#E8717E` | 상수, 에러          |
| Soft Teal     | `#8ED8D8` | 연산자, 속성        |

## 라이선스

MIT
