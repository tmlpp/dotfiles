return {
  {
    'neovim/nvim-lspconfig',
    config = function()
      local capabilities = require('cmp_nvim_lsp').default_capabilities()
      local lspconfig = require('lspconfig')
      lspconfig.lua_ls.setup({
        capabilities = capabilities
      })
      vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
      vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
      vim.keymap.set({'n', 'v'}, '<space>ca', vim.lsp.buf.code_action, {})
    end
  },
  {
    'williamboman/mason.nvim',
    config = true
  },
  {
    'williamboman/mason-lspconfig.nvim',
    config = function()
      require('mason-lspconfig').setup {
        ensure_installed = {
          'bashls', 'clangd', 'lua_ls', 'marksman', 'pyright', 'tsserver'
        }
      }
    end
  },
  {
    'j-hui/fidget.nvim',
    config = true
  },
  'folke/neodev.nvim'
}

