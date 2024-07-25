-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- neovide
if vim.g.neovide then
  -- 字体
  vim.o.guifont = "JetBrainsMonoNL Nerd Font:h12"
  -- shift + ins 粘贴 (复制的文本以空行结尾时有问题)
  vim.keymap.set("!", "<S-Insert>", "<C-R>+", { desc = "terminal <Shift + Ins> paste" })
  vim.keymap.set("n", "<S-Insert>", '"+p', { desc = "terminal <Shift + Ins> paste" })
end

-- 停用鼠标
vim.opt.mouse = ""
