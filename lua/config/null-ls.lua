local null_ls = require("null-ls")

null_ls.setup({
    sources = {
        null_ls.builtins.formatting.stylua,
        null_ls.builtins.completion.spell,
        null_ls.builtins.formatting.prettier,
        require("none-ls.diagnostics.eslint"),
    },
})

vim.keymap.set("n", "gf", vim.lsp.buf.format, {})
