local M = {}


M.bufferline = {
  config = function()
    require "custom.plugins.configs.bufferline"
  end
}

M.treesitter = {
  ensure_installed = {
    "lua",
    "vim",
    "javascript",
    "typescript",
    "html",
    "css",
  },
  compilers = {"clang"},
  context_commentstring = {
    enable = true,
    enable_autocmd = false,
  },
  config = function()
    return "custom.plugins.configs.treesitter"
  end

}

M.mason = {
  ensure_installed = {
    -- lua stuff
    "lua-language-server",
    "stylua",

    -- web dev stuff
    "css-lsp",
    "html-lsp",
    "typescript-language-server",
    "deno",
  },
}

-- git support in nvimtree
M.nvimtree = {
  git = {
    enable = true,
  },

  renderer = {
    highlight_git = true,
    icons = {
      show = {
        git = true,
      },
    },
  },
}

M.comment = {

  config = function()
    return "custom.plugins.configs.comment"
  end,
}


{
  ["akinsho/bufferline.nvim"] = {
    config = function()
      require "custom.plugins.configs.bufferline"
    end
  },
  ["nvim-treesitter/nvim-treesitter"] = {
    ensure_installed = {
      "lua",
      "vim",
      "javascript",
      "typescript",
      "html",
      "css",
    },
    compilers = {"clang"},
    context_commentstring = {
      enable = true,
      enable_autocmd = false,
    },
    config = function()
      return "custom.plugins.configs.treesitter"
    end
  },
  ["numToStr/Comment.nvim"] = {
    config = function()
      return "custom.plugins.configs.comment"
    end,
  }
}

return M
