-- https://github.com/nvim-pack/nvim-spectre

-- WARN: spectre 手动安装依赖项 sed 和 ripgrep
-- sed 命令（自行安装，如果已有则忽略）
-- repgrep： https://github.com/BurntSushi/ripgrep

require("spectre").setup(
  {
    mapping = {
      ["toggle_line"] = {
        map = "dd",
        cmd = "<cmd>lua require('spectre').toggle_line()<cr>",
        desc = "toggle current item"
      },
      ["enter_file"] = {
        map = "<cr>",
        cmd = "<cmd>lua require('spectre.actions').select_entry()<cr>",
        desc = "goto current file"
      },
      ["show_option_menu"] = {
        map = "<leader>o",
        cmd = "<cmd>lua require('spectre').show_options()<cr>",
        desc = "show option"
      },
      ["run_replace"] = {
        map = "<leader>r",
        cmd = "<cmd>lua require('spectre.actions').run_replace()<cr>",
        desc = "replace all"
      },
      ["change_view_mode"] = {
        map = "<leader>v",
        cmd = "<cmd>lua require('spectre').change_view()<cr>",
        desc = "change result view mode"
      }
    }
  }
)
