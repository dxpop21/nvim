local options = {
    -- Clipboard and Mouse
    clipboard = 'unnamedplus', -- use system clipboard
    mouse = '', -- disable mouse

    -- Tab
    tabstop = 4, -- render files with 4 spaces per tab
    softtabstop = 4, -- 4 spaces per tab for each I insert while editing
    shiftwidth = 4, -- 4 spaces per tab for any auto-indentation
    expandtab = true, -- Use spaces instead of literal tab character (\t)

    -- UI Configuration
    number = true, -- show line numbers
    relativenumber = true, -- all line numbers relative to current line
    termguicolors = true, -- enable 24-bit RGB color
    showmode = false -- don't show mode tip
}

for k,v in pairs(options) do vim.opt[k] = v end   
