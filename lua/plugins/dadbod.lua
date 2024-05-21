return {
  "tpope/vim-dadbod",
  dependencies = {
    { "kristijanhusak/vim-dadbod-completion", ft = { "sql", "mysql", "plsql" }, lazy = true },
    {
      "kristijanhusak/vim-dadbod-ui",
      lazy = true,
      init = function()
        -- Your DBUI configuration
        vim.g.db_ui_use_nerd_fonts = 1
      end,
    },
  },
  cmd = {
    "DB",
    "DBUI",
    "DBUIToggle",
    "DBUIAddConnection",
    "DBUIFindBuffer",
  },
}
