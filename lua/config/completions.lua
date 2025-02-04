local cmp = require("cmp")
require("luasnip.loaders.from_vscode").lazy_load()
cmp.setup({
    snippet = {
        expand = function(args)
            require("luasnip").lsp_expand(args.body)
        end,
    },
    window = {
        completion = cmp.config.window.bordered(),
        documentation = cmp.config.window.bordered(),
    },
    mapping = cmp.mapping.preset.insert({
        ["<C-b>"] = cmp.mapping.scroll_docs(-4),
        ["<C-f>"] = cmp.mapping.scroll_docs(4),
        ["<C-e>"] = cmp.mapping.abort(),
        ["<C-Space>"] = cmp.mapping.confirm({ select = true }),
    }),
    sources = cmp.config.sources({
        { name = "nvim_lsp" },
        { name = "emmet_ls" },
        { name = "ts_ls" },
        { name = "html" },
        { name = "cssls" },
        { name = "bashls" },
        { name = "luasnip" },
        {},
    }, {
        { name = "buffer" },
    }),
})
