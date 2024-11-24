-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- vim.opt.winbar = "%=%m %f"
vim.o.termguicolors = true

vim.opt.title = true
vim.opt.titlelen = 0 -- do not shorten title
vim.opt.titlestring = 'nvim %{expand("%:~:h")}'

vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
-- Make line wrap respect indentation
vim.opt.breakindent = true
-- Add extra padding when wrapping to next line
vim.opt.breakindentopt = "shift:2"
vim.opt.expandtab = true
vim.opt.smarttab = true

vim.opt.backspace = { "start", "eol", "indent" }

vim.opt.wrap = true
vim.opt.splitkeep = "cursor"

-- Minimal number of screen lines to keep above and below the cursor.
vim.opt.scrolloff = 10

vim.opt.autoindent = true
vim.opt.smartindent = true

-- Highlight Cursor with a distinct border
vim.cmd([[
  highlight Cursor guibg=white guifg=black gui=bold
]])

-- Undercurls
vim.cmd([[let &t_Cs = "\e[4:3m"]])
vim.cmd([[let &t_Ce = "\e[4:0m"]])
