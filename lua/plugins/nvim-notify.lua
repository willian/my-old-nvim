return {
  "rcarriga/nvim-notify",
  opts = function(_, opts)
    local palettes = {
      latte = require("catppuccin.palettes").get_palette("latte"),
      frappe = require("catppuccin.palettes").get_palette("frappe"),
      macchiato = require("catppuccin.palettes").get_palette("macchiato"),
      mocha = require("catppuccin.palettes").get_palette("mocha"),
    }

    local flavour = os.getenv("TERM_IS_DARK") == "true" and "frappe" or "latte"

    opts.background_colour = palettes[flavour].mantle
  end,
}
