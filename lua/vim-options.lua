vim.g.mapleader = " "
vim.opt.expandtab = false
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.keymap.set("i", "jj", "<Esc>")
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.whichwrap:append("<,>,h,l")

vim.keymap.set('i', '<A-h>', function()
    local col = vim.fn.col(".")
    if col == 1 then
        return "<C-o>k<C-o>$" -- Move up to previous line and end
    else
        return "<Left>" -- Move left within the current line
    end
end, { expr = true, desc = 'Move left or wrap to previous line in insert mode' })

vim.keymap.set('i', '<A-j>', '<Down>', { desc = 'Move down in insert mode' })

vim.keymap.set('i', '<A-k>', '<Up>', { desc = 'Move up in insert mode' })

vim.keymap.set('i', '<A-l>', function()
    local col = vim.fn.col(".")
    local line = vim.fn.getline(".")
    if col > #line then
        return "<C-o>j<C-o>0" -- Move to next line and to its beginning
    else
        return "<Right>" -- Move right within the current line
    end
end, { expr = true, desc = 'Move right or wrap to next line in insert mode' })

