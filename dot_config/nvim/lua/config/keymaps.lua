-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Increment/decrement numbers
vim.keymap.set("n", "+", "<C-a>", { desc = "Increment number" })
vim.keymap.set("n", "-", "<C-x>", { desc = "Decrement number" })

-- Select all
vim.keymap.set("n", "<leader>a", "gg<S-v>G", { desc = "Select all" })

-- Yank buffer
vim.keymap.set("n", "<leader>yy", function()
  vim.cmd(":%y")
end, { desc = "Copy entire buffer" })

-- In visual mode, move the highlighted code up and down
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", { silent = true })
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", { silent = true })

-- Put single char deleted by x in _x register
vim.keymap.set("n", "x", '"_x', { desc = "Don't put deleted character with x in register" })

-- Center line when going through search results
vim.keymap.set("n", "n", "nzzzv", { desc = "Center line when cycling forward search results" })
vim.keymap.set("n", "N", "Nzzzv", { desc = "Center line when cycling backward search results" })

-- Stay in visual mode while indenting
-- vim.keymap.set("v", "<", "<gv")
-- vim.keymap.set("v", ">", ">gv")
