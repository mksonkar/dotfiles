return {
  -- {
  --   "askfiy/visual_studio_code",
  --   priority = 100,
  --   config = function()
  --     vim.cmd([[colorscheme visual_studio_code]])
  --   end,
  -- },
  {
    "Mofiqul/vscode.nvim",
    lazy = false,
    priority = 1000,
    opts = {
      -- Alternatively set style in setup
      style = "light",

      -- Enable transparent background
      transparent = false,

      -- Enable italic comment
      italic_comments = true,

      -- Underline `@markup.link.*` variants
      underline_links = true,

      -- Disable nvim-tree background color
      disable_nvimtree_bg = true,

      -- Override colors (see ./lua/vscode/colors.lua)
      color_overrides = {
        vscLineNumber = "#FFFFFF",
      },

      -- Override highlight groups (see ./lua/vscode/theme.lua)
      -- group_overrides = function()
      --   local c = require("vscode.colors").get_colors()
      --   Cursor = { fg = c.vscDarkBlue, bg = c.vscLightGreen, bold = true }
      -- end,
    },
  },
  {
    -- "LazyVim/LazyVim",
    -- opts = { colorscheme = "vscode" },
  },
}
