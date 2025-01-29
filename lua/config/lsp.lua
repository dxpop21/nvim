require("mason").setup()

require("mason-lspconfig").setup({
    ensure_installed = {
        "lua_ls",
        "ts_ls",
    },
})

local capabilities = require("cmp_nvim_lsp").default_capabilities()

local lspconfig = require("lspconfig")

-- Set up language servers
lspconfig.lua_ls.setup({
    capabilities = capabilities,
})
lspconfig.ts_ls.setup({
    capabilities = capabilities,
})
lspconfig.html.setup({
    capabilities = capabilities,
})

-- Set keymaps
vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
vim.keymap.set({ "n", "v" }, "ca", vim.lsp.buf.code_action, {})
