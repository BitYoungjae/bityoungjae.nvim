# Mumyeong.nvim - Color Reference

## "Neutral Void & Luminous Highlights"

**Mumyeong (무명)** 테마는 '무채색의 공허(Void)' 속에 떠오르는 '빛(Light)'을 형상화했습니다.
이 Neovim 포트(Port)는 **v2.0** 스펙을 따르며, 장시간 코딩 시 눈의 피로를 최소화하면서도 중요한 정보가 명확히 인지되도록 설계되었습니다.

특히 **Clojure, TypeScript, Markdown, JSON** 편집 환경에서 구조적인 가독성을 극대화하는 데 초점을 맞추었습니다.

---

## 1. Base Palette: Carbon & Mist

배경은 깊이감 있는 어두운 톤을 사용하여 몰입감을 주며, 텍스트는 차가운 회색조와 순백색을 사용하여 눈부심을 방지하고 명료함을 유지합니다.

| Variable     | Color        | Hex       | Role                                                                 |
| :----------- | :----------- | :-------- | :------------------------------------------------------------------- |
| **bg**       | **Void**     | `#09090B` | 에디터의 메인 배경. 순수한 검정보다 깊이감 있는 Carbon Black.        |
| **bg_dark**  | **Onyx**     | `#18181B` | 사이드바(NvimTree), 플로팅 윈도우 배경.                              |
| **bg_light** | **Charcoal** | `#27272A` | 선택 영역(Visual), 활성 상태의 배경.                                 |
| **border**   | **Zinc**     | `#71717A` | **Glass Edge**. 창의 경계가 배경에 묻히지 않고 유리의 단면처럼 빛남. |
| **fg**       | **Platinum** | `#E4E4E7` | 기본 텍스트. 완전한 흰색보다 눈이 편안한 밝은 회색.                  |
| **fg_dark**  | **Mist**     | `#A1A1AA` | 주석, 덜 중요한 메타데이터, 구두점(괄호).                            |
| **fg_light** | **Snow**     | `#FFFFFF` | **강조**. 커서, 활성 선택 텍스트 등 시선을 끌어야 하는 곳.           |

---

## 2. Syntax Highlights: Muted Semantic

코드의 문법적 요소는 **"채도를 낮춘 파스텔 톤(Muted)"**을 사용하여, 어두운 배경 위에서 튀지 않고 자연스럽게 스며들도록 배치했습니다.

### Code Elements

| Syntax Group | Color Name       | Hex       | Usage Example                                   |
| :----------- | :--------------- | :-------- | :---------------------------------------------- |
| **Keyword**  | **Thistle**      | `#C4A6CF` | `if`, `else`, `return`, `function`, `import`    |
| **Function** | **Slate Blue**   | `#94A3B8` | 함수 선언 및 호출, 메서드.                      |
| **String**   | **Pale Emerald** | `#81C784` | 문자열 리터럴. 자연스러운 녹색으로 안정감 제공. |
| **Type**     | **Brass**        | `#D4C88C` | 클래스명, 타입 정의(`interface`, `type`).       |
| **Number**   | **Sand**         | `#D9A67E` | 숫자, 불리언(`true`/`false`).                   |
| **Constant** | **Sand**         | `#D9A67E` | `const`, 열거형 값.                             |
| **Comment**  | **Mist Gray**    | `#A1A1AA` | 주석. 배경과 대비되지만 코드를 방해하지 않음.   |
| **Special**  | **Sand**         | `#D9A67E` | 이스케이프 문자 (`\n`, `\t`).                   |

---

## 3. Language Optimizations

각 언어의 특성에 맞춰 색상 배치를 최적화했습니다.

### λ Clojure (Lisp 계열)

- **Punctuation (`#A1A1AA`)**: 수많은 괄호 `( )`가 코드의 내용을 가리지 않도록, `Mist Gray`를 적용하여 시각적 노이즈를 줄였습니다.
- **Keyword (`#C4A6CF`)**: 함수형 프로그래밍의 핵심인 키워드와 매크로를 보라색(Thistle)으로 강조하여 흐름 파악을 돕습니다.
- **String (`#81C784`)**: 데이터로서의 문자열을 명확히 분리합니다.

### 📘 TypeScript / JavaScript

- **Type Distinction**: 타입(`Type`, `#D4C88C`)과 함수(`Function`, `#94A3B8`)의 색상 온도를 다르게(Warm vs Cool) 배정하여, 복잡한 타입 정의 코드에서도 구조를 쉽게 파악할 수 있습니다.
- **Object Properties**: 객체의 키 값은 `Slate Blue(#94A3B8)`를 사용하여 변수와 구분됩니다.

### 📝 Markdown

- **Headings**: `fg_light(#FFFFFF)`와 `accent1(#F4F4F5)`을 사용하여 문서의 뼈대를 밝고 선명하게 보여줍니다.
- **Code Blocks**: 배경색을 약간 밝게 처리하거나 `accent3(#CBD5E1)`를 사용하여 본문과 구분감을 줍니다.
- **Links**: `Slate Blue(#94A3B8)`로 처리하여 클릭 가능한 요소임을 암시합니다.

### 🔧 JSON / YAML

- **Keys vs Values**: 키(`Property`)는 차가운 색상, 값(`String`, `Number`)은 따뜻한 색상으로 대비시켜 데이터 구조가 한눈에 들어옵니다.

---

## 4. UI & UX Elements

### The "Luminous" Experience

- **Cursor Line**: 현재 줄은 `#18181B`로 아주 미세하게 밝아지지만, **현재 줄 번호**는 `#F4F4F5`(Ghost Silver)로 강하게 빛나 현재 위치를 즉관적으로 알려줍니다.
- **Visual Selection**: 드래그 시 텍스트 색상을 반전시키지 않고, 배경을 `#27272A`로, 텍스트를 `#FFFFFF`로 유지하여 가독성을 해치지 않습니다.
- **Diagnostics**:
  - Error: `#E08A8A` (Muted Rose) - 눈을 찌르지 않는 부드러운 빨강
  - Warning: `#D4C88C` (Brass)
  - Info: `#94A3B8` (Slate Blue)

---

## 5. Terminal Colors (ANSI)

내장 터미널(`:terminal`) 사용 시 적용되는 색상입니다.

| Color       | Normal               | Bright             |
| :---------- | :------------------- | :----------------- |
| **Black**   | `#18181B` (Onyx)     | `#71717A` (Zinc)   |
| **Red**     | `#E08A8A` (Rose)     | `#E08A8A`          |
| **Green**   | `#81C784` (Emerald)  | `#81C784`          |
| **Yellow**  | `#D4C88C` (Brass)    | `#D4C88C`          |
| **Blue**    | `#94A3B8` (Slate)    | `#A1A1AA` (Mist)   |
| **Magenta** | `#C4A6CF` (Thistle)  | `#C4A6CF`          |
| **Cyan**    | `#CBD5E1` (Metal)    | `#FFFFFF` (Snow)   |
| **White**   | `#E4E4E7` (Platinum) | `#F4F4F5` (Silver) |
