return {
  "rcarriga/nvim-notify",
  opts = function(_, opts)
    local mocha = require("catppuccin.palettes").get_palette("mocha")

    opts.background_colour = mocha.mantle
  end,
}
