vim.g.mapleader = " "
vim.opt.expandtab = false
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.keymap.set("i", "jj", "<Esc>")
vim.opt.number = true
vim.opt.relativenumber = true

vim.keymap.set('i', '<A-h>', '<Left>', { desc = 'Move left in insert mode' })
vim.keymap.set('i', '<A-j>', '<Down>', { desc = 'Move down in insert mode' })
vim.keymap.set('i', '<A-k>', '<Up>', { desc = 'Move up in insert mode' })
vim.keymap.set('i', '<A-l>', '<Right>', { desc = 'Move right in insert mode' })

