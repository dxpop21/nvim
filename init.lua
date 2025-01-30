require("keymaps")
require("options")
require("plugins")
require("config.nvim-tree")
require("config.toggleterm")
require("config.lsp")
require("config.telescope")
require("config.comment")
require("config.null-ls")
require("config.treesitter")
require("config.completions")

vim.cmd([[
  " Base line number style
  highlight! CursorLine guibg=NONE
  highlight! CursorLineNr guifg=#ebb021 guibg=#474747 gui=bold

  " Optional: Make number column background match editor
  highlight! SignColumn guibg=NONE
  set numberwidth=4
  set cursorline
]])
