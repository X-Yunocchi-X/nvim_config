local keymap = vim.keymap
local wk = require("which-key")

keymap.set("n", "<c-e>", "<cmd>NvimTreeToggle<cr>")

-- ToggleTerm
keymap.set("n", "<c-\\>", "<cmd>ToggleTerm	direction=horizontal<cr>")
keymap.set("t", "<c-\\>", "<cmd>ToggleTerm	direction=horizontal<cr>")
keymap.set("n", "<a-\\>", "<cmd>ToggleTerm  direction=float<cr>")
keymap.set("t", "<a-\\>", "<cmd>ToggleTerm  direction=float<cr>")
keymap.set("t", "<Esc>", "<c-\\><c-n>")
keymap.set("t", "jk", "<c-\\><c-n>")

-- Trouble
wk.register({
	g = {
		t = { ":Trouble diagnostics<cr>", "Trouble toggle" },
	}
})

-- Telescope
wk.register({
	["<leader>"] = {
		f = {
			name = "Telescope",
			f = { ":Telescope find_files<cr>", "Find files" },
			w = { ":Telescope live_grep<cr>", "Find words" },
			c = { ":Telescope colorscheme<cr>", "Change colorscheme" },
			n = { ":Telescope notify<cr>", "Search notifications" },
			k = { ":Telescope keymaps<cr>", "Search keymaps" },
		}
	}
})
