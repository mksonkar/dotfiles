return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    opts = {
      flavour = "auto", -- latte, frappe, macchiato, mocha
      background = { -- :h background
        light = "latte",
        dark = "frappe",
      },
      transparent_background = false, -- disables setting the background color.
      show_end_of_buffer = false, -- shows the '~' characters after the end of buffers
      term_colors = true, -- sets terminal colors (e.g. `g:terminal_color_0`)
      dim_inactive = {
        enabled = false, -- dims the background color of inactive window
        shade = "dark",
        percentage = 0.15, -- percentage of the shade to apply to the inactive window
      },
      no_italic = false, -- Force no italic
      no_bold = false, -- Force no bold
      no_underline = false, -- Force no underline
      styles = { -- Handles the styles of general hi groups (see `:h highlight-args`):
        comments = { "italic" }, -- Change the style of comments
        conditionals = {},
        loops = {},
        functions = { "bold" },
        keywords = { "italic" },
        strings = {},
        variables = {},
        numbers = {},
        booleans = {},
        properties = {},
        types = {},
        operators = {},
        -- miscs = {}, -- Uncomment to turn off hard-coded styles
      },
      color_overrides = {
        latte = {
          -- base = "#f2f3f5",
          -- base = "#ffffff",
        },
      },
      custom_highlights = function(colors)
        -- return {
        --   Cursorline = { bg = colors.rosewater },
        -- }
        local u = require("catppuccin.utils.colors")
        return {
          -- LspReferenceText = { bg = colors.surface2 },
          -- LspReferenceWrite = { bg = colors.surface2 },
          -- LspReferenceRead = { bg = colors.surface2 },

          -- CursorLine = {
          --   bg = u.vary_color(
          --     -- { latte = u.lighten(colors.crust, 0.90, colors.base) },
          --     u.darken(colors.surface1, 0.64, colors.base)
          --   ),
          -- },
          -- CursorLineNr = { bg = u.blend(colors.overlay0, colors.base, 0.30), style = { "bold" } },
          -- CursorLine = {
          --   bg = { latte = u.blend(colors.overlay0, colors.base, 0.20) },
          --   u.blend(colors.overlay0, colors.base, 0.25),
          -- },
        }
      end,
      highlight_overrides = {
        macchiato = function(colors)
          local u = require("catppuccin.utils.colors")
          return {
            -- CursorLineNr = { bg = u.blend(colors.overlay0, colors.base, 0.40), style = { "bold" } },
            CursorLine = { bg = u.blend(colors.overlay0, colors.base, 0.30) },
          }
        end,
        latte = function(latte)
          local u = require("catppuccin.utils.colors")
          return {
            -- CursorLineNr = { bg = u.blend(latte.overlay0, latte.base, 0.30), style = { "bold" } },
            CursorLine = { bg = u.blend(latte.overlay0, latte.base, 0.20) },
          }
        end,
      },
      default_integrations = true,
      integrations = {
        cmp = true,
        gitsigns = true,
        nvimtree = true,
        treesitter = true,
        notify = false,
        mini = {
          enabled = true,
          indentscope_color = "",
        },
        -- For more plugins integrations please scroll down (https://github.com/catppuccin/nvim#integrations)
      },
    },
  },
  {
    -- "LazyVim/LazyVim",
    -- opts = { colorscheme = "catppuccin" },
    -- keys = {
    --   vim.keymap.set("n", "<leader>ux", function()
    --     local cat = require("catppuccin")
    --     cat.options.transparent_background = not cat.options.transparent_background
    --     cat.compile()
    --     vim.cmd.colorscheme(vim.g.colors_name)
    --   end, { desc = "Toggle Transparent Background" }),
    -- },
  },
}
