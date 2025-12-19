# Mumyeong.nvim - Color Reference v3.0

## "Deep Void & Bioluminescent Neon"

**Mumyeong (무명)** 리파인드(Refined) 버전은 기존의 흐릿한 파스텔 톤을 버리고, 칠흑 같은 심해 속에서 스스로 빛을 내는 생명체들처럼 **"선명한 형광(Neon)과 깊은 어둠"**의 대비를 강조했습니다.

시인성이 낮은 회색조 대신 **명도와 채도가 조절된 포인트 컬러**를 사용하여, 코드를 읽는 순간 뇌가 구조를 즉각적으로 파악할 수 있도록 설계되었습니다.

---

## 1. Base Palette: The Abyss

배경은 더 차갑고 깊은 **True Black**에 가까운 톤으로 변경하여 OLED 및 고해상도 디스플레이에서 압도적인 몰입감을 제공합니다. 텍스트는 누런 끼를 뺀 **차가운 백색**을 사용하여 청량감을 줍니다.

| Variable     | Color Name      | Hex       | Role                                                        |
| :----------- | :-------------- | :-------- | :---------------------------------------------------------- |
| **bg**       | **Abyss Black** | `#050505` | 빛을 완전히 흡수하는 듯한 극한의 검정. (기존보다 더 어두움) |
| **bg_dark**  | **Deep Space**  | `#0F111A` | NvimTree, 팝업 창. 미세한 남색 틴트를 섞어 본문과 구분.     |
| **bg_light** | **Night Shade** | `#1E2030` | 선택 영역(Visual), 커서 라인.                               |
| **border**   | **Ice Glass**   | `#3B4261` | 창의 경계. 유리가 얼어붙은 듯한 차가운 질감.                |
| **fg**       | **Frost White** | `#ECEFF4` | 기본 텍스트. 탁한 회색을 버리고 선명한 Ice White 적용.      |
| **fg_dark**  | **Steel Gray**  | `#636E7B` | 주석, 무시해도 되는 메타데이터.                             |
| **fg_light** | **Starlight**   | `#FFFFFF` | **강조**. 커서 및 하이라이트.                               |

---

## 2. Syntax Highlights: Crisp & Vibrant

기존의 힘 빠진 파스텔 톤 대신, 어둠 속에서도 뚜렷하게 식별되는 **고채도 컬러**를 배치했습니다. 각 색상은 서로 보색 대비를 이루거나 명도 차이를 두어 겹쳐 보이지 않습니다.

### Code Elements

| Syntax Group | Color Name        | Hex       | Usage Example                                                   |
| :----------- | :---------------- | :-------- | :-------------------------------------------------------------- |
| **Keyword**  | **Neon Violet**   | `#C792EA` | `if`, `return`, `import`. 강력한 제어 흐름을 상징하는 자수정색. |
| **Function** | **Electric Blue** | `#61AFEF` | 함수 및 메서드. 차갑고 이성적인 논리 실행을 상징.               |
| **String**   | **Aurora Green**  | `#7CEC9F` | 문자열. 기존의 칙칙한 녹색 대신 산뜻한 민트 그린 적용.          |
| **Type**     | **Solar Gold**    | `#FFCB6B` | 클래스, 인터페이스. 구조를 지탱하는 단단한 황금색.              |
| **Number**   | **Tangerine**     | `#F78C6C` | 숫자, 불리언. 텍스트 흐름 속에서 즉각적으로 튀어 오르는 주황.   |
| **Constant** | **Cyber Pink**    | `#FF5370` | `const`, 매크로. 절대 변하지 않는 값에 대한 경고성 강조.        |
| **Comment**  | **Slate Smoke**   | `#636E7B` | 주석. 푸른 기가 도는 회색으로 세련미를 더하고 가독성 확보.      |
| **Special**  | **Cyan Ray**      | `#89DDFF` | 이스케이프 문자, 데코레이터, 어노테이션.                        |

---

## 3. Language Optimizations

언어별 특성에 맞춰 "구조적 아름다움"이 느껴지도록 색상을 미세 조정했습니다.

