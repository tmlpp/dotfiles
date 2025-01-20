return {
	"nvimtools/none-ls.nvim",
	config = function()
		local null_ls = require("null-ls")
		null_ls.setup({
			sources = {
        -- Lua
				null_ls.builtins.formatting.stylua,
        -- Python 
				null_ls.builtins.formatting.isort,
				null_ls.builtins.formatting.black,
        -- JS/TS
				null_ls.builtins.formatting.prettier,
				-- null_ls.builtins.formatting.eslint_d,
			},
		})
		vim.keymap.set("n", "<leader>gF", vim.lsp.buf.format, { desc = "Format buffer" })
	end,
}
