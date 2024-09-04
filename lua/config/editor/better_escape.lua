return function()
	require("better_escape").setup {
		timeout = vim.o.timeoutlen,
		default_mappings = true,
		mappings = {
			i = {
				j = {
					k = "<Esc>",
				},
			},
			c = {
				j = {
					k = "<Esc>",
				},
			},
			t = {
				j = {
					k = "<Esc>",
				},
			},
			v = {
				j = {
					k = "<Esc>",
				},
			},
			s = {
				j = {
					k = "<Esc>",
				},
			},
		},
	}
end
