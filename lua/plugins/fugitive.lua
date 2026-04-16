return {
  "tpope/vim-fugitive",
  init = function()
    vim.api.nvim_create_autocmd("FileType", {
      pattern = "fugitive",
      callback = function()
        vim.keymap.set("n", "cc", ":Git commit<CR>", { buffer = true })
        vim.keymap.set("n", "dd", ":Gdiffsplit<CR>", { buffer = true })
        vim.keymap.set("n", "ca", ":Git commit --amend<CR>", { buffer = true })
        vim.keymap.set("n", "pp", ":Git push<CR>", { buffer = true })
        vim.keymap.set("n", "FF", ":Git pull<CR>", { buffer = true })
      end,
    })
  end,
}
