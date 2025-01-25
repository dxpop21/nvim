local function map(mode, new, old, options)
	local opts = { noremap = true, silent = true }
	if options then
		opts = vim.tbl_extend("force", opts, options)
	end
	vim.api.nvim_set_keymap(mode, new, old, opts)
end


-- Press control+S to save
map("n", "<C-s>", ":w<CR>")
map("i", "<C-s>", "<ESC>:w<CR>")

-- Press jk to enter normal mode 
map("i", "jk", "<ESC>")

-- Retain indent when moving blocks of code 
map("v", "<", "<gv")
map("v", ">", ">gv")

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
