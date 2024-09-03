vim.cmd("set number")
vim.cmd("set expandtab")
vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=4")
vim.cmd("set shiftwidth=4")
vim.g.mapleader = " "

vim.cmd("syntax on")
vim.cmd("filetype on")
vim.cmd("filetype plugin indent on")
vim.cmd("filetype indent on")

vim.cmd("set backspace=indent,eol,start")

vim.cmd("nmap <C-x><Right> :bn<CR>")
vim.cmd("nmap <C-x><Left> :bp<CR>")
vim.cmd("map <leader>q :bp<bar>sp<bar>bn<bar>bd<CR>")

require("config.lazy")

local builtin = require("telescope.builtin")
vim.keymap.set("n", "<leader>ff", builtin.find_files, {})
-- live_grep requires 'ripgrep', via e.g. 'sudo pacman -Syu ripgrep'
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})

require("catppuccin").setup()
vim.cmd.colorscheme "catppuccin"
