return function()
	require("luasnip").setup({
		history = true,
		update_events = "TextChanged,TextChangedI",
		delete_check_events = "TextChanged,InsertLeave",
	})

	require("luasnip.loaders.from_lua").lazy_load()
	require("luasnip.loaders.from_vscode").lazy_load()
	require("luasnip.loaders.from_snipmate").lazy_load()

	require("luasnip.loaders.from_lua").load({ paths = "~/.config/nvim/lua/config/completion/snippets/lua" })
	require("luasnip.loaders.from_vscode").load({ paths = "./lua/config/completion/snippets" })
end
