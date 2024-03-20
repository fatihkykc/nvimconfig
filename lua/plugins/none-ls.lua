return {
	"nvimtools/none-ls.nvim",
	config = function()
		local null_ls = require("null-ls")
		null_ls.setup({
			sources = {
				null_ls.builtins.formatting.black,
				null_ls.builtins.formatting.isort,
				null_ls.builtins.formatting.stylua,
        null_ls.builtins.formatting.djlint,
        null_ls.builtins.formatting.eslint,
			},
		})

		vim.keymap.set("n", "<leader>cf", "<cmd>lua vim.lsp.buf.format({ timeout_ms=2000 })<CR>", {})
	end,
}
