-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here
vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = "*", -- run on all filetypes
  command = [[%s/\s\+$//e]], -- remove trailing whitespace
  desc = "remove trailing whitespace",
})

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
