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
-- Void (Abyss) - 빛을 흡수하는 극한의 검정 (기존보다 더 어두움)
M.bg = "#050505"
-- Deep Space - 사이드바, 팝업 (아주 미세한 네이비 틴트)
M.bg_dark = "#0F111A"
-- Night Shade - 선택 영역, 비주얼 모드
M.bg_light = "#1E2030"

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
-- 구문 색상 (Syntax Highlights) - The Neon Set
-- =============================================================================
-- Slate Smoke - 주석
M.comment = "#636E7B"
-- Aurora Green - 문자열 (산뜻한 민트 그린)
M.string = "#7CEC9F"
-- Tangerine - 숫자/불리언 (선명한 오렌지)
M.number = "#F78C6C"
-- Neon Violet - 키워드/제어문 (강력한 자수정색)
M.keyword = "#C792EA"
-- Electric Blue - 함수/메서드 (차가운 이성)
M.func = "#61AFEF"
-- Solar Gold - 타입/클래스 (구조적 강조)
M.type = "#FFCB6B"
-- Frost White - 일반 변수
M.variable = "#ECEFF4"
-- Cyber Pink - 상수/매크로 (변하지 않는 값, 경고성)
M.constant = "#FF5370"
-- Cyan Ray - 연산자 (기호가 눈에 잘 띄도록)
M.operator = "#89DDFF"
-- Dark Metal - 괄호/구분자 (Clojure 가독성 핵심: 튀지 않게 죽임)
M.punctuation = "#444B5E"

-- =============================================================================
-- 언어별 최적화 (Semantic)
-- =============================================================================
-- Cyan Ray - 객체 속성 (JSON Key, Object Property)
M.property = "#89DDFF"
-- Cloud Gray - 파라미터
M.parameter = "#D0D6E0"
-- Neon Violet - 레이블
M.label = "#C792EA"
-- Solar Gold - 네임스페이스
M.namespace = "#FFCB6B"
-- Cyber Pink - 매크로 정의
M.macro = "#FF5370"
-- Cyan Ray - 이스케이프/특수문자
M.special = "#89DDFF"

-- =============================================================================
-- Clojure 전용
-- =============================================================================
-- Dark Metal - 괄호를 배경보다 조금만 더 밝게 처리하여 괄호 지옥을 시각적으로 소거
M.clojure_paren = "#444B5E"

-- =============================================================================
-- Markdown 전용
-- =============================================================================
-- Cyber Pink - H1
M.md_h1 = "#FF5370"
-- Solar Gold - H2
M.md_h2 = "#FFCB6B"
-- Aurora Green - H3
M.md_h3 = "#7CEC9F"

-- =============================================================================
-- 진단 색상 (Diagnostics) - 타협 없는 선명함
-- =============================================================================
M.error = "#FF5370"   -- Cyber Pink (Red replacement)
M.warning = "#FFCB6B" -- Solar Gold
M.info = "#61AFEF"    -- Electric Blue
M.hint = "#89DDFF"    -- Cyan Ray

-- =============================================================================
-- Git (Version Control)
-- =============================================================================
M.git_add = "#7CEC9F"    -- Aurora Green
M.git_change = "#61AFEF" -- Electric Blue
M.git_delete = "#FF5370" -- Cyber Pink

-- =============================================================================
-- 강조 색상 (Markdown, Special UI)
-- =============================================================================
-- Markdown H1, Important Text
M.accent1 = "#FF5370"
-- Markdown H2, Links
M.accent2 = "#FFCB6B"
-- Markdown H3, Code Blocks, Quotes
M.accent3 = "#89DDFF"

-- =============================================================================
-- 터미널 색상 (ANSI Colors)
-- =============================================================================
M.terminal = {
  black = "#1E2030",    -- Night Shade
  red = "#FF5370",      -- Cyber Pink
  green = "#C3E88D",    -- Soft Green
  yellow = "#FFCB6B",   -- Solar Gold
  blue = "#82AAFF",     -- Soft Blue
  magenta = "#C792EA",  -- Neon Violet
  cyan = "#89DDFF",     -- Cyan Ray
  white = "#D0D6E0",    -- Cloud Gray

  -- Bright Variants (더 강렬한 네온)
  bright_black = "#636E7B",   -- Slate Smoke
  bright_red = "#FF5370",     -- Cyber Pink
  bright_green = "#7CEC9F",   -- Aurora Green
  bright_yellow = "#F78C6C",  -- Tangerine
  bright_blue = "#61AFEF",    -- Electric Blue
  bright_magenta = "#D1A4FF", -- Lighter Violet
  bright_cyan = "#A9F0FF",    -- Ice Cyan
  bright_white = "#FFFFFF",   -- Starlight
}

return M
