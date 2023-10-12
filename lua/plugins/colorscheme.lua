return {
  -- {
  --   "catppuccin/nvim",
  --   name = "catppuccin",
  --   priority = 1000,
  --   ---@class CatppuccinOptions
  --   opts = {
  --     transparent_background = true,
  --   },
  -- },
  {
    "folke/tokyonight.nvim",
    lazy = true,
    opts = { style = "moon", transparent = true },
  },
  -- {
  --   "bluz71/vim-nightfly-guicolors",
  --   name = "nightfly",
  --   lazy = false,
  --   priority = 1000, -- make sure to load this before all the other start plugins
  --   config = function()
  --     -- load the colorscheme here
  --     vim.cmd([[colorscheme nightfly]])
  --     vim.g.nightflyTransparent = true
  --     vim.g.nightflyCursorColor = true
  --   end,
  -- },
}
