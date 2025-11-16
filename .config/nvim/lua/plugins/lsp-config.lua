return {
  {
    'neovim/nvim-lspconfig',
    config = function()
      local capabilities = require('cmp_nvim_lsp').default_capabilities()
		vim.lsp.config("*", {})
		vim.lsp.enable({
			"lua_ls",
			"clangd",
			"solargraph",
			"intelephense",
			"pyright",
			"ts_ls",
			"gopls",
			"rust_analyzer",
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
          'bashls', 'intelephense', 'clangd', 'lua_ls', 'marksman', 'pyright', 'ts_ls'
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

