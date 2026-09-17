# Mumyeong.nvim - Color Reference

## Neon Glass

Mumyeong (무명)은 omarchy-mumyeong-theme("**Neutral Void, 무채색의 공허**")와 같은 결로 설계되었습니다.
배경·패널·선택·커서·진단은 데스크톱의 아연 시스템을 그대로 입고(유리처럼 중립), **코드 토큰만 형광 채도**를 유지합니다 — 벽지 대신 코드가 주인공.

- 본문 `#B4B4BC` ≈ 9.7:1 (할로네이션 방지 밴드, APCA Lc ≈ -62)
- 주석은 배경·CursorLine·Visual 모두에서 ≥ 4.5
- 경보용 로즈(`#E08A8A`)는 에러·삭제·FIX에만 사용
- `oma*` 표기는 데스크톱 팔레트(colors.toml) 앵커

---

## 1. Base: 아연 유리 (Carbon Layers)

| Variable       | Hex       | Anchor  | Role                                   |
| :------------- | :-------- | :------ | :------------------------------------- |
| **bg**         | `#09090B` | oma0    | 메인 에디터 (Void)                     |
| **bg_light**   | `#18181B` | oma1    | 사이드바 (ghostty 배경과 동일)          |
| **bg_dark**    | `#18181B` | oma1    | 팝업, 플로트, 상태줄                    |
| **cursor_line**| `#202024` | -       | 커서 라인 (배경 대비 ~1.23:1)           |
| **selection**  | `#27272A` | oma2    | UI 표면 선택 (팝업·픽커·lualine — 데스크톱과 동일) |
| **visual**     | `#283457` | -       | 편집기 Visual (블루 틴트 — bg_search와 같은 틴트 언어, 배경 대비 1.6:1) |
| **border**     | `#4E4E57` | -       | 창 경계·유리 단면                       |
| **line_nr**    | `#62626C` | -       | 비활성 줄 번호 (≥ 3.2:1)                |
| **line_nr_cur**| `#E4E4E7` | oma5    | 활성 줄 번호 (`#FFFFFF` 아님)           |
| **whitespace** | `#303039` | -       | 리스트 문자 (줄 번호보다 한 계단 어둡게) |
| **ghost**      | `#585862` | -       | blink.cmp 고스트 텍스트                 |

## 2. 본문: 무명 (Frost Mist)

| Variable       | Hex       | Anchor | Role                                    |
| :------------- | :-------- | :----- | :-------------------------------------- |
| **fg**         | `#B4B4BC` | -      | 본문, 변수 (oma4를 본문용으로 반 계단 밝게) |
| **comment**    | `#9BA3AF` | -      | 주석 (슬레이트 기운의 유리빛)            |
| **parameter**  | `#A1A1AA` | oma4   | 파라미터 (본문보다 반 계단 아래 — 의도된 근접) |
| **fg_light**   | `#E4E4E7` | oma5   | 드문 강조                                |
| **cursor**     | `#F4F4F5` | oma8   | 커서·UI 액센트 — 색이 아니라 빛 (Ghost Silver) |
| **ui_accent**  | `#F4F4F5` | oma8   | 타이틀, 디렉터리, 매치 캐럿              |

## 3. Syntax: 소수 형광

hue는 데스크톱 시맨틱에서 왔고, 채도는 편집기용으로 반 계단 올렸습니다.

| Group         | Hex       | Notes                                        |
| :------------ | :-------- | :------------------------------------------- |
| **Function**  | `#7DC4FF` | 하늘 형광 (oma9 슬레이트의 채도를 되살린 주 신호) |
| **String**    | `#82D9A4` | 에메랄드 (oma14 형제)                         |
| **Type**      | `#F0D48A` | 브라스 상향 (oma13 hue)                       |
| **Number**    | `#EDA87C` | oma12 Sand를 반 계단 밝게                     |
| **Constant**  | `#CBAF8F` | 뮤트 골드. **에러가 아님**                    |
| **Keyword**   | `#C79FD6` | oma15 Thistle 상향, **bold**                  |
| **Property**  | `#74C0BE` | JSON 키, 멤버. 청록                           |
| **Macro**     | `#A18CE0` | 바이올렛 (키워드 염주와 ΔE 19+)               |
| **Special**   | `#52CCE8` | 시안. 이스케이프, builtin (속성 청록과 ΔE 18+) |
| **Operator**  | `#8593A3` | 후퇴하는 스틸                                 |
| **Punctuation**| `#7E8695`| 괄호, 구분자                                  |

