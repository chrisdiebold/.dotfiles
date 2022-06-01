-- Global Status Bar
vim.opt.laststatus = 3
vim.opt.number = true
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.softtabstop = 2
vim.opt.expandtab = true

vim.opt.cursorline = true
vim.opt.list = true
vim.opt.listchars = {eol = '↲', tab = '▸ ', trail = '·'}
vim.opt.termguicolors = true
vim.cmd('colorscheme dracula')
vim.o.conceallevel = 0
vim.cmd('filetype plugin indent on')
-- neovim already sets the shortmess options. We are appending c to it
vim.o.shortmess = vim.o.shortmess .. 'c'
vim.o.pumheight = 10
vim.o.cmdheight = 2
vim.o.splitbelow = true
vim.o.splitright = true
vim.opt.termguicolors = true

vim.o.backup = false
vim.o.writebackup = false
-- enable clipboard support
-- in ubuntu may have to install xsel
vim.o.clipboard = 'unnamedplus'
vim.o.ignorecase = true

vim.o.scrolloff = 4

vim.o.mouse = 'a'

vim.wo.wrap = false
vim.wo.signcolumn = 'yes'
vim.opt.autoindent = true

