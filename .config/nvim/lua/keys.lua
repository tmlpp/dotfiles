vim.g.mapleader = ' '
vim.g.maplocalleader = ','
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
-- Search UP for a markdown header
-- Make sure to follow proper markdown convention, and you have a single H1
-- heading at the very top of the file
-- This will only search for H2 headings and above
vim.keymap.set("n", "gk", function()
  -- `?` - Start a search backwards from the current cursor position.
  -- `^` - Match the beginning of a line.
  -- `##` - Match 2 ## symbols
  -- `\\+` - Match one or more occurrences of prev element (#)
  -- `\\s` - Match exactly one whitespace character following the hashes
  -- `.*` - Match any characters (except newline) following the space
  -- `$` - Match extends to end of line
  vim.cmd("silent! ?^##\\+\\s.*$")
  -- Clear the search highlight
  vim.cmd("nohlsearch")
end, { desc = "Go to previous markdown header" })

-- Search DOWN for a markdown header
-- Make sure to follow proper markdown convention, and you have a single H1
-- heading at the very top of the file
-- This will only search for H2 headings and above
vim.keymap.set("n", "gj", function()
  -- `/` - Start a search forwards from the current cursor position.
  -- `^` - Match the beginning of a line.
  -- `##` - Match 2 ## symbols
  -- `\\+` - Match one or more occurrences of prev element (#)
  -- `\\s` - Match exactly one whitespace character following the hashes
  -- `.*` - Match any characters (except newline) following the space
  -- `$` - Match extends to end of line
  vim.cmd("silent! /^##\\+\\s.*$")
  -- Clear the search highlight
  vim.cmd("nohlsearch")
end, { desc = "Go to next markdown header" })
