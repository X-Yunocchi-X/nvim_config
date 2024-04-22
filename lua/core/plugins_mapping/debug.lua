local keymap = vim.keymap

local wk = require("which-key")
wk.register({
	["<leader>"] = {
		["5"] = { ":lua require('dap').continue()<cr>", "Dap start/continue" },
		["6"] = { ":lua require('dap').terminate()<cr>", "Dap terminate" },
		["7"] = { ":lua require('dap').toggle_breakpoint()<cr>", "Dap toggle breakpoint" },
		["8"] = { ":lua require('dap').step_into()<cr>", "Dap step into" },
		["9"] = { ":lua require('dap').step_over()<cr>", "Dap step over" },
	}
})
