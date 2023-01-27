vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })

-- Remap for dealing with word wrap
vim.keymap.set('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vim.keymap.set('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

vim.keymap.set('i', 'jj', '<Esc>')
vim.keymap.set('i', 'jk', '<Esc>')
vim.keymap.set('n', '<leader>o', 'o<Esc>')
vim.keymap.set('n', '<leader>O', 'O<Esc>')
vim.keymap.set('n', '<leader>w', ':w<CR>', { desc = 'Write file' })
vim.keymap.set('n', '<leader>W', ':wa<CR>', { desc = 'Write all buffers' })
vim.keymap.set('n', '<leader>q', ':q<CR>', { desc = 'Quit' })
vim.keymap.set('n', '<leader>Q', ':q!<CR>', { desc = 'Quit without saving' })
vim.keymap.set('n', '<leader><Esc>', ':qa<CR>', { desc = 'Quit all' })
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", { desc = 'Move region up' })
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", { desc = 'Move region down' })
vim.keymap.set("n", "Y", "yg$", { desc = 'Copy rest of the line' })
vim.keymap.set('n', '<C-d>', '<C-d>zz', { desc = 'Half page down and center' })
vim.keymap.set('n', '<C-u>', '<C-u>zz', { desc = 'Half page up and center' })
vim.keymap.set('n', 'n', 'nzzzv', { desc = 'Next search result and center' })
vim.keymap.set('n', 'N', 'Nzzzv', { desc = 'Previous search result and center' })
vim.keymap.set('n', 'J', 'mzJ`z', { desc = 'Join lines, save position' })
vim.keymap.set('x', '<leader>p', '"_dp')
vim.keymap.set('n', '<leader>y', '"+y', { desc = 'Clipboard copy' })
vim.keymap.set('v', '<leader>y', '"+y', { desc = 'Clipboard copy' })
vim.keymap.set('n', '<leader>Y', '"+Y', { desc = 'Clipboard copy rest of the line' })
vim.keymap.set('v', '<leader>d', '"_d')
vim.keymap.set('v', '<leader>d', '"_d')
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]],
  { desc = '%s/word_under_cursor/replace_with/gI' })

vim.keymap.set('n', '<F5>', ':call VimuxRunCommand("python " . bufname("%"))<CR>')

-- See `:help telescope.builtin`
vim.keymap.set('n', '<leader>?', require('telescope.builtin').oldfiles, { desc = '[?] Find recently opened files' })
vim.keymap.set('n', '<leader><space>', require('telescope.builtin').buffers, { desc = '[ ] Find existing buffers' })
vim.keymap.set('n', '<leader>/', function()
  -- You can pass additional configuration to telescope to change theme, layout, etc.
  require('telescope.builtin').current_buffer_fuzzy_find(require('telescope.themes').get_dropdown {
    winblend = 10,
    previewer = false,
  })
end, { desc = '[/] Fuzzily search in current buffer]' })

vim.keymap.set('n', '<leader>sf', require('telescope.builtin').find_files, { desc = '[S]earch [F]iles' })
vim.keymap.set('n', '<leader>sh', require('telescope.builtin').help_tags, { desc = '[S]earch [H]elp' })
vim.keymap.set('n', '<leader>sw', require('telescope.builtin').grep_string, { desc = '[S]earch current [W]ord' })
vim.keymap.set('n', '<leader>sg', require('telescope.builtin').live_grep, { desc = '[S]earch by [G]rep' })
vim.keymap.set('n', '<leader>sd', require('telescope.builtin').diagnostics, { desc = '[S]earch [D]iagnostics' })
vim.keymap.set('n', '<leader>u', '<Plug>RestNvim<CR>', { desc = '[S]earch [D]iagnostics' })
vim.keymap.set('n', '<leader>U', '<Plug>RestNvimLast<CR>', { desc = '[S]earch [D]iagnostics' })

