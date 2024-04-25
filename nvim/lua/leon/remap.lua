-- Leader
vim.g.mapleader = " "

-- Save alias
vim.keymap.set("n", "<leader>ss", ":w<CR>")

-- Exit from buffer, disable mouse actions
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.opt.mouse = ""

-- Multi-line move
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Page jumps w cursor at the middle
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- Search jumps w currsor at the middle
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- Scroll past end of screen
vim.keymap.set("n", "G", "Gzz")
