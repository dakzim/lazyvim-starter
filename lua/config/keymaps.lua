-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- 1<C-_> 2<C-/> 体现出来的特征是 2 映射到 1，如果 1 绑定功能，1、2 都有效，无论 2 是否禁用或绑定其他功能
-- vim.keymap.del("n", "<C-_>")
-- vim.keymap.del("n", "<C-/>")
-- vim.keymap.set("n", "<C-/>", "<cmd>echo 321<cr><esc>")
-- vim.keymap.set("n", "<C-_>", "<cmd>echo 123<cr><esc>")

-- terminal 模式下与 bash 冲突的快捷键处理
-- Ctrl+/ 和 Ctrl+_ 清除，替换 Alt+/ 来关闭窗口
vim.keymap.del("t", "<C-_>")
vim.keymap.del("t", "<C-/>")
vim.keymap.set("t", "<A-/>", "<cmd>close<cr>", { desc = "Hide Terminal" })
-- Ctrl+h 取消
vim.keymap.del("t", "<C-h>")

-- 行号显示开关
vim.keymap.set("n", "<A-'>", "<cmd>set number! relativenumber!<cr>", { desc = "Toggle line numbers" })

-- 显示提示的历史记录
vim.keymap.set("n", "<leader>no", "<cmd>Telescope notify<cr>")
