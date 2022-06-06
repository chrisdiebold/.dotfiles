vim.g.mapleader = ' '

local options = { noremap = true, silent  = false }
-- make window management easier
vim.api.nvim_set_keymap('n', '<C-h>', '<C-w>h', options)
vim.api.nvim_set_keymap('n', '<C-j>', '<C-w>j', options)
vim.api.nvim_set_keymap('n', '<C-k>', '<C-w>k', options)
vim.api.nvim_set_keymap('n', '<C-l>', '<C-w>l', options)
vim.keymap.set('n', '<leader>p', '<cmd>Telescope find_files<cr>')
-- make escaping neovim on home row
vim.api.nvim_set_keymap('i', 'jk', '<ESC>', options)
vim.api.nvim_set_keymap('i', 'kj', '<ESC>', options)

-- indent code in Visual mode easier
vim.api.nvim_set_keymap('v', '<', '<gv', options)
vim.api.nvim_set_keymap('v', '>', '>gv', options)
