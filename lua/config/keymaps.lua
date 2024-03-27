-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.keymap.set("v", "<leader>f", function()
  vim.api.nvim_input("y")
  vim.api.nvim_input("<cmd> Telescope live_grep <CR>")
  vim.api.nvim_input("<c-r>")
  vim.api.nvim_input("0")
end, { desc = "Telescope live grep for selection" })

local setup_spec_opener = function()
  vim.keymap.set("n", "<leader>t", function()
    local current_file = vim.fn.expand("%:p")
    local corresponding_file

    -- Detect if it's a source or test file
    if current_file:match("_spec%.") then
      corresponding_file = current_file:gsub("spec/", "app/"):gsub("spec/lib/", "lib/"):gsub("_spec%.", ".")
    else
      corresponding_file = current_file:gsub("app/", "spec/"):gsub("lib/", "spec/lib/"):gsub("%.%w+$", "_spec%0")
    end

    vim.cmd("edit " .. corresponding_file)
  end, { desc = "Spec opener" })
end

vim.api.nvim_create_autocmd("FileType", {
  pattern = "ruby",
  callback = setup_spec_opener,
  desc = "Setup spec opener",
})