## 4. Language

### Clojure
괄호는 전역 punctuation보다 어두운 `#6B6B75`입니다 (의도된 디머). 괄호 지옥을 시각적으로 낮춥니다.

### TypeScript
타입(브라스 상향)과 함수(하늘)를 색온도로 나눕니다. 파라미터는 본문과 거의 같습니다(의도). Boolean은 뮤트 골드입니다.

### JSON
키는 `property` 청록, 콜론 계열은 `operator` 스틸.

### Markdown
H1–H6는 같은 하늘 hue에서 밝기만 내려갑니다.
`#7DC4FF` → `#74B9F3` → `#6CAEE8` → `#65A3DC` → `#6198D0` → `#5D8FC4`
인라인 코드는 oma10(`#CBD5E1`, 데스크톱 '코드 블록'과 동일) 금속성.

---

## 5. UI & Diagnostics

- **Error** `#E08A8A` (oma11): 에러·삭제·FIX만. 경고보다 채도·대비 위계 상위.
- **Warning** `#A89B6B`: oma13 Brass를 error 아래로 반 계단 조정한 값. (oma13 원본 `#D4C88C`는 terminal yellow로 사용)
- **Info** `#94A3B8` (oma9): 데스크톱 '정보'와 동일. func과 hue를 공유하지 않음 (ΔE 26).
- **Hint** `#74828F`: 슬레이트 한 계단 아래 (플로트 배경에서도 ≥ 4.5).
- **Git**: Add `#81C784`(oma14) · Change = func · Delete = error.
- **검색**: `#2E3A4A` 슬레이트 틴트 / 증분 검색 `#2D3B33` 에메랄드 틴트. 반전하지 않습니다.
- **flash**: 점프 라벨은 type 브라스(`#F0D48A`) 칩에 본문색 bold — 이동 코드가 에메랄드 매치 위에서 확실히 읽히게. 빨강 격리 원칙은 그대로 유지.
- **snacks picker**: ignored·hidden 항목은 snacks 기본값(NonText 링크) 대신 주석 톤(`#9BA3AF`, 패널 위 6.4:1)으로 — 무시됨 위계는 유지하되 읽힙니다.
- **blink.cmp 고스트 텍스트**: `#585862` (확정 입력이 아님을 밝기로 표현). nvim 기본 `ComplHint`도 같은 톤으로 재정의 — 런타임 기본 링크(→NonText)가 극도 디밍을 상속하지 않게.

## 6. Terminal (ANSI) — ghostty 매핑 1:1

터미널 앱이 데스크톱 ghostty와 같은 색을 보도록 매핑을 공유합니다.

| Color  | Normal    | Bright    |     | Color   | Normal    | Bright    |
| :----- | :-------- | :-------- | --- | :------ | :-------- | :-------- |
| Black  | `#09090B` | `#71717A` |     | Blue    | `#CBD5E1` | `#94A3B8` |
| Red    | `#E08A8A` | `#E08A8A` |     | Magenta | `#F4F4F5` | `#C4A6CF` |
| Green  | `#81C784` | `#81C784` |     | Cyan    | `#94A3B8` | `#94A3B8` |
| Yellow | `#D4C88C` | `#D4C88C` |     | White   | `#A1A1AA` | `#FFFFFF` |

## 7. Principles

1. 본문 대비는 7–11:1. 15:1 이상은 피한다.
2. 주석과 Visual 안 주석은 4.5:1 이상.
3. UI(타이틀·디렉터리·커서)는 색이 아니라 빛(Ghost Silver)으로 강조한다.
4. 빨강은 주의 신호로 격리한다. 진단 위계는 error > warning.
5. 키워드는 색에만 의존하지 않고 bold를 쓴다.
6. 역할이 다른 구문 색은 CIE ΔE 15 이상 유지한다 (`tests/contrast.lua`가 검증).
7. 의도된 근접은 문서로 남긴다: parameter ≈ 본문, string ≈ git add(같은 에메랄드 가족), comment ≈ operator(소음 밴드), Clojure 괄호·whitespace(디밍).
