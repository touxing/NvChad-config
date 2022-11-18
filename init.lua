-- example file i.e lua/custom/init.lua
local autocmd = vim.api.nvim_create_autocmd

-- require("my autocmds file") or just declare them here


------- 用户设置 ------
vim.u = {}
-- 貌似不在 GUI 设置字体大小不生效
-- vim.o.guifont="FantasqueSansMono Nerd Font:h16,CaskaydiaCove Nerd Font:h16"
vim.o.guifont="FantasqueSansMono Nerd Font:h14"
-- 高亮所在行
vim.wo.cursorline = true
vim.u.keymap = {
  set = {},
  opt = {
    ns_opt = {noremap = true, silent = true},
    se_opt = {silent = true, expr = true}
  }
}


vim.cmd(
  [[
    " 关联文件类型
    autocmd BufRead,BufNewFile *.wxml set filetype=html
    autocmd BufRead,BufNewFile *.wxss set filetype=css
    autocmd BufRead,BufNewFile *.ts,*.tsx,*.jsx set filetype=typescript
  ]]
)
