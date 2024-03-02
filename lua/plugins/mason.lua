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
      "erb-lint",
      "ruby-lsp",
      "stimulus-language-server",
    },
  },
}
