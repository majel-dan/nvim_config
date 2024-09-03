vim.cmd("set number")
vim.cmd("set expandtab")
vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=4")
vim.cmd("set shiftwidth=4")

vim.cmd("syntax on")
vim.cmd("filetype on")
vim.cmd("filetype plugin indent on")
vim.cmd("filetype indent on")

vim.cmd("set backspace=indent,eol,start")

vim.cmd("nmap <C-x><Right> :bn<CR>")
vim.cmd("nmap <C-x><Left> :bp<CR>")
vim.cmd("map <leader>q :bp<bar>sp<bar>bn<bar>bd<CR>")

require("config.lazy")
require("catppuccin").setup()
vim.cmd.colorscheme "catppuccin"
