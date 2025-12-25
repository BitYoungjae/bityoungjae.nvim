-- palette.lua
-- =============================================================================
-- Palette: Mumyeong (무명) v3.0 - Deep Void & Bioluminescent Neon
-- =============================================================================
-- 최적화 대상: Clojure, TypeScript, Markdown, JSON
-- 설계 철학: "심해 속의 형광" (High Contrast, Deep Black, Neon Accents)
-- =============================================================================

local M = {}

-- =============================================================================
-- 기본 색상 (Base Palette)
-- =============================================================================
-- Void (Abyss) - 메인 편집 영역 배경
M.bg = "#111117"
-- Night Shade - Neo-tree (메인보다 살짝 밝게)
M.bg_light = "#16171F"
-- Deep Space - 팝업, 자동완성, 상태바 (확실히 떠 보이게)
M.bg_dark = "#1E2028"

-- Frost White - 기본 텍스트 (누런끼 없는 차가운 백색)
M.fg = "#ECEFF4"
-- Slate Smoke - 주석, 무시해도 되는 정보 (푸른끼 도는 회색)
M.fg_dark = "#636E7B"
-- Starlight - 강조 텍스트 (순백색)
M.fg_light = "#FFFFFF"

-- =============================================================================
-- UI 색상 (UI Elements)
-- =============================================================================
-- Ice Glass - 창 테두리 (차가운 유리 느낌)
M.border = "#3B4261"
-- Midnight Blue - 선택 영역 배경 (텍스트 반전 없이 배경만 은은하게)
M.selection = "#2C3145"
-- Deep Current - 커서 라인 (배경과 거의 차이 없게, 미세한 밝기)
M.cursor_line = "#12141C"
-- Deep Steel - 비활성 줄 번호
M.line_nr = "#3B4261"
-- Starlight - 활성 줄 번호 (강한 빛)
M.line_nr_cur = "#FFFFFF"

-- =============================================================================
-- 구문 색상 (Syntax Highlights) - Soft Pastel Set
-- =============================================================================
-- Slate Smoke - 주석
M.comment = "#636E7B"
-- Soft Mint - 문자열 (부드러운 민트 그린)
M.string = "#8FD4A5"
-- Soft Coral - 숫자/불리언 (부드러운 코랄)
M.number = "#E89B82"
-- Soft Lavender - 키워드/제어문 (부드러운 라벤더색)
M.keyword = "#C9A0DC"
-- Soft Sky - 함수/메서드 (부드러운 하늘색)
M.func = "#7BB8E0"
-- Warm Sand - 타입/클래스 (따뜻한 모래색)
M.type = "#E8C882"
-- Frost White - 일반 변수
M.variable = "#ECEFF4"
-- Soft Rose - 상수/매크로 (부드러운 장미색)
M.constant = "#E8717E"
-- Soft Teal - 연산자 (부드러운 청록색)
M.operator = "#8ED8D8"
-- Steel Gray - 괄호/구분자 (Clojure 가독성 핵심: 튀지 않게)
M.punctuation = "#8892A0"

-- =============================================================================
-- 언어별 최적화 (Semantic)
-- =============================================================================
-- Soft Teal - 객체 속성 (JSON Key, Object Property)
M.property = "#8ED8D8"
-- Cloud Gray - 파라미터
M.parameter = "#D0D6E0"
-- Soft Lavender - 레이블
M.label = "#C9A0DC"
-- Warm Sand - 네임스페이스
M.namespace = "#E8C882"
-- Soft Rose - 매크로 정의
M.macro = "#E8717E"
-- Soft Teal - 이스케이프/특수문자
M.special = "#8ED8D8"

-- =============================================================================
-- Clojure 전용
-- =============================================================================
-- Steel Gray - 괄호를 배경보다 조금만 더 밝게 처리하여 괄호 지옥을 시각적으로 소거
M.clojure_paren = "#8892A0"

-- =============================================================================
-- Markdown 전용 (모든 헤딩은 동일한 Soft Rose 사용)
-- =============================================================================
-- Soft Rose - Heading (모든 레벨)
M.md_heading = "#E8717E"
-- Soft Coral - Bold, Italic
M.md_emphasis = "#E89B82"
-- Soft Sky - Link Text
M.md_link = "#7BB8E0"
-- Soft Mint - Link URL, Inline Code, Blockquote
M.md_code = "#8FD4A5"
-- Soft Teal - Code Block
M.md_code_block = "#8ED8D8"
-- Warm Sand - List Marker, Table Header
M.md_list = "#E8C882"
-- Soft Lavender - Horizontal Rule
M.md_hr = "#C9A0DC"
-- Slate Smoke - Delimiter, Table Align
M.md_delimiter = "#636E7B"
-- Steel Gray - Table Pipe
M.md_table = "#8892A0"

-- 하위 호환성 (deprecated, 향후 제거 예정)
M.md_h1 = "#E8717E"
M.md_h2 = "#E8717E"
M.md_h3 = "#E8717E"

-- =============================================================================
-- 진단 색상 (Diagnostics) - 부드럽고 눈에 편안한 파스텔 톤
-- =============================================================================
M.error = "#E8717E"   -- Soft Rose (부드러운 장미색)
M.warning = "#E8C882" -- Warm Sand (따뜻한 모래색)
M.info = "#7BB8E0"    -- Soft Sky (부드러운 하늘색)
M.hint = "#8ED8D8"    -- Soft Teal (부드러운 청록색)

-- =============================================================================
-- Git (Version Control)
-- =============================================================================
M.git_add = "#8FD4A5"    -- Soft Mint (부드러운 민트색)
M.git_change = "#7BB8E0" -- Soft Sky (부드러운 하늘색)
M.git_delete = "#E8717E" -- Soft Rose (부드러운 장미색)

-- =============================================================================
-- 강조 색상 (Markdown, Special UI)
-- =============================================================================
-- Markdown H1, Important Text
M.accent1 = "#E8717E" -- Soft Rose
-- Markdown H2, Links
M.accent2 = "#E8C882" -- Warm Sand
-- Markdown H3, Code Blocks, Quotes
M.accent3 = "#8ED8D8" -- Soft Teal

-- =============================================================================
-- 터미널 색상 (ANSI Colors)
-- =============================================================================
M.terminal = {
  black = "#1E2030",    -- Night Shade
  red = "#E8717E",      -- Soft Rose
  green = "#8FD4A5",    -- Soft Mint
  yellow = "#E8C882",   -- Warm Sand
  blue = "#7BB8E0",     -- Soft Sky
  magenta = "#C9A0DC",  -- Soft Lavender
  cyan = "#8ED8D8",     -- Soft Teal
  white = "#D0D6E0",    -- Cloud Gray

  -- Bright Variants (더 밝은 파스텔)
  bright_black = "#636E7B",   -- Slate Smoke
  bright_red = "#E8717E",     -- Soft Rose
  bright_green = "#8FD4A5",   -- Soft Mint
  bright_yellow = "#E89B82",  -- Soft Coral
  bright_blue = "#7BB8E0",    -- Soft Sky
  bright_magenta = "#C9A0DC", -- Soft Lavender
  bright_cyan = "#8ED8D8",    -- Soft Teal
  bright_white = "#FFFFFF",   -- Starlight
}

return M
