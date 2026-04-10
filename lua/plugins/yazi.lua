return {
    "mikavilpas/yazi.nvim",
    event = "VeryLazy",
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
    keys = {
      {
        "<leader>e",
        "<cmd>Yazi<cr>",
        desc = "Open Yazi",
      },
      {
        "<leader>E",
        "<cmd>Yazi cwd<cr>",
        desc = "Open Yazi (cwd)",
      },
    },
    opts = {
      open_for_directories = true,
    },
  }