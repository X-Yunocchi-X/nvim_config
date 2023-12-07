return function()
	require("fidget").setup({
		window = { blend = 0 },
		sources = {
			["null-ls"] = { ignore = true },
		},
		fmt = {
			max_message = 3,
		},
	})
end
