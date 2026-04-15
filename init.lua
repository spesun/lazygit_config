-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

vim.env.JAVA_HOME = "E:\\Program Files\\Eclipse Adoptium\\jdk-25.0.1.8-hotspot"
vim.env.PATH = vim.env.JAVA_HOME .. "/bin;" .. vim.env.PATH

vim.opt.guifont = { "JetBrainsMono Nerd Font:h12" }
-- 启用Nerd Font图标支持（很多配置/插件依赖这个变量）
vim.g.have_nerd_font = true
