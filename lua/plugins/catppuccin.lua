return {
  {
    "catppuccin/nvim",
    lazy = false,
    name = "catppuccin",
    priority = 1000,
    opts = function(_, opts)
      local palettes = {
        latte = require("catppuccin.palettes").get_palette("latte"),
        frappe = require("catppuccin.palettes").get_palette("frappe"),
        macchiato = require("catppuccin.palettes").get_palette("macchiato"),
        mocha = require("catppuccin.palettes").get_palette("mocha"),
      }

      local flavour = os.getenv("TERM_IS_DARK") == "true" and "mocha" or "latte"

      ---@class CatppuccinOptions
      local myopts = {
        flavour = flavour,
        transparent_background = os.getenv("TERM_IS_DARK") == "true",
        custom_highlights = function(colors)
          return {
            PackageInfoOutdatedVersion = { fg = colors.peach },
            CurSearch = { bg = palettes[flavour].yellow },
          }
        end,
        integrations = {
          cmp = true,
          fidget = true,
          gitsigns = true,
          harpoon = true,
          lsp_trouble = true,
          mason = true,
          neotest = true,
          noice = true,
          notify = true,
          octo = true,
          telescope = {
            enabled = true,
          },
          treesitter = true,
          treesitter_context = false,
          symbols_outline = true,
          illuminate = true,
          which_key = true,
          barbecue = {
            dim_dirname = true,
            bold_basename = true,
            dim_context = false,
            alt_background = false,
          },
          native_lsp = {
            enabled = true,
            virtual_text = {
              errors = { "italic" },
              hints = { "italic" },
              warnings = { "italic" },
              information = { "italic" },
            },
            underlines = {
              errors = { "underline" },
              hints = { "underline" },
              warnings = { "underline" },
              information = { "underline" },
            },
          },
        },
      }

      -- merge the two tables
      return vim.tbl_deep_extend("force", myopts, opts)
    end,
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin",
    },
  },
}
