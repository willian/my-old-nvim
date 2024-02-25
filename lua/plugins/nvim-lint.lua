return {
  "mfussenegger/nvim-lint",
  event = "LazyFile",
  opts = {
    linters_by_ft = {
      erb = { "erb_lint" },
      eruby = { "erb_lint" },
    },
  },
}
