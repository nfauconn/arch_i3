
-- leader
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- explorer
vim.keymap.set('n', '<leader>n', vim.cmd.Ex)
vim.keymap.set('n', '<leader>t', vim.cmd.Neotree)

-- erase highlight
vim.keymap.set('n', '<leader>he', ':nohlsearch<CR>')

-- navigation
vim.keymap.set('n', '<C-h>', '<C-w>h')
vim.keymap.set('n', '<C-j>', '<C-w>j')
vim.keymap.set('n', '<C-k>', '<C-w>k')
vim.keymap.set('n', '<C-l>', '<C-w>l')

-- move selected line(s)
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- appending below line without placing cursor at the end
vim.keymap.set("n", "J", "mzJ`z")

-- Reselecting when indenting multiple times
vim.keymap.set("v","<", "<gv")
vim.keymap.set("v", ">", ">gv")

-- moving down / up half a page but without changing cursor place
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
-- same for results of search
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- when want to past over a selected portion to replace it, doesnt save the deleted in reg
vim.keymap.set("x", "<leader>p", "\"_dP")

-- leader y to yank in system clipboard
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

