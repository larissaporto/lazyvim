return {
  {
    "kylechui/nvim-surround",
    version = "*", -- Use for stability; omit to use `main` branch for the latest features
    event = "VeryLazy",
    config = function()
      require("nvim-surround").setup()
    end,
  },

  --  {
  --    "echasnovski/mini.move",
  --    version = "*",
  --    config = function()
  --      require('mini.move').setup()
  --    end,
  --  },
}
