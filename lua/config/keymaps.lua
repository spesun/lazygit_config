-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set("n", "<leader>cp", function()
  local path = vim.fn.expand("%:p")
  vim.fn.setreg("+", path)
  print("Copied: " .. path)
end, { desc = "Copy file path" })

-- Normal / Visual
vim.keymap.set({ "n", "v" }, "<S-Insert>", '"+p')

-- Insert
vim.keymap.set("i", "<S-Insert>", "<C-r>+")

-- Command-line（关键！）
vim.keymap.set("c", "<S-Insert>", "<C-r>+")

vim.keymap.set("n", "<leader>fs", "<cmd>w<cr>", { desc = "Save file" })

-- 快捷键打开 Windows Terminal
vim.keymap.set("n", "<leader>tt", function()
  vim.fn.jobstart("wt -d " .. vim.fn.getcwd())
end, { desc = "Open Windows Terminal" })
