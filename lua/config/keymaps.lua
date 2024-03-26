-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.keymap.set("v", "<leader>f", function()
  vim.api.nvim_input("y")
  vim.api.nvim_input("<cmd> Telescope live_grep <CR>")
  vim.api.nvim_input("<c-r>")
  vim.api.nvim_input("0")
end, { desc = "Telescope live grep for selection" })
