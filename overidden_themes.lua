
local sep_style = require("ui.icons").statusline_separators
local user_sep = require("core.utils").load_config().ui.statusline.separator_style
local sep_l = sep_style[user_sep]["left"]
local sep_r = sep_style[user_sep]["right"]

local M = {}

M = {
  theme = "gruvbox",
  statusline = {
    override = {
      cursor_position = function()
        local left_sep = "%#St_pos_sep#" .. sep_l .. "%#St_pos_icon#" .. " "

        local current_line = fn.line "."
        local total_line = fn.line "$"
        local current_col = fn.col "."
        local text = math.modf((current_line / total_line) * 100) .. tostring "%%"

        text = (current_line == 1 and "Top") or text
        text = (current_line == total_line and "Bot") or text

        return left_sep .. "%#St_pos_text#" .. " " .. "row:" .. current_line .. " col:" .. current_col .. " " .. left_sep .. " " .. text .. " "
      end
    }
  }
}

return M