### λ Clojure (Lisp)

- **Parentheses (`#444B5E`)**: 괄호를 배경보다 조금만 더 밝은 `Deep Blue Gray`로 처리하여, 괄호 지옥(Parenthesis Hell)을 시각적으로 소거했습니다. 내용물만 둥둥 떠 있는 듯한 느낌을 줍니다.
- **Keyword (`#C792EA`)**: 보라색을 사용하여 함수형 흐름의 핵심이 눈에 박히도록 했습니다.
- **Symbol (`#ECEFF4`)**: 일반 심볼은 깨끗한 흰색으로 처리하여 가독성을 높였습니다.

### 📘 TypeScript / JavaScript

- **Type vs Interface**: 타입 정의는 **Solar Gold (`#FFCB6B`)**로, 실제 실행되는 함수는 **Electric Blue (`#61AFEF`)**로 명확히 분리하여 "선언"과 "로직"의 시각적 온도를 분리했습니다 (Warm vs Cool).
- **Props & Keys**: 객체의 키 값에 **Cyan Ray (`#89DDFF`)**를 적용하여 일반 변수와 확실히 구분했습니다.

### 📝 Markdown

- **Headings**:
  - H1: **Cyber Pink (`#FF5370`)** + Bold
  - H2: **Solar Gold (`#FFCB6B`)** + Bold
  - H3: **Aurora Green (`#7CEC9F`)**
  - 문서의 계층 구조를 색상(무지개순 아님, 주목도순)으로 즉시 파악 가능하게 했습니다.
- **Code Blocks**: 배경을 `#0F111A`로 살짝 띄워 본문과 분리감을 주었습니다.

### 🔧 JSON / YAML

- **Key Emphasis**: 키(Key)는 **Tangerine (`#F78C6C`)**이나 **Cyan Ray (`#89DDFF`)**로 강조하고, 값(Value)은 **Aurora Green (`#7CEC9F`)**으로 통일하여 `Key: Value` 패턴이 스트라이프 무늬처럼 정돈되어 보이게 했습니다.

---

## 4. UI & UX Elements

### The "Neon Edge" Experience

- **Cursor**: `#FF5370`(Cyber Pink) 색상의 블록 커서를 사용하여 현재 위치를 놓치지 않게 했습니다.
- **Line Number**:
  - Current: `#FFFFFF` + Bold (강한 빛)
  - Others: `#3B4261` (어두운 유리색, 시선 분산 방지)
- **Visual Selection**: 드래그 영역의 배경을 `#2C3145` (Midnight Blue)로 설정하여, 텍스트 색상을 반전시키지 않고도 선택 영역이 고급스럽게 빛나도록 처리했습니다.
- **Diagnostics (LSP)**:
  - Error: **`#FF5370` (Red)** - 타협 없는 명확한 에러.
  - Warning: **`#FFCB6B` (Yellow)** - 주의 집중.
  - Hint: **`#89DDFF` (Cyan)** - 친절한 제안.
  - Info: **`#61AFEF` (Blue)** - 정보성 메시지.

---

## 5. Terminal Colors (ANSI)

터미널에서도 Mumyeong 테마의 선명함을 유지합니다.

| Color       | Normal             | Bright                 |
| :---------- | :----------------- | :--------------------- |
| **Black**   | `#1E2030` (Night)  | `#636E7B` (Smoke)      |
| **Red**     | `#F07178` (Coral)  | `#FF5370` (Cyber Pink) |
| **Green**   | `#C3E88D` (Leaf)   | `#7CEC9F` (Aurora)     |
| **Yellow**  | `#FFCB6B` (Gold)   | `#F78C6C` (Tangerine)  |
| **Blue**    | `#82AAFF` (Sky)    | `#61AFEF` (Electric)   |
| **Magenta** | `#C792EA` (Violet) | `#BE95FF` (Nebula)     |
| **Cyan**    | `#89DDFF` (Ray)    | `#A9F0FF` (Ice)        |
| **White**   | `#D0D6E0` (Cloud)  | `#FFFFFF` (Star)       |
