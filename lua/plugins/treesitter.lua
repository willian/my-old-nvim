return {
  "nvim-treesitter/nvim-treesitter",
  opts = function(_, opts)
    -- add tsx and treesitter
    vim.list_extend(opts.ensure_installed, {
      "comment",
      "css",
      "dockerfile",
      "elixir",
      "git_config",
      "git_rebase",
      "gitattributes",
      "gitcommit",
      "gitignore",
      "go",
      "graphql",
      "jsdoc",
      "nix",
      "php",
      "phpdoc",
      "prisma",
      "ruby",
      "scss",
      "sql",
      "svelte",
      "terraform",
      "toml",
      "vue",
    })
  end,
}
