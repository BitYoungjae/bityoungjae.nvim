# Mumyeong.nvim - Color Reference v3.0

## "Deep Void & Bioluminescent Neon"

**Mumyeong (무명) v3.0**은 기존의 파스텔 톤이 주는 흐릿함과 낮은 가독성을 완전히 개선했습니다.
빛이 닿지 않는 **심해(Abyss)**의 절대적인 어둠 속에서, 스스로 빛을 내는 생명체의 **형광(Neon)** 색감을 차용하여 **극한의 가독성**과 **심미적 쾌감**을 동시에 제공합니다.

---

## 1. Base Palette: The Abyss (심연)

배경은 회색이 섞인 검정이 아니라, OLED 디스플레이에서 픽셀이 꺼진 듯한 **True Black**에 가까운 톤을 사용합니다. 이는 코드(빛)를 더욱 선명하게 만듭니다.

| Variable     | Color Name      | Hex       | Role                                                    |
| :----------- | :-------------- | :-------- | :------------------------------------------------------ |
| **bg**       | **Abyss Black** | `#050505` | 빛을 완전히 흡수하는 듯한 극한의 검정.                  |
| **bg_dark**  | **Deep Space**  | `#0F111A` | NvimTree, 팝업 창. 미세한 남색 틴트를 섞어 본문과 구분. |
| **bg_light** | **Night Shade** | `#1E2030` | 선택 영역(Visual), 커서 라인.                           |
| **border**   | **Ice Glass**   | `#3B4261` | 창의 경계. 유리가 얼어붙은 듯한 차가운 질감.            |
| **fg**       | **Frost White** | `#ECEFF4` | 기본 텍스트. 탁한 회색을 버리고 선명한 Ice White 적용.  |
| **fg_dark**  | **Slate Smoke** | `#636E7B` | 주석. 푸른 기가 도는 회색으로 세련미를 더하고 가독성 확보. |
| **fg_light** | **Starlight**   | `#FFFFFF` | **강조**. 커서 및 하이라이트.                           |

---

## 2. Syntax Highlights: Crisp & Vibrant (선명함)

흐릿한 파스텔을 버리고, 배경과 완벽한 대비를 이루는 **고채도 네온 컬러**를 사용합니다.

| Syntax Group | Color Name        | Hex       | Usage Example                                               |
| :----------- | :---------------- | :-------- | :---------------------------------------------------------- |
| **Keyword**  | **Neon Violet**   | `#C792EA` | `if`, `return`, `import`. 강력한 제어 흐름.                 |
| **Function** | **Electric Blue** | `#61AFEF` | 함수 및 메서드. 차갑고 이성적인 논리 실행.                  |
| **String**   | **Aurora Green**  | `#7CEC9F` | 문자열. 기존의 칙칙한 녹색 대신 산뜻한 민트 그린.           |
| **Type**     | **Solar Gold**    | `#FFCB6B` | 클래스, 인터페이스. 구조를 지탱하는 단단한 황금색.          |
| **Number**   | **Tangerine**     | `#F78C6C` | 숫자, 불리언. 텍스트 흐름 속에서 즉각적으로 튀어 오름.      |
| **Constant** | **Cyber Pink**    | `#FF5370` | `const`, 매크로. 절대 변하지 않는 값.                       |
| **Special**  | **Cyan Ray**      | `#89DDFF` | 이스케이프 문자, 데코레이터, 객체 속성.                     |

---

## 3. Language Optimizations

### λ Clojure (Lisp)
- **Parentheses (`#5E6880`)**: 괄호를 배경보다 조금만 더 밝게 처리하여 시각적 노이즈를 제거했습니다. 코드가 공중에 떠 있는 듯한 느낌을 줍니다.
- **Keyword (`#C792EA`)**: 보라색 네온으로 함수형 흐름의 핵심을 강조합니다.

### 📘 TypeScript / JavaScript
- **Type Distinction**: `Interface`는 **Solar Gold**, `Function`은 **Electric Blue**로 구분하여 "데이터 구조"와 "로직"을 색상 온도로 분리(Warm vs Cool)했습니다.
- **Object Keys**: 일반 변수(White)와 다르게 **Cyan Ray**를 적용하여 JSON 객체 가독성을 높였습니다.

### 📝 Markdown
- **Headings**: `#FF5370`(H1), `#FFCB6B`(H2), `#7CEC9F`(H3) 등 무지개색이 아닌 **주목도 순서**로 배치했습니다.
- **Strong/Bold**: 완전한 `#FFFFFF`와 Bold 처리로 본문(`#ECEFF4`)보다 더 튀어나와 보입니다.

---

## 4. UI Elements

- **Cursor Line**: 현재 줄의 배경색 변화는 최소화하되, **줄 번호(Line Nr)**를 `#FFFFFF`로 강하게 밝혀 위치를 알립니다.
- **Diagnostics**:
  - Error: `#FF5370` (Cyber Pink) - 타협 없는 명확한 에러.
  - Warning: `#FFCB6B` (Solar Gold)
  - Info: `#61AFEF` (Electric Blue)

---

## 5. Terminal Colors (ANSI)

터미널에서도 Mumyeong 테마의 선명함을 유지합니다.

| Color       | Normal               | Bright                   |
| :---------- | :------------------- | :----------------------- |
| **Black**   | `#1E2030` (Night)    | `#636E7B` (Slate Smoke)  |
| **Red**     | `#FF5370` (Cyber)    | `#FF5370` (Cyber Pink)   |
| **Green**   | `#C3E88D` (Soft)     | `#7CEC9F` (Aurora)       |
| **Yellow**  | `#FFCB6B` (Gold)     | `#F78C6C` (Tangerine)    |
| **Blue**    | `#82AAFF` (Soft)     | `#61AFEF` (Electric)     |
| **Magenta** | `#C792EA` (Violet)   | `#D1A4FF` (Light Violet) |
| **Cyan**    | `#89DDFF` (Ray)      | `#A9F0FF` (Ice)          |
| **White**   | `#D0D6E0` (Cloud)    | `#FFFFFF` (Starlight)    |
