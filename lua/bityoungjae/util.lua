---@class MyThemeUtil
---@field bg string 기본 배경 색상 (Void)
---@field fg string 기본 전경 색상 (Platinum)
local M = {}

-- 무명 기본 팔레트 기본값
M.bg = "#09090B" -- Void
M.fg = "#E4E4E7" -- Platinum

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

  -- "NONE"이거나 잘못된 색상이 입력된 경우 처리
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

---색상을 전경색(기본값: M.fg) 방향으로 혼합하여 밝게 만듭니다.
---@param hex string 대상 색상
---@param amount number 유지할 대상 색상의 비율 (0.0 - 1.0). 예: 0.8은 전경 20% 혼합
---@param fg? string 선택적 전경 색상 (기본값: M.fg)
---@return string 밝아진 HEX 색상
function M.lighten(hex, amount, fg)
  return M.blend(hex, amount, fg or M.fg)
end

---색상을 반전시킵니다. (Light 테마 변환 등에 사용)
---@param hex string 대상 색상
---@return string 반전된 HEX 색상
function M.invert(hex)
  local rgb = hex_to_rgb(hex)
  if not rgb then return "NONE" end
  return rgb_to_hex(255 - rgb[1], 255 - rgb[2], 255 - rgb[3])
end

-- HSL 헬퍼 함수들 (채도 조절 구현용)
local function rgb_to_hsl(r, g, b)
  r, g, b = r / 255, g / 255, b / 255
  local max, min = math.max(r, g, b), math.min(r, g, b)
  local h, s, l
  l = (max + min) / 2

  if max == min then
    h, s = 0, 0     -- 무채색
  else
    local d = max - min
    s = l > 0.5 and d / (2 - max - min) or d / (max + min)
    if max == r then
      h = (g - b) / d + (g < b and 6 or 0)
    elseif max == g then
      h = (b - r) / d + 2
    else
      h = (r - g) / d + 4
    end
    h = h / 6
  end
  return h, s, l
end

local function hsl_to_rgb(h, s, l)
  local r, g, b

  if s == 0 then
    r, g, b = l, l, l
  else
    local function hue2rgb(p, q, t)
      if t < 0 then t = t + 1 end
      if t > 1 then t = t - 1 end
      if t < 1 / 6 then return p + (q - p) * 6 * t end
      if t < 1 / 2 then return q end
      if t < 2 / 3 then return p + (q - p) * (2 / 3 - t) * 6 end
      return p
    end

    local q = l < 0.5 and l * (1 + s) or l + s - l * s
    local p = 2 * l - q
    r = hue2rgb(p, q, h + 1 / 3)
    g = hue2rgb(p, q, h)
    b = hue2rgb(p, q, h - 1 / 3)
  end
  return r * 255, g * 255, b * 255
end

---색상의 채도를 조절합니다.
---@param hex string 대상 색상
---@param amount number 채도에 곱할 값 (예: 1.2 = +20%, 0.5 = -50%)
---@return string 조절된 HEX 색상
function M.saturate(hex, amount)
  local rgb = hex_to_rgb(hex)
  if not rgb then return "NONE" end

  local h, s, l = rgb_to_hsl(rgb[1], rgb[2], rgb[3])
  s = math.min(math.max(0, s * amount), 1)   -- 채도 조절 및 클램핑

  local r, g, b = hsl_to_rgb(h, s, l)
  return rgb_to_hex(r, g, b)
end

return M
