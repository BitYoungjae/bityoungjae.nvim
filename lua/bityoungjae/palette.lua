-- palette.lua
-- =============================================================================
-- Palette: Mumyeong (무명) v2.0 - Neutral Void Edition
-- =============================================================================
-- 최적화 대상: Clojure, TypeScript, Markdown, JSON
-- 기본 철학: 깊은 탄소 배경과 빛나는 하이라이트
-- =============================================================================

local M = {}

-- =============================================================================
-- 기본 색상 (필수)
-- =============================================================================
-- oma0 (Void) - 집중을 위한 가장 어두운 배경
M.bg = "#09090B"
-- oma1 (Onyx) - 패널, 플로팅 윈도우, 사이드바
M.bg_dark = "#18181B"
-- oma2 (Charcoal) - 비주얼 선택, 활성 UI 요소
M.bg_light = "#27272A"
-- oma5 (Platinum) - 기본 텍스트, 어두운 배경에서 읽기 편안함
M.fg = "#E4E4E7"
-- oma4 (Mist Gray) - 은은한 텍스트, 주석, 줄 번호
M.fg_dark = "#A1A1AA"
-- oma6 (Snow) - 높은 대비의 하이라이트
M.fg_light = "#FFFFFF"

-- =============================================================================
-- UI 색상
-- =============================================================================
-- oma3 (Zinc) - 비활성 테두리, 독특한 "유리 테두리" 느낌
M.border = "#71717A"
-- oma2 (Charcoal) - 선택 영역을 위한 은은한 배경
M.selection = "#27272A"
-- oma1 (Onyx) - 현재 줄을 위한 은은한 하이라이트
M.cursor_line = "#18181B"
-- oma3 (Zinc) - 흐린 줄 번호
M.line_nr = "#71717A"
-- oma8 (Ghost Silver) - "빛나는" 현재 줄 번호
M.line_nr_cur = "#F4F4F5"

-- =============================================================================
-- 구문 색상 (주요)
-- =============================================================================
-- oma4 (Mist Gray) - 읽기 쉽지만 눈에 거슬리지 않음
M.comment = "#A1A1AA"
-- oma14 (Pale Emerald) - 문자열/리터럴을 명확히 구분
M.string = "#81C784"
-- oma12 (Sand) - 숫자/불리언을 위한 따뜻한 톤
M.number = "#D9A67E"
-- oma15 (Thistle) - 제어 흐름을 위한 독특한 보라/분홍
M.keyword = "#C4A6CF"
-- oma9 (Slate Blue) - 함수/메소드를 위한 차가운 톤
M.func = "#94A3B8"
-- oma13 (Brass) - 타입/클래스를 위한 따뜻한 노란색 (TS 친화적)
M.type = "#D4C88C"
-- oma5 (Platinum) - 깔끔한 변수 (무지개 토사물 방지)
M.variable = "#E4E4E7"
-- oma12 (Sand) - 상수는 숫자와 일치
M.constant = "#D9A67E"
-- oma9 (Slate Blue) - 논리 연산자
M.operator = "#94A3B8"
-- oma4 (Mist Gray) - 괄호/구분자 (Clojure에 중요)
M.punctuation = "#A1A1AA"

-- =============================================================================
-- 구문 색상 (보조)
-- =============================================================================
-- oma9 (Slate Blue) - 객체 속성/JSON 키
M.property = "#94A3B8"
-- oma10 (Cold Metal) - 매개변수
M.parameter = "#CBD5E1"
-- oma15 (Thistle) - 레이블/라이프사이클
M.label = "#C4A6CF"
-- oma13 (Brass) - 네임스페이스/모듈
M.namespace = "#D4C88C"
-- oma15 (Thistle) - 매크로
M.macro = "#C4A6CF"
-- oma12 (Sand) - 이스케이프 시퀀스
M.special = "#D9A67E"

-- =============================================================================
-- 진단 색상
-- =============================================================================
-- oma11 (Muted Rose)
M.error = "#E08A8A"
-- oma13 (Brass)
M.warning = "#D4C88C"
-- oma9 (Slate Blue)
M.info = "#94A3B8"
-- oma10 (Cold Metal)
M.hint = "#CBD5E1"

-- =============================================================================
-- GIT 색상
-- =============================================================================
-- oma14 (Pale Emerald)
M.git_add = "#81C784"
-- oma9 (Slate Blue)
M.git_change = "#94A3B8"
-- oma11 (Muted Rose)
M.git_delete = "#E08A8A"

-- =============================================================================
-- 강조 색상 (특별한 하이라이트용)
-- =============================================================================
-- oma8 (Ghost Silver) - 헤더, 활성 테두리, 커서
M.accent1 = "#F4F4F5"
-- oma9 (Slate Blue) - 링크, 정보
M.accent2 = "#94A3B8"
-- oma10 (Cold Metal) - 인용, 코드 블록
M.accent3 = "#CBD5E1"

-- =============================================================================
-- 터미널 색상 (선택사항 - :terminal용)
-- =============================================================================
M.terminal = {
  black = "#18181B",   -- oma1 (Onyx)
  red = "#E08A8A",     -- oma11 (Rose)
  green = "#81C784",   -- oma14 (Emerald)
  yellow = "#D4C88C",  -- oma13 (Brass)
  blue = "#94A3B8",    -- oma9 (Slate Blue)
  magenta = "#C4A6CF", -- oma15 (Thistle)
  cyan = "#CBD5E1",    -- oma10 (Cold Metal)
  white = "#E4E4E7",   -- oma5 (Platinum)

  -- 밝은 변형
  bright_black = "#71717A",   -- oma3 (Zinc)
  bright_red = "#E08A8A",     -- oma11
  bright_green = "#81C784",   -- oma14
  bright_yellow = "#D4C88C",  -- oma13
  bright_blue = "#A1A1AA",    -- oma4 (Mist Gray - 확실히 더 밝은 파란-회색)
  bright_magenta = "#C4A6CF", -- oma15
  bright_cyan = "#FFFFFF",    -- oma6 (Snow)
  bright_white = "#F4F4F5",   -- oma8 (Ghost Silver)
}

return M
