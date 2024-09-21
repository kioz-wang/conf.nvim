
local opt = vim.opt

opt.number = true
opt.relativenumber = true

opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.autoindent = true

opt.wrap = false

opt.cursorline = true

opt.mouse = 'a'

opt.clipboard = 'unnamedplus'

opt.ignorecase = true
opt.smartcase = true

opt.termguicolors = true

vim.g.mapleader = ' '

local map = vim.keymap.set

map('v', 'J', ":m '>+1<CR>gv=gv")
map('v', 'K', ":m '<-2<CR>gv=gv")

map('n', 'j', [[v:count ? 'j' : 'gj']], { expr = true })
map('n', 'k', [[v:count ? 'k' : 'gk']], { expr = true })

map('n', '<C-h>', '<C-w>h')
map('n', '<C-j>', '<C-w>j')
map('n', '<C-k>', '<C-w>k')
map('n', '<C-l>', '<C-w>l')

map('n', '<leader>sv', '<C-w>v')
map('n', '<leader>sh', '<C-w>s')

map('n', '<leader>nh', ':nohl<CR>')

require('config.lazy')

-- vim.cmd[[colorscheme tokyonight]]
vim.cmd[[colorscheme nord]]

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })

