return {
  "L3MON4D3/LuaSnip",
  dependencies = {
    "rafamadriz/friendly-snippets",
    config = function()
      require("luasnip.loaders.from_vscode").lazy_load({
        paths = { "~/.local/share/nvim/lazy/friendly-snippets", "./my-snippets" },
      })
    end,
  },
  keys = function()
    return {}
  end,
}
