return {
  {
    "kylechui/nvim-surround",
    version = "*", -- Use for stability; omit to use `main` branch for the latest features
    event = "VeryLazy",
    config = function()
      require("nvim-surround").setup()
    end,
  },

  {
    "max397574/better-escape.nvim",
    config = function()
      require("better_escape").setup()
    end,
  },

  -- {
  --   "echasnovski/mini.move",
  --   version = "*",
  --   config = function()
  --     require("mini.move").setup({
  --       mappings = {
  --         left = "<A-left>",
  --         right = "<A-right>",
  --         down = "<A-down>",
  --         up = "<A-up>",
  --
  --         line_left = "<A-left>",
  --         line_right = "<A-right>",
  --         line_down = "<A-down>",
  --         line_up = "<A-up>",
  --       },
  --     })
  --   end,
  -- },
}
