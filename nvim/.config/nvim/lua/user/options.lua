vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.showmode = false

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.expandtab = true
vim.opt.smartindent = true
vim.opt.shiftwidth = 4

vim.opt.breakindent = true

vim.opt.incsearch = true
vim.opt.hlsearch = true
vim.opt.ignorecase = true
vim.opt.smartcase = true

vim.opt.wrap = false

vim.opt.splitbelow = true
vim.opt.splitright = true

-- enable the mouse
vim.opt.mouse = "a"

vim.opt.updatetime = 250

-- Set completeopt to have a better completion experience
vim.opt.completeopt = { "menuone", "noselect" }

-- Enable persistent undo history
vim.opt.undofile = true

-- Enable 24-bit color
vim.opt.termguicolors = true

-- Enable the sign column to prevent the screen from jumping
vim.opt.signcolumn = "yes"

-- Enable access to System Clipboard
vim.opt.clipboard = "unnamed,unnamedplus"

-- Enable cursor line highlight
vim.opt.cursorline = true

-- Set fold settings
-- These options were reccommended by nvim-ufo
-- See: https://github.com/kevinhwang91/nvim-ufo#minimal-configuration
vim.opt.foldcolumn = "0"
vim.opt.foldlevel = 99
vim.opt.foldlevelstart = 99
vim.opt.foldenable = true

-- Always keep 8 lines above/below cursor unless at start/end of file
vim.opt.scrolloff = 8
