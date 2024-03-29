-- MAPPINGS
local map = vim.keymap.set
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

-- 搜索文件
map("n", "<C-p>", "<cmd> :Telescope find_files <CR>", ns_opt)

-- 格式化
map("n", "<leader>fm", "<cmd>lua vim.lsp.buf.formatting_sync()<CR>")

-- 搜索并跳转到单词
map("n", "<leader>gw", "<cmd>HopWord<CR>", ns_opt)
-- 搜索并跳转到行
map("n", "<leader>gl", "<cmd>HopLine<CR>", ns_opt)
-- 搜索并跳转到字符
map("n", "<leader>gc", "<cmd>HopChar1<CR>", ns_opt)

-- 全项目替换
map("n", "<leader>rp", "<cmd>lua require('spectre').open()<cr>", ns_opt)
-- 当前文件替换
map("n", "<leader>rf", "<cmd>lua require('spectre').open_file_search()<cr>", ns_opt)
-- 全项目中搜索当前单词
map("n", "<leader>rw", "<cmd>lua require('spectre').open_visual({select_word=true})<cr>", ns_opt)
