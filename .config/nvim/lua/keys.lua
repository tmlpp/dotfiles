vim.g.mapleader = ' '
vim.g.maplocalleader = ' '
vim.keymap.set({ 'n', 'v' }, '<space>', '<nop>', { silent = true })
-- Make life with esc easier
vim.keymap.set('i', 'jj', '<esc>')
vim.keymap.set('i', 'jk', '<esc>')
vim.keymap.set('n', '<leader>w', ':w<CR>', { desc = 'Write file' })
vim.keymap.set('n', '<leader>W', ':wa<CR>', { desc = 'Write all buffers' })
vim.keymap.set('n', '<leader>q', ':q<CR>', { desc = 'Quit' })
vim.keymap.set('n', '<leader>Q', ':q!<CR>', { desc = 'Quit without saving' })
vim.keymap.set('n', '<leader><esc>', ':qa<CR>', { desc = 'Quit all' })
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", { desc = 'Move region up' })
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", { desc = 'Move region down' })
vim.keymap.set("n", "Y", "y$", { desc = 'Copy rest of the line' })
vim.keymap.set('n', '<C-d>', '<C-d>zz', { desc = 'Half page down and center' })
vim.keymap.set('n', '<C-u>', '<C-u>zz', { desc = 'Half page up and center' })
vim.keymap.set('n', 'n', 'nzzzv', { desc = 'Next search result and center' })
vim.keymap.set('n', 'N', 'Nzzzv', { desc = 'Previous search result and center' })
vim.keymap.set('n', 'J', 'mzJ`z', { desc = 'Join lines, save position' })
vim.keymap.set({'n', 'v'}, '<leader>p', '"+p', { desc = 'Clipboard paste' })
vim.keymap.set({'n', 'v'}, '<leader>P', '"+P', { desc = 'Clipboard paste' })
vim.keymap.set({'n', 'v'}, '<leader>y', '"+y', { desc = 'Clipboard copy' })
vim.keymap.set('n', '<leader>Y', '"+Y', { desc = 'Clipboard copy rest of the line' })
vim.keymap.set('n', '<c-n>', ':Neotree filesystem reveal right<CR>')
vim.keymap.set('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vim.keymap.set('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })