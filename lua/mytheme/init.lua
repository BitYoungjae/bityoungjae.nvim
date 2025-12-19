-- =============================================================================
-- Colorscheme: mytheme
-- =============================================================================
-- Main entry point for the colorscheme
-- =============================================================================

local M = {}

M.config = {
  -- Add any configuration options here
  transparent = false,       -- Enable transparent background
  italic_comments = true,    -- Use italics for comments
  terminal_colors = true,    -- Set terminal colors
}

function M.setup(opts)
  -- Merge user options with defaults
  if opts then
    M.config = vim.tbl_deep_extend("force", M.config, opts)
  end

  -- Load palette
  local palette = require("mytheme.palette")

  -- Apply transparency if enabled
  if M.config.transparent then
    palette.bg = "NONE"
    palette.bg_dark = "NONE"
  end

  -- Load and apply highlights
  local highlights = require("mytheme.highlights")
  highlights.setup(palette)

  -- Set terminal colors if enabled
  if M.config.terminal_colors and palette.terminal then
    local t = palette.terminal
    vim.g.terminal_color_0 = t.black
    vim.g.terminal_color_1 = t.red
    vim.g.terminal_color_2 = t.green
    vim.g.terminal_color_3 = t.yellow
    vim.g.terminal_color_4 = t.blue
    vim.g.terminal_color_5 = t.magenta
    vim.g.terminal_color_6 = t.cyan
    vim.g.terminal_color_7 = t.white
    vim.g.terminal_color_8 = t.bright_black
    vim.g.terminal_color_9 = t.bright_red
    vim.g.terminal_color_10 = t.bright_green
    vim.g.terminal_color_11 = t.bright_yellow
    vim.g.terminal_color_12 = t.bright_blue
    vim.g.terminal_color_13 = t.bright_magenta
    vim.g.terminal_color_14 = t.bright_cyan
    vim.g.terminal_color_15 = t.bright_white
  end
end

return M
