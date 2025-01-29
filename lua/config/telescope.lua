require('telescope').setup {
  extensions = {
    ["ui-select"] = {
        require("telescope.themes").get_dropdown{}
    }
  },
  defaults = {
    mappings = {
      i = { -- Insert mode mappings
        ["<C-j>"] = require('telescope.actions').move_selection_next,
        ["<C-k>"] = require('telescope.actions').move_selection_previous,
      },
      n = { -- Normal mode mappings
        ["<C-j>"] = require('telescope.actions').move_selection_next,
        ["<C-k>"] = require('telescope.actions').move_selection_previous,
      },
    },
  },
}

require('telescope').load_extension("ui-select")
