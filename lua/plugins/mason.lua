return {
  "williamboman/mason.nvim",
  opts = {
    ui = {
      border = "rounded",
      icons = {
        package_installed = " ",
        package_pending = "󰌚 ",
        package_uninstalled = "󰢤 ",
      },
    },
    ensure_installed = {
      "emmet-language-server",
      "graphql-language-service-cli",
      "stimulus-language-server",
    },
  },
}
