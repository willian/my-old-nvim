return {
  "neovim/nvim-lspconfig",
  ---@class PluginLspOpts
  opts = {
    servers = {
      graphql = {
        filetypes = { "graphql", "typescript", "typescriptreact" },
      },
      tailwindcss = {
        filetypes_include = { "eruby", "ruby" },
      },
      yamlls = {
        settings = {
          yaml = { keyOrdering = false },
        },
      },
    },
  },
  init = function()
    -- NOTE: https://www.lazyvim.org/plugins/lsp#%EF%B8%8F-customizing-lsp-keymaps
    local keys = require("lazyvim.plugins.lsp.keymaps").get()
    keys[#keys + 1] = { "gD", "<CMD>Glance definitions<CR>" }
    keys[#keys + 1] = { "gM", "<CMD>Glance implementations<CR>" }
    keys[#keys + 1] = { "gR", "<CMD>Glance references<CR>" }
    keys[#keys + 1] = { "gY", "<CMD>Glance type_definitions<CR>" }
  end,
}
