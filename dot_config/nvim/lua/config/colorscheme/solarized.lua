return {
  {
    "ishan9299/nvim-solarized-lua",
  },
  {
    "Tsuzat/NeoSolarized.nvim",
    lazy = false, -- make sure we load this during startup if it is your main colorscheme
    priority = 1000, -- make sure to load this before all the other start plugins
    opts = {
      transparent = false,
    },
    config = function()
      -- vim.cmd([[ colorscheme NeoSolarized ]])
    end,
  },
  -- {
  --   "maxmx03/solarized.nvim",
  --   lazy = false,
  --   priority = 1000,
  --   ---@type solarized.config
  --   opts = {
  --     transparent = {
  --       enabled = false,
  --     },
  --   },
  --   config = function(_, opts)
  --     require("solarized").setup(opts)
  --     -- vim.cmd.colorscheme("solarized")
  --   end,
  -- },
}
