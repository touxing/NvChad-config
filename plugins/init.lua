-- custom/plugins/init.lua

return {
  ["goolord/alpha-nvim"] = {
    disable = false,
  },
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
  },
  ["jose-elias-alvarez/null-ls.nvim"] = {
    after = "nvim-lspconfig",
    config = function()
      require("custom.plugins.configs.null-ls").setup()
    end,
  },
  ["nvim-telescope/telescope-media-files.nvim"] = {
    after = "telescope.nvim",
    config = function()
      require("telescope").setup {
        extensions = {
          media_files = {
            filetypes = { "png", "webp", "jpg", "jpeg" },
            find_cmd = "rg", -- find command (defaults to `fd`)
          },
        },
      }
      require("telescope").load_extension "media_files"
    end,
  }
}
