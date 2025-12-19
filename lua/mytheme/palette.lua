-- =============================================================================
-- Palette: Define your colors here
-- =============================================================================
-- Fill in your desired colors below. All colors should be hex format (#RRGGBB)
-- After filling in the colors, the colorscheme will be ready to use.
-- =============================================================================

local M = {}

-- =============================================================================
-- BASE COLORS (Required)
-- =============================================================================
M.bg = "#000000"           -- Main background
M.bg_dark = "#000000"      -- Darker background (sidebars, floats)
M.bg_light = "#000000"     -- Lighter background (hover, selection)
M.fg = "#ffffff"           -- Main foreground (text)
M.fg_dark = "#ffffff"      -- Darker foreground (comments, line numbers)
M.fg_light = "#ffffff"     -- Lighter foreground (bright text)

-- =============================================================================
-- UI COLORS
-- =============================================================================
M.border = "#000000"       -- Window borders
M.selection = "#000000"    -- Visual selection background
M.cursor_line = "#000000"  -- Current line background
M.line_nr = "#000000"      -- Line numbers
M.line_nr_cur = "#000000"  -- Current line number

-- =============================================================================
-- SYNTAX COLORS (Primary)
-- =============================================================================
M.comment = "#000000"      -- Comments
M.string = "#000000"       -- Strings
M.number = "#000000"       -- Numbers, booleans
M.keyword = "#000000"      -- Keywords (if, else, return, etc.)
M.func = "#000000"         -- Function names
M.type = "#000000"         -- Types, classes
M.variable = "#000000"     -- Variables
M.constant = "#000000"     -- Constants
M.operator = "#000000"     -- Operators (+, -, =, etc.)
M.punctuation = "#000000"  -- Punctuation (brackets, commas)

-- =============================================================================
-- SYNTAX COLORS (Secondary)
-- =============================================================================
M.property = "#000000"     -- Object properties
M.parameter = "#000000"    -- Function parameters
M.label = "#000000"        -- Labels
M.namespace = "#000000"    -- Namespaces, modules
M.macro = "#000000"        -- Macros, preprocessor
M.special = "#000000"      -- Special characters, escape sequences

-- =============================================================================
-- DIAGNOSTIC COLORS
-- =============================================================================
M.error = "#000000"        -- Errors
M.warning = "#000000"      -- Warnings
M.info = "#000000"         -- Info
M.hint = "#000000"         -- Hints

-- =============================================================================
-- GIT COLORS
-- =============================================================================
M.git_add = "#000000"      -- Added lines
M.git_change = "#000000"   -- Changed lines
M.git_delete = "#000000"   -- Deleted lines

-- =============================================================================
-- ACCENT COLORS (for special highlights)
-- =============================================================================
M.accent1 = "#000000"      -- Primary accent
M.accent2 = "#000000"      -- Secondary accent
M.accent3 = "#000000"      -- Tertiary accent

-- =============================================================================
-- TERMINAL COLORS (Optional - for :terminal)
-- =============================================================================
M.terminal = {
  black = "#000000",
  red = "#000000",
  green = "#000000",
  yellow = "#000000",
  blue = "#000000",
  magenta = "#000000",
  cyan = "#000000",
  white = "#000000",
  -- Bright variants
  bright_black = "#000000",
  bright_red = "#000000",
  bright_green = "#000000",
  bright_yellow = "#000000",
  bright_blue = "#000000",
  bright_magenta = "#000000",
  bright_cyan = "#000000",
  bright_white = "#000000",
}

return M
