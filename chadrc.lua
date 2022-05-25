-- Just an example, supposed to be placed in /lua/custom/

local M = {}
local userPlugins = require "custom.plugins"

-- make sure you maintain the structure of `core/default_config.lua` here,
-- example of changing theme:

M.ui = {
   theme = "gruvchad",
}

M.plugins = {
  user = userPlugins,
  override = {
   ["feline-nvim/feline.nvim"] = {
     config = function()
       require "custom.plugins.configs.feline"
     end
   }
  }
}
return M
