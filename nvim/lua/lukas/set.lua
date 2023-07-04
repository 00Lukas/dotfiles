vim.wo.number = true
vim.wo.relativenumber = true

vim.o.mouse = 'a'
vim.o.clipboard = 'unnamedplus'

vim.o.tabstop=2
vim.o.shiftwidth=2
vim.o.expandtab=true

vim.opt.wrap = false

vim.opt.smartindent = true

vim.o.termguicolors = true
vim.opt.guicursor = ""

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50
vim.opt.colorcolumn = "80"

vim.cmd.colorscheme "catppuccin"


