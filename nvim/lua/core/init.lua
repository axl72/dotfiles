local opt = vim.opt
local g = vim.g
local api = vim.api
local wo = vim.wo


-- Activar la numeracion
opt.number = true
opt.smartcase = true
opt.hlsearch = false
opt.wrap = true
opt.breakindent = true
vim.o.relativenumber = true
vim.cmd("highlight Normal ctermbg=235")

-- Size del tab
opt.shiftwidth = 4

-- Transformar el caracter tab a espacios
opt.expandtab = true

-- Esstablecer la telace Leader
g.mapleader = ' '

api.nvim_set_option('hidden', true)
api.nvim_set_option('number', true)
api.nvim_set_option('relativenumber', true)

api.nvim_set_option('clipboard', 'unnamed')
api.nvim_set_option('swapfile', false)

vim.cmd[[colorscheme dracula]]

require("autoclose").setup()
require("plugins.tree").setup()
