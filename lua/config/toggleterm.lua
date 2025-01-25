require("toggleterm").setup({
		open_mapping = [[<c-\>]],
        direction = "float",
		close_on_exit = true,
        float_opts = {
            border = "double",
            width = 80,
            height = 30,
            winblend = 30,
            shade_terminals = true,
        }
})
