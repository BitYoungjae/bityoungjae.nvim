---@class MyThemeUtil
---@field bg string 기본 배경 색상
---@field fg string 기본 전경 색상
local M = {}

-- palette.lua와 동기화 (순환 require 없음: palette는 util을 쓰지 않음)
local palette = require("bityoungjae.palette")
M.bg = palette.bg
M.fg = palette.fg

---HEX 색상 코드를 RGB 테이블로 변환합니다.
---@param hex_str string HEX color string (e.g., "#E4E4E7")
---@return integer[]? {r, g, b} table or nil if invalid
local function hex_to_rgb(hex_str)
  if hex_str == nil or hex_str == "NONE" then
    return nil
  end

  hex_str = hex_str:gsub("#", "")
  if #hex_str ~= 6 then
    return nil
  end

  return {
    tonumber("0x" .. hex_str:sub(1, 2)),
    tonumber("0x" .. hex_str:sub(3, 4)),
    tonumber("0x" .. hex_str:sub(5, 6)),
  }
end

local function channel_to_linear(c)
  c = c / 255
  if c <= 0.04045 then
    return c / 12.92
  end
  return ((c + 0.055) / 1.055) ^ 2.4
end

---WCAG 2.x 상대 휘도 (0–1)
---@param hex string
---@return number
function M.luminance(hex)
  local rgb = hex_to_rgb(hex)
  if not rgb then
    return 0
  end
  return 0.2126 * channel_to_linear(rgb[1])
    + 0.7152 * channel_to_linear(rgb[2])
    + 0.0722 * channel_to_linear(rgb[3])
end

---두 HEX의 WCAG 대비비
---@param a string
---@param b string
---@return number
function M.contrast(a, b)
  local l1, l2 = M.luminance(a), M.luminance(b)
  local hi, lo = math.max(l1, l2), math.min(l1, l2)
  return (hi + 0.05) / (lo + 0.05)
end

local function to_lab(hex_str)
  local rgb = hex_to_rgb(hex_str)
  if not rgb then
    return nil
  end
  local r = channel_to_linear(rgb[1])
  local g = channel_to_linear(rgb[2])
  local b = channel_to_linear(rgb[3])
  local x = (0.4124 * r + 0.3576 * g + 0.1805 * b) / 0.95047
  local y = 0.2126 * r + 0.7152 * g + 0.0722 * b
  local z = (0.0193 * r + 0.1192 * g + 0.9505 * b) / 1.08883

  local function f(t)
    if t > 0.008856 then
      return t ^ (1 / 3)
    end
    return 7.787 * t + 16 / 116
  end

  local fx, fy, fz = f(x), f(y), f(z)
  return 116 * fy - 16, 500 * (fx - fy), 200 * (fy - fz)
end

---두 HEX 색상의 CIE76 ΔE (색 구분성). 20 이상이면 확실히 구분됩니다.
---@param a string
---@param b string
---@return number
function M.delta_e(a, b)
  local l1, a1, b1 = to_lab(a)
  local l2, a2, b2 = to_lab(b)
  if not (l1 and l2) then
    return 0
  end
  return math.sqrt((l1 - l2) ^ 2 + (a1 - a2) ^ 2 + (b1 - b2) ^ 2)
end

---RGB 값을 HEX 문자열로 변환합니다.
---@param r number Red (0-255)
---@param g number Green (0-255)
---@param b number Blue (0-255)
---@return string HEX string
local function rgb_to_hex(r, g, b)
  return string.format("#%02x%02x%02x", math.floor(r), math.floor(g), math.floor(b))
end

---두 색상을 주어진 비율(alpha)로 혼합합니다.
---@param foreground string 전경 색상 (HEX)
---@param alpha number 0과 1 사이의 값 (1은 100% 전경)
---@param background string 배경 색상 (HEX)
---@return string 혼합된 색상 (HEX)
function M.blend(foreground, alpha, background)
  local bg_rgb = hex_to_rgb(background)
  local fg_rgb = hex_to_rgb(foreground)

  -- transparent 모드처럼 배경이 "NONE"이면 기본 배경으로 계산해 틴트를 유지한다
  if not bg_rgb then
    bg_rgb = hex_to_rgb(M.bg)
  end

  -- 전경 색이 "NONE"이거나 잘못된 경우 처리
  if not bg_rgb or not fg_rgb then
    return "NONE"
  end

  local function blend_channel(i)
    local ret = (alpha * fg_rgb[i] + ((1 - alpha) * bg_rgb[i]))
    return math.min(math.max(0, ret), 255)
  end

  return rgb_to_hex(blend_channel(1), blend_channel(2), blend_channel(3))
end

---색상을 배경색(기본값: M.bg) 방향으로 혼합하여 어둡게 만듭니다.
---@param hex string 대상 색상
---@param amount number 유지할 대상 색상의 비율 (0.0 - 1.0). 예: 0.8은 배경 20% 혼합
---@param bg? string 선택적 배경 색상 (기본값: M.bg)
---@return string 어두워진 HEX 색상
function M.darken(hex, amount, bg)
  return M.blend(hex, amount, bg or M.bg)
end

return M
