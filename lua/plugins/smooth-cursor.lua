return {
  "gen740/SmoothCursor.nvim",
  config = function()
    ---@class SmoothCursorConfig
    require("smoothcursor").setup({
      ---@class FancyConfig
      fancy = {
        enable = false,
      },
    })
  end,
}
