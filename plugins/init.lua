-- custom/plugins/init.lua

return {
    ["akinsho/toggleterm.nvim"] = {
      event = "BufRead",
      config = function()
         require "custom.plugins.configs.toggleterm"
      end,
   },
   ["folke/which-key.nvim"] = {
     event = {"BufRead", "BufNewFile"},
     config = function()
        require "custom.plugins.configs.which-key"
     end,
   },
   ["ur4ltz/surround.nvim"] = {
     event = {"BufRead", "BufNewFile"},
     config = function()
       require "custom.plugins.configs.surround"
     end,
   },
   ["phaazon/hop.nvim"] = {
     cmd = {
       "HopWord",
       "HopLine",
       "HopChar1"
     },
     config = function()
       require "custom.plugins.configs.hop"
     end,
   },
   ["liuchengxu/vista.vim"] = {
     config = function()
       require "custom.plugins.configs.vista"
     end,
   }
}
