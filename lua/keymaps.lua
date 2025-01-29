local function map(mode, new, old, options)
    local opts = { noremap = true, silent = true }
    if options then
        opts = vim.tbl_extend("force", opts, options)
    end
    vim.keymap.set(mode, new, old, opts)
end

local function replace_matching_visual()
    local text = vim.fn.getreg('"') -- Get the yanked text
    if text == "" then
        return
    end

    -- Escape special regex characters in the pattern
    local escaped_pattern = vim.fn.escape(text, "\\/.*$^~[]")
    escaped_pattern = "\\V" .. escaped_pattern -- Very nomagic mode

    -- Get replacement text (or empty string for deletion)
    local ok, replacement = pcall(vim.fn.input, "Replace with (ENTER to delete): ")
    if not ok then
        return
    end -- Exit if user cancels with <Esc>

    -- Escape special replacement characters like & and \
    local escaped_replacement = vim.fn.escape(replacement, "\\&")

    -- Execute substitution
    vim.cmd(("keeppatterns %%s/%s/%s/g"):format(escaped_pattern, escaped_replacement))
    vim.cmd("nohlsearch") -- Clear search highlight
end

-- Press control+S to save
map("n", "<C-s>", ":w<CR>")
map("i", "<C-s>", "<ESC>:w<CR>")

-- Press jk to enter normal mode
map("i", "jk", "<ESC>")

-- Indenting in visual mode
map("v", "<S-Tab>", "<gv")
map("v", "<Tab>", ">gv")

-- Nvim-Tree
map("n", "<Space><Space>", ":NvimTreeToggle<CR>")
map("n", "<C-e>", ":NvimTreeFocus<CR>")

-- Disable keys
map("n", "<PageDown>", "<Nop>")
map("i", "<PageDown>", "<Nop>")
map("v", "<PageDown>", "<Nop>")
map("n", "<PageUp>", "<Nop>")
map("i", "<PageUp>", "<Nop>")
map("v", "<PageUp>", "<Nop>")

-- Telescope
map("n", "ff", ":Telescope find_files<CR>")
map("n", "fg", ":Telescope live_grep<CR>")
map("n", "fb", ":Telescope buffers<CR>")
map("n", "fh", ":Telescope help_tags<CR>")

-- Move lines up and down
map("n", "<A-j>", ":m .+1<CR>==")
map("n", "<A-k>", ":m .-2<CR>==")
map("v", "<A-j>", ":m '>+1<CR>gv=gv")
map("v", "<A-k>", ":m '<-2<CR>gv=gv")

-- Replace all selected in visual mode
map("v", "<A-r>", function()
    vim.cmd("normal! y") -- Yank selected text
    replace_matching_visual()
end, {})
