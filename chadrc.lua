-- Just an example, supposed to be placed in /lua/custom/

local M = {}
local userPlugins = require "custom.plugins"

-- make sure you maintain the structure of `core/default_config.lua` here,
-- example of changing theme:

M.ui = {
  theme = "gruvbox",
}

M.plugins = {
  user = userPlugins,
  override = {
    ["akinsho/bufferline.nvim"] = {
      config = function()
        require "custom.plugins.configs.bufferline"
      end
    },
  }
}
return M
