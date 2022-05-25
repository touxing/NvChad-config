-- example file i.e lua/custom/init.lua
-- MAPPINGS
local map = nvchad.map
local ns_opt = {noremap = true, silent = true}

map("n", "<leader>cc", ":Telescope <CR>", ns_opt)
map("n", "<leader>q", ":q <CR>", ns_opt)
map("n", "<leader>ss", "<cmd> :w <CR>", ns_opt)

-- 系统粘贴
map("i", "<C-v>", "<Esc>\"+pa", ns_opt)

-- toggleterm
map("n", "<leader>tt", "<cmd>exe v:count.'ToggleTerm'<CR>")
map("n", "<leader>tf", "<cmd>lua require('toggleterm').float_toggle()<CR>")
map("n", "<leader>tg", "<cmd>lua require('toggleterm').lazygit_toggle()<CR>")
map("n", "<leader>ta", "<cmd>ToggleTermToggleAll<CR>")
-- Terminal相关
map("n", "<leader>t", ":sp | terminal<CR>", ns_opt)
map("n", "<leader>vt", ":vsp | terminal<CR>", ns_opt)
map("t", "<Esc>", "<C-\\><C-n>", ns_opt)

-- windows 分屏快捷键
map("n", "<leader>sv", ":vsp<CR>", ns_opt)
map("n", "<leader>sh", ":sp<CR>", ns_opt)
--     -- 关闭当前
map("n", "<leader>sc", "<C-w>c", ns_opt)
-- -- 关闭其他
map("n", "<leader>so", "<C-w>o", ns_opt)

-- -- 左右比例控制
map("n", "<C-Left>", ":vertical resize -2<CR>", ns_opt)
map("n", "<C-Right>", ":vertical resize +2<CR>", ns_opt)
map("n", "<leader>s,", ":vertical resize -20<CR>", ns_opt)
map("n", "<leader>s.", ":vertical resize +20<CR>", ns_opt)

-- -- 上下比例
map("n", "<leader>sj", ":resize +10<CR>", ns_opt)
map("n", "<leader>sk", ":resize -10<CR>", ns_opt)
map("n", "<leader><C-Down>", ":resize +2<CR>", ns_opt)
map("n", "<leader><C-Up>", ":resize -2<CR>", ns_opt)

-- 打开大纲预览
map("n", "<leader>2", "<cmd>Vista!!<CR>", ns_opt)

map("n", "<C-p>", "<cmd> :Telescope find_files <CR>")

-- require("my autocmds file") or just declare them here


------- 用户设置 ------
vim.u = {}
-- 貌似不在 GUI 设置字体大小不生效
-- vim.o.guifont="FantasqueSansMono Nerd Font:h16,CaskaydiaCove Nerd Font:h16"
vim.o.guifont="FantasqueSansMono Nerd Font:h15"
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
    autocmd BufRead,BufNewFile *.ts,*.tsx,*.jsx set filetype=typesCRipt
  ]]
)
