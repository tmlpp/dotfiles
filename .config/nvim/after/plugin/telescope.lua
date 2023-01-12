require('telescope').setup {
  defaults = {
    mappings = {
      i = {
        ['<C-u>'] = false,
        ['<C-d>'] = false,
        ['<C-j>'] = require('telescope.actions').move_selection_next,
        ['<C-k>'] = require('telescope.actions').move_selection_previous,
        ["jj"] = { "<esc>", type = "command" },
      },
    },
  },
}

-- Enable telescope fzf native, if installed
pcall(require('telescope').load_extension, 'fzf')

