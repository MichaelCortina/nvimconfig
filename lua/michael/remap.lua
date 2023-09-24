--vim.keymap.set("n", ":bn", ":TablineBufferNext<CR>")
--vim.keymap.set("n", ":bp", ":TablineBufferPrevious<CR>")
vim.keymap.set("n", "<leader>e", vim.cmd.Ex)

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")

vim.keymap.set("n", "<C-d>", "<C-d>zz")

vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set("n", "<leader>r", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

vim.cmd([[command! Cmpoff lua require('cmp').setup.buffer { enabled = false }]])
vim.cmd([[command! Cmpon lua require('cmp').setup.buffer { enabled = true }]])
