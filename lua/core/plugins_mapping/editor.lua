local keymap = vim.keymap

local wk = require("which-key")
wk.register({
	["<leader>"] = {
		h = {
			name = "hop(jump tool)",
			w = { ":HopWordMW<CR>", "Hop word" },
			l = { ":HopLineMW<CR>", "Hop line" },
			c = { ":HopChar1MW<CR>", "Hop char" },
		}
	}
})
