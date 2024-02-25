return {
  "stevearc/conform.nvim",
  optional = true,
  opts = {
    formatters_by_ft = {
      ["erb"] = { "erb-format" },
      ["eruby"] = { "erb-format" },
      -- ["erb"] = { "erb-formatter" },
      -- ["eruby"] = { "erb-formatter" },
    },
  },
}
