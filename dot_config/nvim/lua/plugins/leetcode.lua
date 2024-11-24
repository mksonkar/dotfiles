return {
  {
    "kawre/leetcode.nvim",
    -- event = "VeryLazy",
    lazy = "leetcode.nvim" ~= vim.fn.argv()[1],
    build = ":TSUpdate html",
    dependencies = {
      { "nvim-lua/plenary.nvim", lazy = false },
      { "nvim-telescope/telescope.nvim", lazy = false },
      { "MunifTanjim/nui.nvim", lazy = false },

      -- optional
      "nvim-treesitter/nvim-treesitter",
      "rcarriga/nvim-notify",
      "nvim-tree/nvim-web-devicons",
    },
    plugins = {
      non_standalone = true,
    },
    opts = {
      -- configuration goes here
      arg = "leetcode.nvim",
      lang = "python",
      storage = {
        home = vim.fn.stdpath("data") .. "/leetcode",
        cache = vim.fn.stdpath("cache") .. "/leetcode",
      },
    },
  },
}
