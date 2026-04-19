return {
  "nvim-lualine/lualine.nvim",
  opts = function(_, opts)
    -- 替换默认 location，合并选中计数
    opts.sections.lualine_y = {
      {
        function()
          local mode = vim.fn.mode()
          local loc = vim.fn.line(".") .. ":" .. vim.fn.charcol(".")
          -- 选中时追加字符数
          if mode:find("[vV]") then
            local cnt = vim.fn.wordcount().visual_chars
            return loc .. " [Sel: " .. cnt .. "]"
          end
          return loc
        end,
        padding = { left = 1, right = 1 },
      },
      "progress",
    }
    return opts
  end,
}
