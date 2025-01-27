require("nvim-tree").setup({
  sort = {
    sorter = "case_sensitive",
  },
  view = {
    width = 30,
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = false,
  },
  diagnostics = {
      enable = true,
      icons = {
          hint = "",
          info = "",
          warning = "",
          error = "",
      }
  },
  git = {
      enable = true,
  }
})
