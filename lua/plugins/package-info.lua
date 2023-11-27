return {
  {
    "vuki656/package-info.nvim",
    ft = "json",
    dependencies = { "MunifTanjim/nui.nvim" },
    keys = {
      { "<leader>cpt", "<cmd>lua require('package-info').toggle()<CR>", desc = "Toggle" },
      { "<leader>cpd", "<cmd>lua require('package-info').delete()<CR>", desc = "Delete package" },
      { "<leader>cpu", "<cmd>lua require('package-info').update()<CR>", desc = "Update package" },
      { "<leader>cpi", "<cmd>lua require('package-info').install()<CR>", desc = "Install a new package" },
      { "<leader>cpc", "<cmd>lua require('package-info').change_version()<CR>", desc = "Change package version" },
    },
    config = function()
      local colors = require("catppuccin.palettes").get_palette("mocha")

      require("package-info").setup({
        package_manager = "npm",
        colors = {
          outdated = colors.peach,
        },
        hide_up_to_date = true,
      })
    end,
  },
}
