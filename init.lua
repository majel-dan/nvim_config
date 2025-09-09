-- BASIC VIM SETTINGS
vim.cmd("set number")
vim.cmd("set expandtab")
vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=4")
vim.cmd("set shiftwidth=4")
vim.cmd("set nohlsearch")
vim.g.mapleader = " "

vim.cmd("syntax on")
vim.cmd("filetype on")
vim.cmd("filetype plugin indent on")
vim.cmd("filetype indent on")

vim.cmd("set backspace=indent,eol,start")

vim.cmd("nmap <C-x><Right> :bn<CR>")
vim.cmd("nmap <C-x><Left> :bp<CR>")
vim.cmd("map <leader>q :bp<bar>sp<bar>bn<bar>bd<CR>")


-- LAZY PACKAGE MANAGER
require("config.lazy")


-- TELESCOPE
local builtin = require("telescope.builtin")
vim.keymap.set("n", "<leader>ff", builtin.find_files, {})
-- live_grep requires 'ripgrep', via e.g. 'sudo pacman -Syu ripgrep'
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})


--NEOTREE
vim.keymap.set("n", "<leader>n", ":Neotree filesystem reveal left<CR>", {})


-- TREESITTER
local config = require("nvim-treesitter.configs")
config.setup(
    {
        ensure_installed = {
            "c",
            "html",
            "javascript",
            "lua",
            "python",
            "vim",
        },
        highlight = {
            enable = true,
        },
        indent = {
            enable = true,
        },
    }
)


-- COLORSCHEME
require("catppuccin").setup()
vim.cmd.colorscheme "catppuccin"


-- .cypher support
require("mason").setup()
require("mason-lspconfig").setup {
    ensure_installed = { "cypher_ls" },
}
