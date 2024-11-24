return {
  {
    "ellisonleao/gruvbox.nvim",
    priority = 1000,
    lazy = false,
    opts = {
      terminal_colors = true, -- add neovim terminal colors
      undercurl = true,
      underline = true,
      bold = true,
      italic = {
        strings = false,
        emphasis = true,
        comments = true,
        operators = false,
        folds = true,
      },
      strikethrough = true,
      invert_selection = false,
      invert_signs = false,
      invert_tabline = false,
      invert_intend_guides = false,
      inverse = true, -- invert background for search, diffs, statuslines and errors
      contrast = "", -- can be "hard", "soft" or empty string
      palette_overrides = {},
      overrides = {},
      dim_inactive = false,
      transparent_mode = true,
    },
  },
  -- {
  --   "f4z3r/gruvbox-material.nvim",
  --   name = "gruvbox-material",
  --   lazy = false,
  --   priority = 1000,
  --   opts = {
  --     italics = true, -- enable italics in general
  --     contrast = "medium", -- set contrast, can be any of "hard", "medium", "soft"
  --     comments = {
  --       italics = true, -- enable italic comments
  --     },
  --     background = {
  --       transparent = false, -- set the background to transparent
  --     },
  --     float = {
  --       force_background = false, -- force background on floats even when background.transparent is set
  --       background_color = nil, -- set color for float backgrounds. If nil, uses the default color set
  --       -- by the color scheme
  --     },
  --     signs = {
  --       highlight = true, -- whether to highlight signs
  --     },
  --     customize = nil, -- customize the theme in any way you desire, see below what this
  --     -- configuration accepts
  --   },
  -- },
  {
    "sainnhe/gruvbox-material",
    lazy = false,
    priority = 1000,
    config = function()
      vim.g.gruvbox_material_background = "medium" -- soft, medium (default), hard
      vim.g.gruvbox_material_ui_contrast = "medium"
      vim.g.gruvbox_material_foreground = "material" -- material (default), mix, original  (color palette)
      vim.g.gruvbox_material_better_performance = 1
      vim.g.gruvbox_material_enable_italic = true
      vim.g.gruvbox_material_disable_italic_comment = 0
      vim.g.gruvbox_material_enable_bold = 1
      vim.g.gruvbox_material_current_word = "bold" --'grey background'`, `'high contrast background'`, `'bold'`, `'underline'`, `'italic'
      --   Available values:   `'grey background'`, `'green background'`, `'blue background'`, `'red background'`, `'reverse'` Default value:      `'grey background'`
      vim.g.gruvbox_material_visual = "red background"
      vim.g.gruvbox_material_dim_inactive_windows = 0
      vim.g.gruvbox_material_transparent_background = 0
      vim.cmd.hi("Comment gui=none")
      -- vim.cmd("colorscheme gruvbox-material")
    end,
  },
}
