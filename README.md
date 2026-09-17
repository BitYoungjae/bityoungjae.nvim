# BitYoungjae.nvim

BitYoungjae가 개인적으로 사용하려고 만든 다크 Neovim 컬러스킴 **무명(Mumyeong)**입니다.
[omarchy-mumyeong-theme](https://github.com/bityoungjae/omarchy-mumyeong-theme) 데스크톱 테마와 한 세트입니다.
색상별 역할 매핑은 [docs/colors.md](docs/colors.md)를 참고하세요.

![preview](extras/preview.png)

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
    require("bityoungjae").setup({
      italic_comments = true,
    })
    vim.cmd([[colorscheme bityoungjae]])
  end,
}
```

`italic_comments`를 `false`로 두면 주석에서 이탤릭을 끕니다. `transparent`와 `terminal_colors`도 `setup()`으로 제어합니다.

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

### Lualine

```lua
require("lualine").setup {
  options = {
    theme = "bityoungjae",
  },
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

## 개발

팔레트나 하이라이트를 바꾼 뒤에는 회귀 테스트를 돌립니다.

```bash
nvim --headless -u tests/minimal_init.lua -c "luafile tests/contrast.lua" -c "qa!"
```

설치 환경과 핵심 대비는 `:checkhealth bityoungjae`로 확인할 수 있습니다. 새 플러그인 지원은 `lua/bityoungjae/groups/plugins/`에 파일만 추가하면 자동으로 로드됩니다. 색을 바꿔보고 싶을 때는 `dev/` 아래 실험 명령을 씁니다 — `:source dev/visual-lab.lua` 후 `:VisualLab`, `:source dev/flash-lab.lua` 후 `:FlashLab`으로 후보색을 화면에서 바로 비교할 수 있습니다.

## 라이선스

MIT
