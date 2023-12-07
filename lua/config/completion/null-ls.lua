return function()
	local null_ls = require("null-ls")

	null_ls.setup({
		border = "rounded",
		debug = false,
		update_in_insert = false,
		sources = {
			null_ls.builtins.formatting.prettier.with({
				filetypes = {
					"vue",
					"ruby",
					"typescript",
					"javascript",
					"typescriptreact",
					"javascriptreact",
					"yaml",
					"html",
					"css",
					"scss",
					"sh",
					"markdown",
				},
			}),
		},
	})

	require("mason-null-ls").setup({
		automatic_installation = false,
		automatic_setup = true,
		handlers = {},
	})
end
