# BitYoungjae.nvim

BitYoungjae가 개인적으로 사용하기 위해 만든 다크 Neovim 컬러스킴입니다.

깊은 카본 배경과 빛나는 하이라이트가 특징이며, Clojure, TypeScript, Markdown, JSON에 최적화되어 있습니다.

## 특징

- 균형 잡힌 대비의 집중력 있는 다크 테마
- 눈의 피로를 줄여주는 중립적인 컬러 팔레트
- 다양한 플러그인 지원 (21개 이상)
- Lualine 테마 포함

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

| 이름         | 색상코드  | 용도                |
| ------------ | --------- | ------------------- |
| Void         | `#09090B` | 배경                |
| Onyx         | `#18181B` | 패널, 플로팅 윈도우 |
| Charcoal     | `#27272A` | 선택 영역           |
| Zinc         | `#71717A` | 테두리, 줄 번호     |
| Mist Gray    | `#A1A1AA` | 주석                |
| Platinum     | `#E4E4E7` | 기본 텍스트         |
| Ghost Silver | `#F4F4F5` | 하이라이트          |
| Pale Emerald | `#81C784` | 문자열              |
| Sand         | `#D9A67E` | 숫자, 상수          |
| Thistle      | `#C4A6CF` | 키워드              |
| Slate Blue   | `#94A3B8` | 함수                |
| Brass        | `#D4C88C` | 타입                |
| Muted Rose   | `#E08A8A` | 에러                |

## 라이선스

MIT
