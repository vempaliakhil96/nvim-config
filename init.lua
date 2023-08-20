print('Hello World!!!')
vim.opt.number = true
vim.g.mapleader = ' '
vim.keymap.set('n', '<leader>w', '<cmd>write<cr>')
vim.keymap.set('n', '<leader>wq', ':wq<cr>')
vim.keymap.set('n', '<leader>ex', ':Texplore<cr>')
