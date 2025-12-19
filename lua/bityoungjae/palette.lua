-- palette.lua
-- =============================================================================
-- Palette: Mumyeong (무명) v3.0 - Deep Void & Bioluminescent Neon
-- =============================================================================
-- 최적화 대상: Clojure, TypeScript, Markdown, JSON
-- 기본 철학: 칠흑 같은 심해 속에서 스스로 빛을 내는 생명체들처럼
--           "선명한 형광(Neon)과 깊은 어둠"의 대비 강조
-- =============================================================================

local M = {}

-- =============================================================================
-- 기본 색상 (Base Palette: The Abyss)
-- =============================================================================
-- Abyss Black - 빛을 완전히 흡수하는 듯한 극한의 검정
M.bg = "#050505"
-- Deep Space - NvimTree, 팝업 창. 미세한 남색 틴트를 섞어 본문과 구분
M.bg_dark = "#0F111A"
-- Night Shade - 선택 영역(Visual), 커서 라인
M.bg_light = "#1E2030"
-- Frost White - 기본 텍스트. 선명한 Ice White
M.fg = "#ECEFF4"
-- Steel Gray - 주석, 무시해도 되는 메타데이터
M.fg_dark = "#636E7B"
-- Starlight - 강조. 커서 및 하이라이트
M.fg_light = "#FFFFFF"

-- =============================================================================
-- UI 색상
-- =============================================================================
-- Ice Glass - 창의 경계. 유리가 얼어붙은 듯한 차가운 질감
M.border = "#3B4261"
-- Midnight Blue - Visual 선택 영역
M.selection = "#2C3145"
-- Night Shade - 현재 줄을 위한 은은한 하이라이트
M.cursor_line = "#1E2030"
-- Ice Glass - 흐린 줄 번호
M.line_nr = "#3B4261"
-- Starlight - 빛나는 현재 줄 번호
M.line_nr_cur = "#FFFFFF"

-- =============================================================================
-- 구문 색상 (Syntax Highlights: Crisp & Vibrant)
-- =============================================================================
-- Slate Smoke - 주석. 푸른 기가 도는 회색으로 세련미를 더하고 가독성 확보
M.comment = "#636E7B"
-- Aurora Green - 문자열. 산뜻한 민트 그린
M.string = "#7CEC9F"
-- Tangerine - 숫자, 불리언. 텍스트 흐름 속에서 즉각적으로 튀어 오르는 주황
M.number = "#F78C6C"
-- Neon Violet - 키워드. 강력한 제어 흐름을 상징하는 자수정색
M.keyword = "#C792EA"
-- Electric Blue - 함수 및 메서드. 차갑고 이성적인 논리 실행을 상징
M.func = "#61AFEF"
-- Solar Gold - 클래스, 인터페이스. 구조를 지탱하는 단단한 황금색
M.type = "#FFCB6B"
-- Frost White - 깔끔한 변수
M.variable = "#ECEFF4"
-- Cyber Pink - 상수, 매크로. 절대 변하지 않는 값에 대한 경고성 강조
M.constant = "#FF5370"
-- Electric Blue - 논리 연산자
M.operator = "#61AFEF"
-- Steel Gray - 괄호/구분자 (Clojure에 중요)
M.punctuation = "#636E7B"

-- =============================================================================
-- 구문 색상 (보조)
-- =============================================================================
-- Cyan Ray - 객체 속성/JSON 키
M.property = "#89DDFF"
-- Frost White - 매개변수
M.parameter = "#ECEFF4"
-- Neon Violet - 레이블/라이프사이클
M.label = "#C792EA"
-- Solar Gold - 네임스페이스/모듈
M.namespace = "#FFCB6B"
-- Cyber Pink - 매크로
M.macro = "#FF5370"
-- Cyan Ray - 이스케이프 문자, 데코레이터, 어노테이션
M.special = "#89DDFF"

-- =============================================================================
-- Clojure 전용
-- =============================================================================
-- Deep Blue Gray - 괄호를 배경보다 조금만 더 밝게 처리하여 괄호 지옥을 시각적으로 소거
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
-- 진단 색상
-- =============================================================================
-- Cyber Pink - 타협 없는 명확한 에러
M.error = "#FF5370"
-- Solar Gold - 주의 집중
M.warning = "#FFCB6B"
-- Electric Blue - 정보성 메시지
M.info = "#61AFEF"
-- Cyan Ray - 친절한 제안
M.hint = "#89DDFF"

-- =============================================================================
-- GIT 색상
-- =============================================================================
-- Aurora Green
M.git_add = "#7CEC9F"
-- Electric Blue
M.git_change = "#61AFEF"
-- Cyber Pink
M.git_delete = "#FF5370"

-- =============================================================================
-- 강조 색상 (특별한 하이라이트용)
-- =============================================================================
-- Cyber Pink - 커서, 강조
M.accent1 = "#FF5370"
-- Electric Blue - 링크, 정보
M.accent2 = "#61AFEF"
-- Cyan Ray - 인용, 코드 블록
M.accent3 = "#89DDFF"

-- =============================================================================
-- 터미널 색상 (ANSI)
-- =============================================================================
M.terminal = {
  black = "#1E2030",   -- Night Shade
  red = "#F07178",     -- Coral
  green = "#C3E88D",   -- Leaf
  yellow = "#FFCB6B",  -- Solar Gold
  blue = "#82AAFF",    -- Sky
  magenta = "#C792EA", -- Neon Violet
  cyan = "#89DDFF",    -- Cyan Ray
  white = "#D0D6E0",   -- Cloud

  -- 밝은 변형
  bright_black = "#636E7B",   -- Steel Gray (Smoke)
  bright_red = "#FF5370",     -- Cyber Pink
  bright_green = "#7CEC9F",   -- Aurora Green
  bright_yellow = "#F78C6C",  -- Tangerine
  bright_blue = "#61AFEF",    -- Electric Blue
  bright_magenta = "#BE95FF", -- Nebula
  bright_cyan = "#A9F0FF",    -- Ice
  bright_white = "#FFFFFF",   -- Starlight
}

return M
