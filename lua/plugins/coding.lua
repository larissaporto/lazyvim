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
  --   require("mini.move").setup({
  --     mappings = {
  --       -- Move visual selection in Visual mode. Defaults are Alt (Meta) + hjkl.
  --       left = "<M-h>",
  --       right = "<M-l>",
  --       down = "<M-j>",
  --       up = "<M-k>",
  --
  --       -- Move current line in Normal mode
  --       line_left = "<M-h>",
  --       line_right = "<M-l>",
  --       line_down = "<M-j>",
  --       line_up = "<M-k>",
  --     },
  --
  --     -- Options which control moving behavior
  --     options = {
  --       -- Automatically reindent selection during linewise vertical move
  --       reindent_linewise = true,
  --     },
  --   }),
  -- },
}
