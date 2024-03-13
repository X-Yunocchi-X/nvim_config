local keymap = vim.keymap

local wk = require("which-key")
wk.register({
	g = {
		name = "Lspsaga",
		["["] = { ":Lspsaga diagnostic_jump_prev<cr>", "Previous diagnostic" },
		["]"] = { ":Lspsaga diagnostic_jump_next<cr>", "Next diagnostic" },
		k = { ":Lspsaga hover_doc<cr>", "Hover doc" },
		d = { ":Lspsaga goto_definition<cr>", "Goto definition" },
		r = { ":Lspsaga rename<cr>", "Rename symbol" },
		o = { ":Lspsaga outline<cr>", "Outline" },
		n = { ":Lspsaga code_action<cr>", "Code action" },
	}
})
