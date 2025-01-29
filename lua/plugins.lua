local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
    -- Colorscheme
    "ellisonleao/gruvbox.nvim",

    -- Treesitter: 
    {"nvim-treesitter/nvim-treesitter", build = ":TSUpdate"},

    -- Nvim-Tree
    "nvim-tree/nvim-tree.lua",
    "nvim-tree/nvim-web-devicons",

    -- Toggleterm
    {'akinsho/toggleterm.nvim', version = "*", config = true},

    -- Nvim-Autopairs
    {
        'windwp/nvim-autopairs',
        event = "InsertEnter",
        config = true
    },

    -- Telescope
    {
        'nvim-telescope/telescope.nvim',
        tag = '0.1.8',
        dependencies = { 'nvim-lua/plenary.nvim' }
    },

    'nvim-telescope/telescope-ui-select.nvim',

    -- Comment
    'numToStr/Comment.nvim',



    -- LSP Plugins
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig",

    "nvimtools/none-ls.nvim",
    "nvimtools/none-ls-extras.nvim",

    "hrsh7th/nvim-cmp",
    "L3MON4D3/LuaSnip",
    "saadparwaiz1/cmp_luasnip",
    "rafamadriz/friendly-snippets",
    "hrsh7th/cmp-nvim-lsp"
})

vim.cmd("colorscheme gruvbox")

