----------------------------------
-- KEYBINDINGS
----------------------------------


local function map(m, k, v)
	vim.keymap.set(m, k, v, { silent = true })
end


-- Example use of function
-- map("i", "<C-A>", "<ESC>I")


-- NERDtree
map("n", "<leader>n", "<CMD>NERDTreeFocus<CR>")
map("n", "<C-n>", "<CMD>NERDTree<CR>")
map("n", "<C-t>", "<CMD>NERDTreeToggle<CR>")
