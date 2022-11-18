-- Just an example, supposed to be placed in /lua/custom/
local fn = vim.fn
local M = {}
local customThemes = require "custom.overidden_themes"
local userPlugins = require "custom.plugins"

-- make sure you maintain the structure of `core/default_config.lua` here,
-- example of changing theme:

M.ui = customThemes

M.plugins = userPlugins

return M
