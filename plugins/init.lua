-- custom/plugins/init.lua
local overrides = require "custom.overrides"

return {
  ["goolord/alpha-nvim"] = {
    disable = false,
  },

   -- overrde plugin configs
  ["nvim-treesitter/nvim-treesitter"] = {
    override_options = overrides.treesitter,
  },


  ["williamboman/mason.nvim"] = {
    override_options = overrides.mason,
  },

  ["kyazdani42/nvim-tree.lua"] = {
    override_options = overrides.nvimtree,
  },

  -- ["akinsho/toggleterm.nvim"] = {
  --   event = "BufRead",
  --   config = function()
  --     require "custom.plugins.configs.toggleterm"
  --   end,
  -- },
  -- Nvchad已提供
  -- ["folke/which-key.nvim"] = {
  --   event = { "BufRead", "BufNewFile" },
  --   config = function()
  --     require "custom.plugins.configs.which-key"
  --   end,
  -- },
  ["ur4ltz/surround.nvim"] = {
    event = { "BufRead", "BufNewFile" },
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
      require "custom.plugins.configs.null-ls"
    end,
  },
  -- 全局替换
  ["nvim-pack/nvim-spectre"] = {
    after = { "plenary.nvim" },
    config = function()
      require "custom.plugins.configs.nvim-spectre"
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
  },
  -- 增强 comment plugin 注释功能，支持 vue jsx等文件的嵌套注释
  ["JoosepAlviste/nvim-ts-context-commentstring"] = {
    config = function()

    end,
  },
  -- ["terrortylor/nvim-comment"] = {
  --   config = function()
  --     require('nvim_comment').setup({
  --       hook = function()
  --         require("ts_context_commentstring.internal").update_commentstring()
  --       end,
  --     })
  --   end
  -- },
  -- ["echasnovski/mini.nvim"] = {
  --   branch = "stable",
  --   config = function()
  --     require('mini.comment').setup({
  --       hooks = {
  --         pre = function()
  --           require('ts_context_commentstring.internal').update_commentstring()
  --         end,
  --       },
  --     })
  --   end
  -- },
  --[[ ["b3nj5m1n/kommentary"] = {
    config = function()
      require "custom.plugins.configs.kommentary"
    end
  } ]]
}
