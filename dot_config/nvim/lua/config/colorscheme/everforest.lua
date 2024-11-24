return {
  {
    "neanias/everforest-nvim",
    version = false,
    lazy = false,
    priority = 1000, -- make sure to load this before all the other start plugins
    opts = {
      ---Controls the "hardness" of the background. Options are "soft", "medium" or "hard".
      ---Default is "medium".
      background = "hard",
      ---How much of the background should be transparent. 2 will have more UI
      ---components be transparent (e.g. status line background)
      transparent_background_level = 0,
      italics = true,
      disable_italic_comments = false,
      ---The contrast of line numbers, indent lines, etc. Options are `"high"` or
      ---`"low"` (default).
      ui_contrast = "low",
      ---Dim inactive windows. Only works in Neovim. Can look a bit weird with Telescope.
      ---
      ---When this option is used in conjunction with show_eob set to `false`, the
      ---end of the buffer will only be hidden inside the active window. Inside
      ---inactive windows, the end of buffer filler characters will be visible in
      ---dimmed symbols. This is due to the way Vim and Neovim handle `EndOfBuffer`.
      dim_inactive_windows = false,
      show_eob = true,
      ---Style used to make floating windows stand out from other windows. `"bright"`
      ---makes the background of these windows lighter than |hl-Normal|, whereas
      ---`"dim"` makes it darker.
      ---
      ---Floating windows include for instance diagnostic pop-ups, scrollable
      ---documentation windows from completion engines, overlay windows from
      ---installers, etc.
      ---
      ---NB: This is only significant for dark backgrounds as the light palettes
      ---have the same colour for both values in the switch.
      float_style = "bright",
      ---Inlay hints are special markers that are displayed inline with the code to
      ---provide you with additional information. You can use this option to customize
      ---the background color of inlay hints.
      ---
      ---Options are `"none"` or `"dimmed"`.
      inlay_hints_background = "none",
      ---You can override specific highlights to use other groups or a hex colour.
      ---This function will be called with the highlights and colour palette tables.
      ---@param highlight_groups Highlights
      ---@param palette Palette
      on_highlights = function(highlight_groups, palette)
        ---You can override colours in the palette to use different hex colours.
        ---This function will be called once the base and background colours have
        ---been mixed on the palette.
        highlight_groups.CursorLine = { fg = palette.none, bg = palette.bg2 }
      end,
      ---@param palette Palette
      colours_override = function(palette) end,
    },
    config = function(_, opts)
      -- require("everforest").setup(opts)
      -- vim.cmd("colorscheme everforest")
    end,
  },
  -- {
  --   "sainnhe/everforest",
  --   lazy = false,
  --   priority = 1000,
  --   config = function()
  --     vim.g.everforest_enable_italic = 1
  --     vim.g.everforest_disable_italic_comment = 0
  --     vim.g.everforest_enable_bold = 1
  --     vim.g.everforest_better_performance = 1
  --
  --     vim.g.everforest_background = "medium" -- soft, medium (default), hard
  --     vim.g.everforest_foreground = "material" -- material (default), mix, original  (color palette)
  --     vim.g.everforest_current_word = "bold"
  --     -- Available values:   `'grey background'`, `'high contrast background'`, `'bold'`,
  --     -- `'underline'`, `'italic'`
  --     -- vim.g.everforest_ui_contrast = 'high'
  --     vim.g.everforest_dim_inactive_windows = 0
  --     --
  --     vim.g.everforest_transparent_background = 0
  --     vim.cmd.hi("Comment gui=none")
  --
  --     vim.cmd.colorscheme("everforest")
  --   end,
  -- },
}
