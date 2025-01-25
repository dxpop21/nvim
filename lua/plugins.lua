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
})

vim.cmd("colorscheme gruvbox")
